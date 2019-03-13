#include "main.h"

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

extern void test_convolution();

int main()
{
	srand(time(NULL));
	test_convolution();
	return 0;
}