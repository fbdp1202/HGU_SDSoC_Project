#ifndef __CONV_H
#define __CONV_H

#include "layer.h"

void test_convolution();

#ifdef SDSOC
void hw_convolutional_layer(layer *pl, float *inputs, int num_repeat);
#endif // SDSOC

#endif // __CONV_H