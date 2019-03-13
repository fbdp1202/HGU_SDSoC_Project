#ifndef __IMAGE_H
#define __IMAGE_H

#include <stdio.h>
#include <stdlib.h>

void set_random_input(unsigned char *inputs, int input_size);
void copy_input(unsigned char *src, float *dst, int input_size);

#endif // __IMAGE_H