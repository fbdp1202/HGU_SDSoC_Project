#ifndef KERNEL_H_
#define KERNEL_H_

// #ifdef __cplusplus
// extern "C" {
// #endif

#define KNL_M 32
#define KNL_K 144
#define KNL_N 169

void cal_gemm(float *A, float *B, float *C);

// #ifdef __cplusplus
// }
// #endif

#endif
