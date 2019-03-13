#ifndef __IM2COL_H
#define __IM2COL_H

void im2col_cpu(float* data_im,
        int channels, int height, int width,
        int ksize, int stride, int pad, float* data_col);

#ifdef SDSOC
void im2col_fpga(float* data_im,
        int channels, int height, int width,
        int ksize, int stride, int pad, float* data_col);
#endif // SDSOC

#endif // __IM2COL_H