#ifndef __UTILS_H
#define __UTILS_H
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

#define BLOCK_SIZE 64
#define FIX_MAX 255
#define LOG() printf("%s() at %s::%05d\n", __FUNCTION__, __FILE__, __LINE__);
#define MAX(x, y) ((x<y) ? x : y)
#define MIN(x, y) ((x>y) ? x : y)

double what_time_is_it_now();
float conversion(float x, float step);
float gaussianRandom(void);

float minArrValue(float *arr, int arrsize);
float maxArrValue(float *arr, int arrsize);

#endif // __UTILS_H