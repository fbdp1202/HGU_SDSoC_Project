#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include "utils.h"

double what_time_is_it_now() {
    struct timespec now;
    clock_gettime(CLOCK_REALTIME, &now);
    return now.tv_sec + now.tv_nsec*1e-9;
}

float conversion(float x, float step) {
    if(x < 0)
        return (x-step/2)/step;
    else
        return (x+step/2)/step;
}

float minArrValue(float *arr, int arrsize) {
    if (arr) { 
        int i;
        int minV = arr[0];
        for (i=1; i<arrsize; i++) {
            minV = MIN(minV, arr[i]);
        }
        return minV;
    } else {
        LOG(); return 0;
    }
}

float maxArrValue(float *arr, int arrsize) {
    if (arr) { 
        int i;
        int maxV = arr[0];
        for (i=1; i<arrsize; i++) {
            maxV = MAX(maxV, arr[i]);
        }
        return maxV;
    } else {
        LOG(); return 0;
    }

}

float gaussianRandom(void) {
	double v1, v2, s;

	do {
		v1 =  2 * ((double) rand() / RAND_MAX) - 1;      // -1.0 ~ 1.0 까지의 값
		v2 =  2 * ((double) rand() / RAND_MAX) - 1;      // -1.0 ~ 1.0 까지의 값
		s = v1 * v1 + v2 * v2;
	} while (s >= 1 || s == 0);

	s = sqrt( (-2 * log(s)) / s );

	return (float)(v1 * s);
}