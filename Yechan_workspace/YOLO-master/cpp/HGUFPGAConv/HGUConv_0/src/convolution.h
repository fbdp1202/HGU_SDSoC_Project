#ifndef __CONV_H
#define __CONV_H

#include "layer.h"

void test_convolution();

static size_t get_workspace_size(layer l) {
	return (size_t)l.h*l.w*l.size*l.size*l.k*sizeof(float);
}

#ifdef SDSOC
void hw_convolutional_layer(layer *pl, float *inputs, int num_repeat);
#endif // SDSOC

#endif // __CONV_H