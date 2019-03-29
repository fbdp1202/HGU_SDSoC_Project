#include <stdio.h>
#include <stdlib.h>
#include "image.h"

void set_random_input(unsigned char *inputs, int input_size) {
	int i;
	for (i=0; i<input_size; i++)
		inputs[i] = (unsigned char)(rand()%256);
}

void copy_input(unsigned char *src, float *dst, int input_size){
	int i;
	for (i=0; i<input_size; i++)
		dst[i] = src[i]/255.f;
}