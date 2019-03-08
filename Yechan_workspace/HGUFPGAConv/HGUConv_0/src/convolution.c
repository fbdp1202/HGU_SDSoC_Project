#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#include "layer.h"
#include "image.h"
#include "utils.h"
#include "gemm.h"
#include "im2col.h"
#include "convolution.h"

void init_convolution_size(layer *pl) {
	printf("Output Channel: ");
	scanf(" %d", &pl->k);

	printf("Input Channel: ");
	scanf(" %d", &pl->c);

	printf("Input width and height: ");
	scanf(" %d", &pl->w);
	pl->h = pl->w;

	printf("Weight filter width and height: ");
	scanf(" %d", &pl->size);

	pl->stride = 1;
	pl->pad = 1;
	pl->out_h = pl->out_w = (pl->w + 2*pl->pad - pl->size + 1)/pl->stride;
	puts("");

}

void load_convolution_config(layer *pl) {
	printf("LOAD config in layer.txt\n\n");
	FILE *fp = fopen("layer.txt", "r");
	if (fp == NULL) {
		printf("layer.txt can't open\n");
		exit(1);
	}
	fscanf(fp, " %d", &pl->k);
	fscanf(fp, " %d", &pl->c);
	fscanf(fp, " %d", &pl->w);
	pl->h = pl->w;
	fscanf(fp, " %d", &pl->size);
	pl->stride = 1;
	pl->pad = 1;
	pl->out_h = pl->out_w = (pl->w + 2*pl->pad - pl->size + 1)/pl->stride;
	fclose(fp);
}

void print_convolution_size(layer *pl) {
	printf("Output Channel: %d\n", pl->k);
	printf("Input Channel: %d\n", pl->c);
	printf("Input width: %d\n", pl->w);
	printf("Input height: %d\n", pl->h);
	printf("stride height: %d\n", pl->stride);
	printf("pad height: %d\n", pl->pad);
	printf("Weight filter width: %d\n", pl->size);
	printf("Weight filter height: %d\n", pl->size);
	printf("Output width: %d\n", pl->out_w);
	printf("Output height: %d\n", pl->out_h);

	puts("");
}

void init_convolution_weight(layer *pl) {
	int i;
	printf("SET RAMDOM WEIGHT\n");
	int nweight = pl->k * pl->c * pl->size * pl->size;
	pl->weights = (float *)calloc(nweight, sizeof(float));
	for (i=0; i<nweight; i++)
		pl->weights[i] = gaussianRandom();
}

void init_convolution_output(layer *pl) {
	int noutput = pl->k * pl->out_w * pl->out_h;
	pl->outputs = (float *)calloc(noutput, sizeof(float));
}

layer init_convolution() {
	layer l;
	load_convolution_config(&l);
	print_convolution_size(&l);
	init_convolution_weight(&l);
	init_convolution_output(&l);
	return l;
}

void cpu_image_convolution(layer *pl, float *inputs) {
	int k, c, w, h, mh, mw;
	int outpus_size = pl->out_w * pl->out_h;
	for (k=0; k<pl->k; k++) {
		for (h=0; h<pl->out_h; h++) {
			for (w=0; w<pl->out_w; w++) {
				float ret = 0;
				for (c=0; c<pl->c; c++) {
					for (mh=0; mh<pl->size; mh++) {
						int curr_h = h * pl->stride + mh - pl->pad;
						if (curr_h < 0 || curr_h >= pl->h) continue;
						for (mw=0; mw<pl->size; mw++) {
							int curr_w = w * pl->stride + mw - pl->pad;
							if (curr_w < 0 || curr_w >= pl->w) continue;
							int inputIdx = (c*pl->h+curr_h)*pl->w+curr_w;
							int weightIdx = ((k*pl->c+c)*pl->size+mh)*pl->size+mw;
							ret += inputs[inputIdx] * pl->weights[weightIdx];
						}
					}
				}
				pl->outputs[k*outpus_size + h*pl->out_w + w] = ret;
			}
		}
	}
}

void sw_convolutional_layer(layer *pl, float *inputs, int num_repeat) {
	printf("SW convolution\n");

	double start_cpu_time = what_time_is_it_now();
	int i, j;
	layer l = *pl;

	int m = l.k;
	int k = l.size*l.size*l.c;
	int n = l.out_w*l.out_h;
    float *a = l.weights;
    float *b = (float *)calloc(1, get_workspace_size(l));
    float *c = l.outputs;

	im2col_cpu(inputs, l.c, l.h, l.w, l.size, l.stride, l.pad, b);
	printf("CPU im2col Time: %f seconds\n", (what_time_is_it_now()-start_cpu_time));

	for (i=0; i<num_repeat; i++) {
		gemm(m,n,k,a,k,b,n,c,n);
	}
	printf("CPU gemm convolution Time: %f seconds\n", (what_time_is_it_now()-start_cpu_time)/num_repeat);
	free(b);
}

void cal_convolution(layer *pl, float *inputs) {
	int i, w;
	int workload[6] = {1, 2, 4, 8, 16, 32};

	int num_repeat = 0;
	while (num_repeat<=0) {
		printf("SW Number of repeat: ");
		scanf(" %d", &num_repeat);
	}
	sw_convolutional_layer(pl, inputs, num_repeat);

#ifdef SDSOC
	while (num_repeat<=0) {
		printf("HW Number of repeat: ");
		scanf(" %d", &num_repeat);
	}
	printf("FPGA image convolution\n");
	hw_convolutional_layer(pl, inputs, num_repeat);
#endif // SDSOC
}

void delete_convolution(layer *pl) {
	if (pl->weights) free(pl->weights);
	if (pl->outputs) free(pl->outputs);
}

void test_convolution() {
	layer l = init_convolution();

	int input_size = l.c*l.w*l.h;
	unsigned char *inputs = calloc(input_size, sizeof(unsigned char));
	set_random_input(inputs, input_size);

	float *X = calloc(input_size, sizeof(float));
	copy_input(inputs, X, input_size);
	cal_convolution(&l, X);

	free(X);
	free(inputs);
	delete_convolution(&l);
}

#ifdef SDSOC

#include <sds_lib.h>

void hw_convolutional_layer(layer *pl, float *inputs, int num_repeat) {
	printf("HW convolution\n");

	double start_fpga_time = what_time_is_it_now();
	int i, j;
	layer l = *pl;

	int m = l.k;
	int k = l.size*l.size*l.c;
	int n = l.out_w*l.out_h;
    float *a = l.weights;
    float *b = (float *)calloc(1, get_workspace_size(l));
    float *c = l.outputs;

	im2col_fpga(inputs, l.c, l.h, l.w, l.size, l.stride, l.pad, b);
	printf("FPGA im2col Time: %f seconds\n", (what_time_is_it_now()-start_fpga_time));

	for (i=0; i<num_repeat; i++) {
		gemm_fpga(m,n,k,a,k,b,n,c,n);
	}
	printf("FPGA imge convolution Time: %f seconds\n", (what_time_is_it_now()-start_fpga_time)/num_repeat);
}
#endif // SDSOC