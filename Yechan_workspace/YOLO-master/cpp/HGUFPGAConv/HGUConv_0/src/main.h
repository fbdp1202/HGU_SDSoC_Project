#ifndef MAIN_API
#define MAIN_API
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define SDSOC

typedef struct layer{
	int k;
	int c;
	int w;
	int h;
	int out_w;
	int out_h;
	int stride;
	int pad;
	int size;
	float *weights;
	float *outputs;
}layer;

#endif // MAIN_API