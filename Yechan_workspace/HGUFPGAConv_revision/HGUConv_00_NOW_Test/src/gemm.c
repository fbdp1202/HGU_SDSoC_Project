#include <stdio.h>
#include "gemm.h"
#include "utils.h"
#include "kernel.h"

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

// #include <sds_lib.h>

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

void kernel_gemm(float *A, float *B, float *C, int block_size, int init_flag, int return_flag) {
    int i, j, k, itr;
    float local_A[BLOCK_SIZE][BLOCK_SIZE];
    float local_B[BLOCK_SIZE][BLOCK_SIZE];
    float local_C[BLOCK_SIZE][BLOCK_SIZE];
    
    for (itr = 0, i=0, j=0; itr < block_size*block_size; itr++) {
        if (j == block_size) { j = 0; i++; }
        local_A[i][j]=A[itr];
    }
    for (itr = 0, i=0, j=0; itr < block_size*block_size; itr++) {
        if (j == block_size) { j = 0; i++; }
        local_B[i][j]=B[itr];
    }

    if (init_flag) {
        for (itr = 0, i=0, j=0; itr < block_size*block_size; itr++) {
            if (j == block_size) { j = 0; i++; }
            local_C[i][j]=0;
        }
    }


    for (i=0; i < block_size; i++) {
        for (j=0; j < block_size; j++) {
            for (k=0; k < block_size; k++) {
                local_C[i][j] += local_A[i][k] * local_B[k][j];
            }
        }
    }

    if (return_flag) {
        for (itr = 0, i=0, j=0; itr < block_size*block_size; itr++) {
            if (j == block_size) { j = 0; i++; }
            C[itr]=local_C[i][j];
        }
    }

}

void block_gemm(int M, int N, int K,
        float *A, int lda, 
        float *B, int ldb,
        float *C, int ldc, int block_size) {
    int i, j, k;
    int block_M=(M + BLOCK_SIZE-1)/BLOCK_SIZE;
    int block_N=(N + BLOCK_SIZE-1)/BLOCK_SIZE;
    int block_K=(K + BLOCK_SIZE-1)/BLOCK_SIZE;
    for (i=0; i<block_M; i++) {
        for (j=0; j<block_N; j++) {
            for (k=0; k<block_K; k++) {
                kernel_gemm(A + (i*block_K + k)*BLOCK_SIZE*BLOCK_SIZE,\
                            B + (j*block_K + k)*BLOCK_SIZE*BLOCK_SIZE,\
                            C + (i*block_N + j)*BLOCK_SIZE*BLOCK_SIZE,\
                            BLOCK_SIZE,\
                            k==0,\
                            k==block_K-1
                );
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
	float *A_buf = (float *)malloc(sizeof(float)*32*144);
	memcpy(A_buf, A, sizeof(float)*32*144);

	float *B_buf = (float *)malloc(sizeof(float)*144*169);
	memcpy(B_buf, B, sizeof(float)*144*169);

	float *C_buf = (float *)malloc(sizeof(float)*169*32);

	cal_gemm(A_buf, B_buf, C_buf);
	memcpy(C, C_buf, sizeof(float)*169*32);

	free(A_buf);
	free(B_buf);
	free(C_buf);
}
#endif // SDSOC
