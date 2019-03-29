#include "im2col.h"
#include "utils.h"
#include <stdio.h>

static int get_Block_Size(int size, int block) {
    return BLOCK_SIZE*((size+block-1)/block);
}

float im2col_get_pixel(float *im, int height, int width, int channels,
                        int row, int col, int channel, int pad)
{
    row -= pad;
    col -= pad;

    if (row < 0 || col < 0 ||
        row >= height || col >= width) return 0;
    return im[col + width*(row + height*channel)];
}

//From Berkeley Vision's Caffe!
//https://github.com/BVLC/caffe/blob/master/LICENSE
void im2col_cpu(float* data_im,
     int channels,  int height,  int width,
     int ksize,  int stride, int pad, float* data_col) 
{
    int c,h,w;
    int height_col = (height + 2*pad - ksize) / stride + 1;
    int width_col = (width + 2*pad - ksize) / stride + 1;

    int channels_col = channels * ksize * ksize;
    for (c = 0; c < channels_col; ++c) {
        int w_offset = c % ksize;
        int h_offset = (c / ksize) % ksize;
        int c_im = c / ksize / ksize;
        for (h = 0; h < height_col; ++h) {
            for (w = 0; w < width_col; ++w) {
                int im_row = h_offset + h * stride;
                int im_col = w_offset + w * stride;
                int col_index = (c * height_col + h) * width_col + w;
                data_col[col_index] = im2col_get_pixel(data_im, height, width, channels,
                        im_row, im_col, c_im, pad);
            }
        }
    }
}

void im2col_block_cpu(float* data_im,
        int channels, int height, int width,
        int ksize, int stride, int pad, float* data_col, int block) {
    int c,h,w,n;
    int height_col = get_Block_Size((height + 2*pad - ksize) / stride + 1, block);
    int width_col = get_Block_Size((width + 2*pad - ksize) / stride + 1, block);
    int channels_col = get_Block_Size(channels * ksize * ksize, block);
    printf("height_col: %d, width_col: %d, channels_col: %d\n", height_col, width_col, channels_col);
    for (c = 0; c < channels_col; c+= block) {
        int w_offset = c % ksize;
        int h_offset = (c / ksize) % ksize;
        int c_im = c / ksize / ksize;
        for (n = 0, h = 0; h < height_col; h++) {
            for (w = 0; w < width_col; w++, n++) {
                int im_row = h_offset + h * stride;
                int im_col = w_offset + w * stride;
                // int col_index = c * height_col * width_col + (n/block)*block*block + (n%block) + k*block;
                int col_index = (c/block)*(height_col*width_col*block) + \
                                (n/block)*(block*block) + \
                                (c%block)*block + \
                                n%block;
                if (c == 18) {
                    if (h == 30 && w > 165) {
                        printf("h: %d, w: %d\n", h, w);
                        printf("col_index:%d\n", col_index);
                        printf("data_col[%d]: %f\n", col_index, data_col[col_index]);
                    }
                }
                data_col[col_index] = im2col_get_pixel(data_im, height, width, channels,
                        im_row, im_col, c_im, pad);
            }
        }
    }
}

#ifdef SDSOC
void im2col_fpga(float* data_im,
     int channels,  int height,  int width,
     int ksize,  int stride, int pad, float* data_col) 
{
    int c,h,w,k,n;
    int height_col = (height + 2*pad - ksize) / stride + 1;
    int width_col = (width + 2*pad - ksize) / stride + 1;
    int channels_col = channels * ksize * ksize;
    for (c = 0; c < channels_col; c+= 144) {
	    for (k = 0; k < 144; ++k){
	        int w_offset = (c+k) % ksize;
	        int h_offset = ((c+k)/ ksize) % ksize;
	        int c_im = (c+k) / ksize / ksize;
	        for (n = 0, h = 0; h < height_col; h++) {
	            for (w = 0; w < width_col; w++, n++) {
	                int im_row = h_offset + h * stride;
	                int im_col = w_offset + w * stride;
	                int col_index = c * height_col * width_col + (n/169)*169*144 + (n%169) + k*169;
	                data_col[col_index] = im2col_get_pixel(data_im, height, width, channels,
	                        im_row, im_col, c_im, pad);
	            }
	        }
	    }
    }
}
#endif