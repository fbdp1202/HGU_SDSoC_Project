#ifndef __GEMM_H
#define __GEMM_H

void gemm(int M, int N, int K,
        float *A, int lda, 
        float *B, int ldb,
        float *C, int ldc);

#ifdef SDSOC
void gemm_fpga(int M, int N, int K,
        float *A, int lda, 
        float *B, int ldb,
        float *C, int ldc);
#endif // SDSOC

#endif // __GEMM_H