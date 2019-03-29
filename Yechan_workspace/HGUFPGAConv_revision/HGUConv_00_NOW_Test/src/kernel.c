#include "kernel.h"

void cal(float *A, float *B, float *C) {
    int i, j, k, z;
    float LOCAL_A[KNL_M][KNL_K];
    float LOCAL_B[KNL_K][KNL_N];
    float LOCAL_C[KNL_M][KNL_N];

    for (i=0, z=0; i<KNL_M; i++) {
        for (j=0; j<KNL_K; j++, z++) {
            LOCAL_A[i][j]=A[z];
        }
    }

    for (i=0, z=0; i<KNL_K; i++) {
        for (j=0; j<KNL_N; j++, z++) {
            LOCAL_B[i][j]=B[z];
        }
    }

    for(i = 0; i < KNL_M; ++i){
        for(j = 0; j < KNL_N; ++j){
            float tmp=0;
            for(k = 0; k < KNL_K; ++k){
                tmp += LOCAL_A[i][k]*LOCAL_B[k][j];
            }
            LOCAL_C[i][j]=tmp;
        }
    }

    for (i=0, z=0; i<KNL_M; i++)
        for (j=0; j<KNL_N; j++, z++)
            C[z]=LOCAL_C[i][j];
}

void cal_gemm(float *A, float *B, float *C){
    cal(A, B, C);
}