#include "gemm.h"
#include "utils.h"
#include "kernel.h"

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <sds_lib.h>

void gemm(int M, int N, int K,
        float *A, int lda, 
        float *B, int ldb,
        float *C, int ldc)
{
    int i,j,k;
    for(i = 0; i < M; ++i){
        for(k = 0; k < K; ++k){
            register float A_PART = A[i*lda+k];
            for(j = 0; j < N; ++j){
                C[i*ldc+j] += A_PART * B[k*ldb+j];
            }
        }
    }
}

#ifdef SDSOC
void gemm_fpga(int M, int N, int K,
        float *A, int lda, 
        float *B, int ldb,
        float *C, int ldc)
{
	float *A_buf = (float *)sds_alloc(sizeof(float)*32*144);
	memcpy(A_buf, A, sizeof(float)*32*144);

	float *B_buf = (float *)sds_alloc(sizeof(float)*144*169);
	memcpy(B_buf, B, sizeof(float)*144*169);

	float *C_buf = (float *)sds_alloc(sizeof(float)*169*32);

	cal_gemm(A_buf, B_buf, C_buf);
	memcpy(C, C_buf, sizeof(float)*169*32);

	sds_free(A_buf);
	sds_free(B_buf);
	sds_free(C_buf);
}
#endif // SDSOC
