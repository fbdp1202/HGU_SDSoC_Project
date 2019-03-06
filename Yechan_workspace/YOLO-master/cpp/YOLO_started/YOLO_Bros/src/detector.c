#include "darknet.h"
#if 0
//#define DEBUG_MODE_PRT
#define DEBUG_MODE_PRT_0
#define DEBUG_MODE_PRT_2
#include <math.h>
#include "blas.h"
#include "convolutional_layer.h"
#define FLT_MAX 3.402823466e+38F

#define L_COL0 416
#define L_ROW0 416
#define L_MAS0 3
#define L_MSIZE0 (L_MAS0 * L_MAS0)
#define N_ICH0 3
#define N_OCH0 16
#define L_PAD0 1
#define L_IDM0 (L_COL0*L_ROW0*N_ICH0)
#define L_ODM0 (L_COL0*L_ROW0*N_OCH0)

#define L_MAS1 2
#define L_STR1 2

#define L_COL2 208
#define L_ROW2 208
#define L_MAS2 3
#define L_MSIZE2 (L_MAS2 * L_MAS2)
#define N_ICH2 16
#define N_OCH2 32
#define L_PAD2 1
#define L_IDM2 (L_COL2*L_ROW2*N_ICH2)
#define L_ODM2 (L_COL2*L_ROW2*N_OCH2)

#define L_MAS3 2
#define L_STR3 2

#define L_COL4 104
#define L_ROW4 104
#define L_MAS4 3
#define L_MSIZE4 (L_MAS4 * L_MAS4)
#define N_ICH4 32
#define N_OCH4 64
#define L_PAD4 1
#define L_IDM4 (L_COL4*L_ROW4*N_ICH4)
#define L_ODM4 (L_COL4*L_ROW4*N_OCH4)
#define L_MAS5 2
#define L_STR5 2

#define L_COL6 52
#define L_ROW6 52
#define L_MAS6 3
#define L_MSIZE6 (L_MAS6 * L_MAS6)
#define N_ICH6 64
#define N_OCH6 128
#define L_PAD6 1
#define L_IDM6 (L_COL6*L_ROW6*N_ICH6)
#define L_ODM6 (L_COL6*L_ROW6*N_OCH6)
#define L_MAS7 2
#define L_STR7 2

#define L_COL8 26
#define L_ROW8 26
#define L_MAS8 3
#define L_MSIZE8 (L_MAS8 * L_MAS8)
#define N_ICH8 128
#define N_OCH8 256
#define L_PAD8 1
#define L_IDM8 (L_COL8*L_ROW8*N_ICH8)
#define L_ODM8 (L_COL8*L_ROW8*N_OCH8)
#define L_MAS9 2
#define L_STR9 2

#define L_COL10 13
#define L_ROW10 13
#define L_MAS10 3
#define L_MSIZE10 (L_MAS10 * L_MAS10)
#define N_ICH10 256
#define N_OCH10 512
#define L_PAD10 1
#define L_IDM10 (L_COL10*L_ROW10*N_ICH10)
#define L_ODM10 (L_COL10*L_ROW10*N_OCH10)
#define L_MAS11 2
#define L_STR11 2

#define L_COL12 13
#define L_ROW12 13
#define L_MAS12 3
#define L_MSIZE12 (L_MAS12 * L_MAS12)
#define N_ICH12 512
#define N_OCH12 1024
#define L_PAD12 1
#define L_IDM12 (L_COL12*L_ROW12*N_ICH12)
#define L_ODM12 (L_COL12*L_ROW12*N_OCH12)

#define L_COL13 13
#define L_ROW13 13
#define L_MAS13 3
#define L_MSIZE13 (L_MAS13 * L_MAS13)
#define N_ICH13 1024
#define N_OCH13 512
#define L_PAD13 1
#define L_IDM13 (L_COL13*L_ROW13*N_ICH13)
#define L_ODM13 (L_COL13*L_ROW13*N_OCH13)

#define L_COL14 13
#define L_ROW14 13
#define L_MAS14 1
#define L_MSIZE14 (L_MAS14 * L_MAS14)
#define N_ICH14 512
#define N_OCH14 425
#define L_PAD14 1
#define L_IDM14 (L_COL14*L_ROW14*N_ICH14)
#define L_ODM14 (L_COL14*L_ROW14*N_OCH14)

#include "weight_header/tiny-yolo_0.h"
#include "weight_header/tiny-yolo_2.h"
#include "weight_header/tiny-yolo_4.h"
#include "weight_header/tiny-yolo_6.h"
#include "weight_header/tiny-yolo_8.h"
#include "weight_header/tiny-yolo_10.h"
#include "weight_header/tiny-yolo_12.h"
#include "weight_header/tiny-yolo_13.h"
#include "weight_header/tiny-yolo_14.h"

#include "weight_header/tiny-yolo_bias_0.h"
#include "weight_header/tiny-yolo_bias_2.h"
#include "weight_header/tiny-yolo_bias_4.h"
#include "weight_header/tiny-yolo_bias_6.h"
#include "weight_header/tiny-yolo_bias_8.h"
#include "weight_header/tiny-yolo_bias_10.h"
#include "weight_header/tiny-yolo_bias_12.h"
#include "weight_header/tiny-yolo_bias_13.h"
#include "weight_header/tiny-yolo_bias_14.h"

#include "weight_header/tiny-yolo_mean_0.h"
#include "weight_header/tiny-yolo_mean_2.h"
#include "weight_header/tiny-yolo_mean_4.h"
#include "weight_header/tiny-yolo_mean_6.h"
#include "weight_header/tiny-yolo_mean_8.h"
#include "weight_header/tiny-yolo_mean_10.h"
#include "weight_header/tiny-yolo_mean_12.h"
#include "weight_header/tiny-yolo_mean_13.h"

#include "weight_header/tiny-yolo_scales_0.h"
#include "weight_header/tiny-yolo_scales_2.h"
#include "weight_header/tiny-yolo_scales_4.h"
#include "weight_header/tiny-yolo_scales_6.h"
#include "weight_header/tiny-yolo_scales_8.h"
#include "weight_header/tiny-yolo_scales_10.h"
#include "weight_header/tiny-yolo_scales_12.h"
#include "weight_header/tiny-yolo_scales_13.h"

#include "weight_header/tiny-yolo_variance_0.h"
#include "weight_header/tiny-yolo_variance_2.h"
#include "weight_header/tiny-yolo_variance_4.h"
#include "weight_header/tiny-yolo_variance_6.h"
#include "weight_header/tiny-yolo_variance_8.h"
#include "weight_header/tiny-yolo_variance_10.h"
#include "weight_header/tiny-yolo_variance_12.h"
#include "weight_header/tiny-yolo_variance_13.h"

#define Max(x, y) ((x) > (y) ? (x) : (y))

void conv_Layer0(float *input, float *output, float* net_weight){
    printf("\tstart conv_Layer0\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH0][L_COL0][L_ROW0];
    //float outputLocal_conv[N_OCH0][L_COL0][L_ROW0];
    //float outputLocal_maxp[N_OCH0][L_COL2][L_ROW2];

    memset(output, 0, sizeof(float)*L_ODM0);

    printf("convolution\n");

    for (my = 0; my < L_MAS0; ++my){        //convolution
        for (mx = 0; mx < L_MAS0; ++mx){
            int m = mx + my * L_MAS0;
            for (ip = 0; ip < N_ICH0; ++ip){
                for (ody = 0; ody < L_ROW0; ++ody){
                    int iy = my + ody - L_PAD0;
                    if(iy <= -1 || iy >= L_ROW0) continue;
                    for (odx = 0; odx < L_COL0; ++odx){
                        int ix = mx + odx - L_PAD0;
                        if(ix <= -1 || ix >= L_COL0) continue;
                        for (op = 0; op < N_OCH0; ++op){
                            // outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_0[op][ip][m];
                            //*(output + op*L_COL0*L_ROW0 + ody*L_COL0 + odx) += \
                                *(input + ip*L_COL0*L_ROW0 + iy*L_COL0 + ix) * weightConv_0[op][ip][m];
                            *(output + op*L_COL0*L_ROW0 + ody*L_COL0 + odx) +=
                                *(input + ip*L_COL0*L_ROW0 + iy*L_COL0 + ix) * (*(net_weight + (op * N_ICH0 + ip) * L_MAS0 * L_MAS0 + m));
                        }
                    }
                }
            }
        }
    }
}

void sub_Layer0(float* input, float* output,
    float* net_variance, float* net_mean, float* net_scales, float* net_bias){
    printf("\tstart sub_Layer0\n");
    int op, ody, odx;
#if 1
    printf("batch - normalize\n");
#if 0
#else
    for (op = 0; op < N_OCH0; ++op){        //batch - normalize
        for (ody = 0; ody < L_ROW0; ++ody){
            for (odx = 0; odx < L_COL0; ++odx){
                // outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_0[op])/(sqrt(weightConv_variance_0[op]) + .000001f);
                *(input + op*L_COL0*L_ROW0 + ody*L_COL0 + odx) =
                    (*(input + op*L_COL0*L_ROW0 + ody*L_COL0 + odx) - net_mean[op])/((float)(sqrt(net_variance[op])) + .000001f);
            }
        }
    }
#endif
#endif
#if 1
    printf("batch - scale\n");
#if 0
    scale_bias(input, net_scales, 1, N_OCH0, L_COL0*L_ROW0);
#else

    for (ody = 0; ody < L_ROW0; ++ody){     //batch - scale
        for (odx = 0; odx < L_COL0; ++odx){
            for (op = 0; op < N_OCH0; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_0[op];
                *(input + op*L_COL0*L_ROW0 + ody*L_COL0 + odx) *= net_scales[op];
            }
        }
    }
#endif
#endif
#if 1
    printf("bias\n");
#if 0
    add_bias(input, net_bias, 1, N_OCH0, L_COL0*L_ROW0);
#else
    
    for (ody = 0; ody < L_ROW0; ++ody){     //bias
        for (odx = 0; odx < L_COL0; ++odx){
            for (op = 0; op < N_OCH0; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_0[op];
                *(input + op*L_COL0*L_ROW0 + ody*L_COL0 + odx) += net_bias[op];
            }
        }
    }
#endif
#endif
    printf("maxpooling\n");

    for (ody = 0; ody < L_ROW2; ++ody){     //maxpooling
        int idy = ody * L_MAS1;
        for (odx = 0; odx < L_COL2; ++odx){
            int idx = odx * L_MAS1;
            for (op = 0; op < N_ICH2; ++op){
                // outputLocal_maxp[op][ody][odx] = Max(Max(outputLocal_conv[op][idy][idx], outputLocal_conv[op][idy][idx+1]),Max(outputLocal_conv[op][idy+1][idx], outputLocal_conv[op][idy+1][idx+1]));
                *(output + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) = Max(
                    Max(*(input + op*L_COL0*L_ROW0 + idy*L_COL0 + idx), *(input + op*L_COL0*L_ROW0 + idy*L_COL0 + (idx+1))),
                    Max(*(input + op*L_COL0*L_ROW0 + (idy+1)*L_COL0 + idx), *(input + op*L_COL0*L_ROW0 + (idy+1)*L_COL0 + (idx+1))));
            }
        }
    }

    printf("activation fun of leaky\n");

    for (ody = 0; ody < L_ROW2; ++ody){     //activation fun of leaky
        for (odx = 0; odx < L_COL2; ++odx){
            for (op = 0; op < N_ICH2; ++op){
                // int net = outputLocal_maxp[op][ody][odx];
                float net = *(output + op*L_COL2*L_ROW2 + ody*L_COL2 + odx);
                if(net < 0)
                    // outputLocal_maxp[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) = net * 0.1;
                    
            }
        }
    }

    //memcpy(output, outputLocal_maxp, sizeof(float)*L_IDM2);
}



#if 1
void conv_Layer2(float *input, float *output, float* net_weight){
    printf("\tstart conv_Layer2\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH2][L_COL2][L_ROW2];
    //float outputLocal_conv[N_OCH2][L_COL2][L_ROW2];
    //float outputLocal_maxp[N_OCH4][L_COL4][L_ROW4];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM2);
    memset(output, 0, sizeof(float)*L_ODM2);

    printf("convolution\n");

    for (my = 0; my < L_MAS2; ++my){        //convolution
        for (mx = 0; mx < L_MAS2; ++mx){
            int m = mx + my * L_MAS2;
            for (ip = 0; ip < N_ICH2; ++ip){
                for (ody = 0; ody < L_COL2; ++ody){
                    int iy = my + ody - L_PAD2;
                    if(iy <= -1 || iy >= L_COL2) continue;
                    for (odx = 0; odx < L_ROW2; ++odx){
                        int ix = mx + odx - L_PAD2;
                        if(ix <= -1 || ix >= L_ROW2) continue;
                        for (op = 0; op < N_OCH2; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_2[op][ip][m];
//                            *(output + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) += \
                                *(input + ip*L_COL2*L_ROW2 + iy*L_COL2 + ix) * weightConv_2[op][ip][m];
                            *(output + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) +=
                                *(input + ip*L_COL2*L_ROW2 + iy*L_COL2 + ix) * (*(net_weight + (op * N_ICH2 + ip) * L_MAS2 * L_MAS2 + m));

                        }
                    }
                }
            }
        }
    } 
}

void sub_Layer2(float* input, float* output,
    float* net_variance, float* net_mean, float* net_scales, float* net_bias){
    printf("\tstart sub_Layer2\n");
    int op, ody, odx;
#if 1
//    normalize_cpu(input, weightConv_mean_2, weightConv_variance_2, 1, N_OCH2, L_COL2*L_ROW2);
    printf("batch - normalize\n");

    for (op = 0; op < N_OCH2; ++op){        //batch - normalize
        for (ody = 0; ody < L_COL2; ++ody){
            for ( odx = 0; odx < L_ROW2; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_2[op])/(sqrt(weightConv_variance_2[op]) + .000001f);
                *(input + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) =
                    (*(input + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) - net_mean[op])/((float)(sqrt(net_variance[op])) + .000001f);
            }
        }
    }
#endif
#if 1
#if 0
    scale_bias(input, net_scales, 1, N_OCH2, L_COL2*L_ROW2);
#else
    printf("batch - scale\n");
    for ( ody = 0; ody < L_COL2; ++ody){     //batch - scale
        for ( odx = 0; odx < L_ROW2; ++odx){
            for ( op = 0; op < N_OCH2; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_2[op];
                *(input + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) *= (float)(net_scales[op]);
            }
        }
    }
#endif
#endif
#if 1
#if 0
    add_bias(input, net_bias, 1, N_OCH2, L_COL2*L_ROW2);
#else
    printf("bias\n");
    for ( ody = 0; ody < L_COL2; ++ody){     //bias
        for ( odx = 0; odx < L_ROW2; ++odx){
            for ( op = 0; op < N_OCH2; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_2[op];
                *(input + op*L_COL2*L_ROW2 + ody*L_COL2 + odx) += net_bias[op];
            }
        }
    }
#endif
#endif
    printf("maxpooling\n");

    for (ody = 0; ody < L_COL4; ++ody){     //maxpooling
        int idy = ody * L_MAS3;
        for (odx = 0; odx < L_ROW4; ++odx){
            int idx = odx * L_MAS3;
            for ( op = 0; op < N_ICH4; ++op){
                // outputLocal_maxp[op][ody][odx] = Max(Max(outputLocal_conv[op][idy][idx], outputLocal_conv[op][idy][idx+1]),Max(outputLocal_conv[op][idy+1][idx], outputLocal_conv[op][idy+1][idx+1]));
                *(output + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) = Max(
                    Max(*(input + op*L_COL2*L_ROW2 + idy*L_COL2 + idx), *(input + op*L_COL2*L_ROW2 + idy*L_COL2 + (idx+1))),
                    Max(*(input + op*L_COL2*L_ROW2 + (idy+1)*L_COL2 + idx), *(input + op*L_COL2*L_ROW2 + (idy+1)*L_COL2 + (idx+1))));
            }
        }
    }

    printf("activation fun of leaky\n");

    for ( ody = 0; ody < L_COL4; ++ody){     //activation fun of leaky
        for ( odx = 0; odx < L_ROW4; ++odx){
            for ( op = 0; op < N_ICH4; ++op){
                // int net = outputLocal_maxp[op][ody][odx];
                float net = *(output + op*L_COL4*L_ROW4 + ody*L_COL4 + odx);
                if(net < 0)
                    //outputLocal_maxp[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_maxp, sizeof(float)*L_ODM4);
}

#endif

#if 1
void conv_Layer4(float *input, float *output){
    printf("\tstart conv_Layer4\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH4][L_COL4][L_ROW4];
    //float outputLocal_conv[N_OCH4][L_COL4][L_ROW4];
    //float outputLocal_maxp[N_OCH4][L_COL4][L_ROW4];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM4);
    memset(output, 0, sizeof(float)*L_ODM4);

    printf("convolution\n");

    for ( my = 0; my < L_MAS4; ++my){        //convolution
        for ( mx = 0; mx < L_MAS4; ++mx){
            int m = mx + my * L_MAS4;
            for ( ip = 0; ip < N_ICH4; ++ip){
                for ( ody = 0; ody < L_COL4; ++ody){
                    int iy = my + ody - L_PAD4;
                    if(iy == -1 || iy == L_COL4) continue;
                    for ( odx = 0; odx < L_ROW4; ++odx){
                        int ix = mx + odx - L_PAD4;
                        if(ix == -1 || ix == L_ROW4) continue;
                        for ( op = 0; op < N_OCH4; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_4[op][ip][m];
                            *(output + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) += 
                                *(input + ip*L_COL4*L_ROW4 + iy*L_COL4 + ix) * weightConv_4[op][ip][m];
                        }
                    }
                }
            }
        }  
    }
}

void sub_Layer4(float *input, float* output){
    printf("\tstart sub_Layer4\n");
    int op, ody, odx;

    printf("batch - normalize\n");

    for ( op = 0; op < N_OCH4; ++op){        //batch - normalize
        for ( ody = 0; ody < L_COL4; ++ody){
            for ( odx = 0; odx < L_ROW4; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_4[op])/(sqrt(weightConv_variance_4[op]) + .000001f);
                *(input + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) =
                    (*(input + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) - weightConv_mean_4[op])/(sqrt(weightConv_variance_4[op]) + .000001f);
            }
        }
    }

    printf("batch - scale\n");
           
    for ( ody = 0; ody < L_COL4; ++ody){     //batch - scale
        for ( odx = 0; odx < L_ROW4; ++odx){
            for ( op = 0; op < N_OCH4; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_4[op];
                *(input + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) *= weightConv_scales_4[op];
            }
        }
    }

    printf("bias\n");
    
    for ( ody = 0; ody < L_COL4; ++ody){     //bias
        for ( odx = 0; odx < L_ROW4; ++odx){
            for ( op = 0; op < N_OCH4; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_4[op];
                *(input + op*L_COL4*L_ROW4 + ody*L_COL4 + odx) += weightConv_bias_4[op];
            }
        }
    }

    printf("maxpooling\n");

    for ( ody = 0; ody < L_COL6; ++ody){     //maxpooling
        int idy = ody * L_MAS5;
        for ( odx = 0; odx < L_ROW6; ++odx){
            int idx = odx * L_MAS5;
            for ( op = 0; op < N_ICH6; ++op){
                //outputLocal_maxp[op][ody][odx] = Max(Max(outputLocal_conv[op][idy][idx], outputLocal_conv[op][idy][idx+1]),Max(outputLocal_conv[op][idy+1][idx], outputLocal_conv[op][idy+1][idx+1]));
                *(output + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) = Max(
                    Max(*(input + op*L_COL4*L_ROW4 + idy*L_COL4 + idx), *(input + op*L_COL4*L_ROW4 + idy*L_COL4 + (idx+1))),
                    Max(*(input + op*L_COL4*L_ROW4 + (idy+1)*L_COL4 + idx), *(input + op*L_COL4*L_ROW4 + (idy+1)*L_COL4 + (idx+1))));
            }
        }
    }

    printf("activation fun of leaky\n");

    for ( ody = 0; ody < L_COL6; ++ody){     //activation fun of leaky
        for ( odx = 0; odx < L_ROW6; ++odx){
            for ( op = 0; op < N_ICH6; ++op){
                //int net = outputLocal_maxp[op][ody][odx];
                float net = *(output + op*L_COL6*L_ROW6 + ody*L_COL6 + odx);
                if(net < 0)
                    //outputLocal_maxp[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_maxp, sizeof(float)*L_ODM6);
}
#endif

#if 1
void conv_Layer6(float *input, float *output){
    printf("\tstart conv_Layer6\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH6][L_COL6][L_ROW6];
    //float outputLocal_conv[N_OCH6][L_COL6][L_ROW6];
    //float outputLocal_maxp[N_OCH6][L_COL6][L_ROW6];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM6);
    memset(output, 0, sizeof(float)*L_ODM6);

    for ( my = 0; my < L_MAS6; ++my){        //convolution
        for ( mx = 0; mx < L_MAS6; ++mx){
            int m = mx + my * L_MAS6;
            for ( ip = 0; ip < N_ICH6; ++ip){
                for ( ody = 0; ody < L_COL6; ++ody){
                    int iy = my + ody - L_PAD6;
                    if(iy == -1 || iy == L_COL6) continue;
                    for ( odx = 0; odx < L_ROW6; ++odx){
                        int ix = mx + odx - L_PAD6;
                        if(ix == -1 || ix == L_ROW6) continue;
                        for ( op = 0; op < N_OCH6; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_6[op][ip][m];
                            *(output + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) += 
                                *(input + ip*L_COL6*L_ROW6 + iy*L_COL6 + ix) * weightConv_6[op][ip][m];
                        }
                    }
                }
            }
        }
    }
}

void sub_Layer6(float *input, float* output){
    printf("\tstart sub_Layer6\n");
    int op, ody, odx;

    printf("batch - normalize\n");

    for ( op = 0; op < N_OCH6; ++op){        //batch - normalize
        for ( ody = 0; ody < L_COL6; ++ody){
            for ( odx = 0; odx < L_ROW6; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_6[op])/(sqrt(weightConv_variance_6[op]) + .000001f);
                *(input + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) =
                    (*(input + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) - weightConv_mean_6[op])/(sqrt(weightConv_variance_6[op]) + .000001f);
            }
        }
    }

    printf("batch - scale\n");
    
    for ( ody = 0; ody < L_COL6; ++ody){     //batch - scale
        for ( odx = 0; odx < L_ROW6; ++odx){
            for ( op = 0; op < N_OCH6; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_6[op];
                *(input + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) *= weightConv_scales_6[op];
            }
        }
    }

    printf("bias\n");
    
    for ( ody = 0; ody < L_COL6; ++ody){     //bias
        for ( odx = 0; odx < L_ROW6; ++odx){
            for ( op = 0; op < N_OCH6; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_6[op];
                *(input + op*L_COL6*L_ROW6 + ody*L_COL6 + odx) += weightConv_bias_6[op];
            }
        }
    }

    printf("maxpooling\n");

    for (ody = 0; ody < L_COL8; ++ody){     //maxpooling
        int idy = ody * L_MAS7;
        for ( odx = 0; odx < L_ROW8; ++odx){
            int idx = odx * L_MAS7;
            for ( op = 0; op < N_ICH8; ++op){
                //outputLocal_maxp[op][ody][odx] = Max(Max(outputLocal_conv[op][idy][idx], outputLocal_conv[op][idy][idx+1]),Max(outputLocal_conv[op][idy+1][idx], outputLocal_conv[op][idy+1][idx+1]));
                *(output + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) = Max(
                    Max(*(input + op*L_COL6*L_ROW6 + idy*L_COL6 + idx), *(input + op*L_COL6*L_ROW6 + idy*L_COL6 + (idx+1))),
                    Max(*(input + op*L_COL6*L_ROW6 + (idy+1)*L_COL6 + idx), *(input + op*L_COL6*L_ROW6 + (idy+1)*L_COL6 + (idx+1))));
            }
        }
    }

    printf("activation fun of leaky\n");

    for (ody = 0; ody < L_COL8; ++ody){     //activation fun of leaky
        for ( odx = 0; odx < L_ROW8; ++odx){
            for ( op = 0; op < N_ICH8; ++op){
                //int net = outputLocal_maxp[op][ody][odx];
                float net = *(output + op*L_COL8*L_ROW8 + ody*L_COL8 + odx);
                if(net < 0)
                    //outputLocal_maxp[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_maxp, sizeof(float)*L_ODM8);
}
#endif

#if 1
void conv_Layer8(float *input, float *output){
    printf("\tstart conv_Layer8\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH8][L_COL8][L_ROW8];
    //float outputLocal_conv[N_OCH8][L_COL8][L_ROW8];
    //float outputLocal_maxp[N_OCH8][L_COL8][L_ROW8];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM8);
    memset(output, 0, sizeof(float)*L_ODM8);

    for ( my = 0; my < L_MAS8; ++my){        //convolution
        for ( mx = 0; mx < L_MAS8; ++mx){
            int m = mx + my * L_MAS8;
            for ( ip = 0; ip < N_ICH8; ++ip){
                for ( ody = 0; ody < L_COL8; ++ody){
                    int iy = my + ody - L_PAD8;
                    if(iy == -1 || iy == L_COL8) continue;
                    for ( odx = 0; odx < L_ROW8; ++odx){
                        int ix = mx + odx - L_PAD8;
                        if(ix == -1 || ix == L_ROW8) continue;
                        for ( op = 0; op < N_OCH8; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_8[op][ip][m];
                            *(output + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) += 
                                *(input + ip*L_COL8*L_ROW8 + iy*L_COL8 + ix) * weightConv_8[op][ip][m];
                        }
                    }
                }
            }
        }
    }
}

void sub_Layer8(float *input, float* output){
    printf("\tstart sub_Layer8\n");
    int op, ody, odx;

    printf("batch - normalize\n");

    for ( op = 0; op < N_OCH8; ++op){        //batch - normalize
        for ( ody = 0; ody < L_COL8; ++ody){
            for ( odx = 0; odx < L_ROW8; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_8[op])/(sqrt(weightConv_variance_8[op]) + .000001f);
                *(input + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) =
                    (*(input + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) - weightConv_mean_8[op])/(sqrt(weightConv_variance_8[op]) + .000001f);
            }
        }
    }

    printf("batch - scale\n");

    for ( ody = 0; ody < L_COL8; ++ody){     //batch - scale
        for ( odx = 0; odx < L_ROW8; ++odx){
            for ( op = 0; op < N_OCH8; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_8[op];
                *(input + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) *= weightConv_scales_8[op];
            }
        }
    }
    
    printf("bias\n");

    for ( ody = 0; ody < L_COL8; ++ody){     //bias
        for ( odx = 0; odx < L_ROW8; ++odx){
            for ( op = 0; op < N_OCH8; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_8[op];
                *(input + op*L_COL8*L_ROW8 + ody*L_COL8 + odx) += weightConv_bias_8[op];
            }
        }
    }

    printf("maxpooling\n");

    for ( ody = 0; ody < L_COL10; ++ody){    //maxpooling
        int idy = ody * L_MAS7;
        for ( odx = 0; odx < L_ROW10; ++odx){
            int idx = odx * L_MAS7;
            for ( op = 0; op < N_ICH10; ++op){
                //outputLocal_maxp[op][ody][odx] = Max(Max(outputLocal_conv[op][idy][idx], outputLocal_conv[op][idy][idx+1]),Max(outputLocal_conv[op][idy+1][idx], outputLocal_conv[op][idy+1][idx+1]));
                *(output + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) = Max(
                    Max(*(input + op*L_COL8*L_ROW8 + idy*L_COL8 + idx), *(input + op*L_COL8*L_ROW8 + idy*L_COL8 + (idx+1))),
                    Max(*(input + op*L_COL8*L_ROW8 + (idy+1)*L_COL8 + idx), *(input + op*L_COL8*L_ROW8 + (idy+1)*L_COL8 + (idx+1))));
            }
        }
    }

    printf("activation fun of leaky\n");

    for ( ody = 0; ody < L_COL10; ++ody){    //activation fun of leaky
        for ( odx = 0; odx < L_ROW10; ++odx){
            for ( op = 0; op < N_ICH10; ++op){
                //int net = outputLocal_maxp[op][ody][odx];
                float net = *(output + op*L_COL10*L_ROW10 + ody*L_COL10 + odx);
                if(net < 0)
                    //outputLocal_maxp[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_maxp, sizeof(float)*L_ODM10);
}
#endif

#if 1
void conv_Layer10(float *input, float *output){
    printf("\tstart conv_Layer10\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH10][L_COL10][L_ROW10];
    //float outputLocal_conv[N_OCH10][L_COL10][L_ROW10];
    //float outputLocal_maxp[N_OCH10][L_COL10][L_ROW10];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM10);
    memset(output, 0, sizeof(float)*L_ODM10);

    for ( my = 0; my < L_MAS10; ++my){       //convolution
        for ( mx = 0; mx < L_MAS10; ++mx){
            int m = mx + my * L_MAS10;
            for ( ip = 0; ip < N_ICH10; ++ip){
                for ( ody = 0; ody < L_COL10; ++ody){
                    int iy = my + ody - L_PAD10;
                    if(iy == -1 || iy == L_COL10) continue;
                    for ( odx = 0; odx < L_ROW10; ++odx){
                        int ix = mx + odx - L_PAD10;
                        if(ix == -1 || ix == L_ROW10) continue;
                        for ( op = 0; op < N_OCH10; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_10[op][ip][m];
                            *(output + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) += 
                                *(input + ip*L_COL10*L_ROW10 + iy*L_COL10 + ix) * weightConv_10[op][ip][m];
                        }
                    }
                }
            }
        }
    }
}

void sub_Layer10(float *input, float *output){
    printf("\tstart sub_Layer10\n");
    int op, ody, odx;

    printf("batch - normalize\n");

    for (op = 0; op < N_OCH10; ++op){       //batch - normalize
        for ( ody = 0; ody < L_COL10; ++ody){
            for ( odx = 0; odx < L_ROW10; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_10[op])/(sqrt(weightConv_variance_10[op]) + .000001f);
                *(input + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) =
                    (*(input + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) - weightConv_mean_10[op])/(sqrt(weightConv_variance_10[op]) + .000001f);
            }
        }
    }

    printf("batch - scale\n");
    
    for ( ody = 0; ody < L_COL10; ++ody){        //batch - scale
        for ( odx = 0; odx < L_ROW10; ++odx){
            for ( op = 0; op < N_OCH10; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_10[op];
                *(input + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) *= weightConv_scales_10[op];
            }
        }
    }
    
    printf("bias\n");

    for ( ody = 0; ody < L_COL10; ++ody){    //bias
        for ( odx = 0; odx < L_ROW10; ++odx){
            for ( op = 0; op < N_OCH10; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_10[op];
                *(input + op*L_COL10*L_ROW10 + ody*L_COL10 + odx) += weightConv_bias_10[op];
            }
        }
    }

    printf("maxpooling\n");

    for ( ody = 0; ody < L_COL12; ++ody){    //maxpooling
        int idy = ody * L_MAS11;
        for ( odx = 0; odx < L_ROW12; ++odx){
            int idx = odx * L_MAS11;
            for ( op = 0; op < N_ICH12; ++op){
                //outputLocal_maxp[op][ody][odx] = Max(Max(outputLocal_conv[op][idy][idx], outputLocal_conv[op][idy][idx+1]),Max(outputLocal_conv[op][idy+1][idx], outputLocal_conv[op][idy+1][idx+1]));
                *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) = Max(
                    Max(*(input + op*L_COL10*L_ROW10 + idy*L_COL10 + idx), *(input + op*L_COL10*L_ROW10 + idy*L_COL10 + (idx+1))),
                    Max(*(input + op*L_COL10*L_ROW10 + (idy+1)*L_COL10 + idx), *(input + op*L_COL10*L_ROW10 + (idy+1)*L_COL10 + (idx+1))));
            }
        }
    }

    printf("activation fun of leaky\n");

    for ( ody = 0; ody < L_COL12; ++ody){    //activation fun of leaky
        for ( odx = 0; odx < L_ROW12; ++odx){
            for ( op = 0; op < N_ICH12; ++op){
                //int net = outputLocal_conv[op][ody][odx];
                float net = *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx);
                if(net < 0)
                    //outputLocal_conv[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_maxp, sizeof(float)*L_ODM12);
}
#endif


void conv_Layer12(float *input, float *output){
    printf("\tstart conv_Layer12\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH12][L_COL12][L_ROW12];
    //float outputLocal_conv[N_OCH12][L_COL12][L_ROW12];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM12);
    memset(output, 0, sizeof(float)*L_ODM12);

    for ( my = 0; my < L_MAS12; ++my){       //convolution
        for ( mx = 0; mx < L_MAS12; ++mx){
            int m = mx + my * L_MAS12;
            for ( ip = 0; ip < N_ICH12; ++ip){
                for ( ody = 0; ody < L_COL12; ++ody){
                    int iy = my + ody - L_PAD12;
                    if(iy == -1 || iy == L_COL12) continue;
                    for ( odx = 0; odx < L_ROW12; ++odx){
                        int ix = mx + odx - L_PAD12;
                        if(ix == -1 || ix == L_ROW12) continue;
                        for ( op = 0; op < N_OCH12; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_12[op][ip][m];
                            *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) += 
                                *(input + ip*L_COL12*L_ROW12 + iy*L_COL12 + ix) * weightConv_12[op][ip][m];
                        }
                    }
                }
            }
        }
    }
    
    printf("batch - normalize\n");

    for ( op = 0; op < N_OCH12; ++op){       //batch - normalize
        for ( ody = 0; ody < L_COL12; ++ody){
            for ( odx = 0; odx < L_ROW12; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_12[op])/(sqrt(weightConv_variance_12[op]) + .000001f);
                *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) =
                    (*(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) - weightConv_mean_12[op])/(sqrt(weightConv_variance_12[op]) + .000001f);
            }
        }
    }

    printf("batch - scale\n");
    
    for ( ody = 0; ody < L_COL12; ++ody){        //batch - scale
        for ( odx = 0; odx < L_ROW12; ++odx){
            for ( op = 0; op < N_OCH12; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_12[op];
                *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) *= weightConv_scales_12[op];
            }
        }
    }

    printf("bias\n");
    
    for ( ody = 0; ody < L_COL12; ++ody){    //bias
        for ( odx = 0; odx < L_ROW12; ++odx){
            for ( op = 0; op < N_OCH12; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_12[op];
                *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) += weightConv_bias_12[op];
            }
        }
    }

    printf("activation fun of leaky\n");

    for ( ody = 0; ody < L_COL12; ++ody){    //activation fun of leaky
        for ( odx = 0; odx < L_ROW12; ++odx){
            for ( op = 0; op < N_OCH12; ++op){
                //int net = outputLocal_conv[op][ody][odx];
                float net = *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx);
                if(net < 0)
                    //outputLocal_conv[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL12*L_ROW12 + ody*L_COL12 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_conv, sizeof(float)*L_ODM12);
}


void conv_Layer13(float *input, float *output){
    printf("\tstart conv_Layer13\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH13][L_COL13][L_ROW13];
    //float outputLocal_conv[N_OCH13][L_COL13][L_ROW13];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM13);
    memset(output, 0, sizeof(float)*L_ODM13);

    for (my = 0; my < L_MAS13; ++my){       //convolution
        for (mx = 0; mx < L_MAS13; ++mx){
            int m = mx + my * L_MAS13;
            for (ip = 0; ip < N_ICH13; ++ip){
                for (ody = 0; ody < L_COL13; ++ody){
                    int iy = my + ody - L_PAD13;
                    if(iy == -1 || iy == L_COL13) continue;
                    for (odx = 0; odx < L_ROW13; ++odx){
                        int ix = mx + odx - L_PAD13;
                        if(ix == -1 || ix == L_ROW13) continue;
                        for (op = 0; op < N_OCH13; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_13[op][ip][m];
                            *(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx) += 
                                *(input + ip*L_COL13*L_ROW13 + iy*L_COL13 + ix) * weightConv_13[op][ip][m];
                        }
                    }
                }
            }
        }
    }

    printf("batch - normalize\n");

    for (op = 0; op < N_OCH13; ++op){       //batch - normalize
        for (ody = 0; ody < L_COL13; ++ody){
            for (odx = 0; odx < L_ROW13; ++odx){
                //outputLocal_conv[op][ody][odx] = (outputLocal_conv[op][ody][odx] - weightConv_mean_13[op])/(sqrt(weightConv_variance_13[op]) + .000001f);
                *(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx) =
                    (*(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx) - weightConv_mean_13[op])/(sqrt(weightConv_variance_13[op]) + .000001f);
            }
        }
    }

    printf("batch - scale\n");
    
    for (ody = 0; ody < L_COL13; ++ody){        //batch - scale
        for (odx = 0; odx < L_ROW13; ++odx){
            for (op = 0; op < N_OCH13; ++op){
                //outputLocal_conv[op][ody][odx] *= weightConv_scales_13[op];
                *(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx) *= weightConv_scales_13[op];
            }
        }
    }

    printf("bias\n");
    
    for (ody = 0; ody < L_COL13; ++ody){    //bias
        for (odx = 0; odx < L_ROW13; ++odx){
            for (op = 0; op < N_OCH13; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_13[op];
                *(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx) += weightConv_bias_13[op];
            }
        }
    }

    printf("activation fun of leaky\n");

    for (ody = 0; ody < L_COL13; ++ody){    //activation fun of leaky
        for ( odx = 0; odx < L_ROW13; ++odx){
            for ( op = 0; op < N_OCH13; ++op){
                //int net = outputLocal_conv[op][ody][odx];
                float net = *(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx);
                if(net < 0)
                    //outputLocal_conv[op][ody][odx] = net * 0.1;
                    *(output + op*L_COL13*L_ROW13 + ody*L_COL13 + odx) = net * 0.1;
            }
        }
    }

    //memcpy(output, outputLocal_conv, sizeof(float)*L_ODM13);
}

void conv_Layer14(float *input, float *output){
    printf("\tstart conv_Layer14\n");
    int my, mx, ip, op, ody, odx;
    //float inputLocal[N_ICH14][L_COL14][L_ROW14];
    //float outputLocal_conv[N_OCH14][L_COL14][L_ROW14];

    //memcpy(inputLocal, input, sizeof(float)*L_IDM14);
    memset(output, 0, sizeof(float)*L_ODM14);

    for (my = 0; my < L_MAS14; ++my){       //convolution
        for ( mx = 0; mx < L_MAS14; ++mx){
            int m = mx + my * L_MAS14;
            for ( ip = 0; ip < N_ICH14; ++ip){
                for ( ody = 0; ody < L_COL14; ++ody){
                    int iy = my + ody - L_PAD14;
                    if(iy == -1 || iy == L_COL14) continue;
                    for ( odx = 0; odx < L_ROW14; ++odx){
                        int ix = mx + odx - L_PAD14;
                        if(ix == -1 || ix == L_ROW14) continue;
                        for ( op = 0; op < N_OCH14; ++op){
                            //outputLocal_conv[op][ody][odx] += inputLocal[ip][iy][ix] * weightConv_14[op][ip][m];
                            *(output + op*L_COL14*L_ROW14 + ody*L_COL14 + odx) += 
                                *(input + ip*L_COL14*L_ROW14 + iy*L_COL14 + ix) * weightConv_14[op][ip][m];
                        }
                    }
                }
            }
        }
    }

    printf("bias\n");
    
    for ( ody = 0; ody < L_COL14; ++ody){    //bias
        for ( odx = 0; odx < L_ROW14; ++odx){
            for ( op = 0; op < N_OCH14; ++op){
                //outputLocal_conv[op][ody][odx] += weightConv_bias_14[op];
                *(output + op*L_COL14*L_ROW14 + ody*L_COL14 + odx) += weightConv_bias_14[op];
            }
        }
    }

    //memcpy(output, outputLocal_conv, sizeof(float)*L_ODM14);
}
#if 0
int entry_index(float* input, int location, int entry, int coords, int classes, int size){
    int n =   location / size;
    int loc = location % size;
    return n*size*(coords+classes+1) + entry*size + loc;
}

static inline float logistic_activate(float x){return 1./(1. + exp(-x));}

void region_layer_15(float* input, float* output)
{
    printf("\tstart Region_Layer14\n");
    int i, j, k;
    int op;
    for(op=0; op < N_OCH14; op++){
        int index = entry_index(l, b, n*l.w*l.h, 0);
    }

}
#endif
void kernel(network *net, float* input, float* output){
    // float* input_layer_0 = (float*)sds_alloc(sizeof(float)*L_IDM0);
    // float* input_layer_2 = (float*)sds_alloc(sizeof(float)*L_IDM2);
    // float* input_layer_4 = (float*)sds_alloc(sizeof(float)*L_IDM4);
    // float* input_layer_6 = (float*)sds_alloc(sizeof(float)*L_IDM6);
    // float* input_layer_8 = (float*)sds_alloc(sizeof(float)*L_IDM8);
    // float* input_layer_10 = (float*)sds_alloc(sizeof(float)*L_IDM10);
    // float* input_layer_12 = (float*)sds_alloc(sizeof(float)*L_IDM12);
    // float* input_layer_13 = (float*)sds_alloc(sizeof(float)*L_IDM13);
    // float* input_layer_14 = (float*)sds_alloc(sizeof(float)*L_IDM14);
    // float* output_layer = (float*)sds_alloc(sizeof(float)*L_ODM14);
    printf("\tstart kernel\n");
    float* input_layer_0 = (float*)malloc(sizeof(float)*L_IDM0);
    if(input_layer_0)   printf("input_layer_0 allocated...\n");
    else                printf("allocation failed!\n");

    float* sub_layer_0 = (float*)malloc(sizeof(float*)*L_ODM0);
    if(sub_layer_0)     printf("sub_layer_0 allocated...\n");
    else                printf("allocation failed!\n");

    float* input_layer_2 = (float*)malloc(sizeof(float)*L_IDM2);
    if(input_layer_2)   printf("input_layer_2 allocated...\n");
    else                printf("allocation failed!\n");
#if 1
    float* sub_layer_2 = (float*)malloc(sizeof(float)*L_ODM2);
    if(sub_layer_2)     printf("sub_layer_2 allocated...\n");
    else                printf("allocation failed!\n");
    
    float* input_layer_4 = (float*)malloc(sizeof(float)*L_IDM4);
    if(input_layer_4)   printf("input_layer_4 allocated...\n");
    else                printf("allocation failed!\n");
#endif
#if 1
    float* sub_layer_4 = (float*)malloc(sizeof(float)*L_ODM4);
    if(sub_layer_4)     printf("sub_layer_4 allocated...\n");
    else                printf("allocation failed!\n");

    float* input_layer_6 = (float*)malloc(sizeof(float)*L_IDM6);
    if(input_layer_6)   printf("input_layer_6 allocated...\n");
    else                printf("allocation failed!\n");
#endif
#if 1
    float* sub_layer_6 = (float*)malloc(sizeof(float)*L_ODM6);
    if(sub_layer_6)     printf("sub_layer_6 allocated...\n");
    else                printf("allocation failed!\n");

    float* input_layer_8 = (float*)malloc(sizeof(float)*L_IDM8);
    if(input_layer_8)   printf("input_layer_8 allocated...\n");
    else                printf("allocation failed!\n");
#endif
#if 1
    float* sub_layer_8 = (float*)malloc(sizeof(float)*L_ODM8);
    if(sub_layer_8)     printf("sub_layer_8 allocated...\n");
    else                printf("allocation failed!\n");    

    float* input_layer_10 = (float*)malloc(sizeof(float)*L_IDM10);
    if(input_layer_10)  printf("input_layer_10 allocated...\n");
    else                printf("allocation failed!\n");
#endif
#if 1
    float* sub_layer_10 = (float*)malloc(sizeof(float)*L_ODM10);
    if(sub_layer_10)    printf("sub_layer_10 allocated...\n");
    else                printf("allocation failed!\n");    

    float* input_layer_12 = (float*)malloc(sizeof(float)*L_IDM12);
    if(input_layer_12)  printf("input_layer_12 allocated...\n");
    else                printf("allocation failed!\n");
#endif
#if 1
    float* input_layer_13 = (float*)malloc(sizeof(float)*L_IDM13);
    if(input_layer_13)  printf("input_layer_13 allocated...\n");
    else                printf("allocation failed!\n");
#endif
#if 1
    float* input_layer_14 = (float*)malloc(sizeof(float)*L_IDM14);
    if(input_layer_14)  printf("input_layer_14 allocated...\n");
    else                printf("allocation failed!\n");
#endif
    /*
    float* output_layer = (float*)malloc(sizeof(float)*L_ODM14);
    printf("output_layer\n");
    */

    float *net_output = NULL;
    float *net_weight = NULL;
    float *net_variance = NULL;
    float *net_mean = NULL;
    float *net_scales = NULL;
    float *net_bias = NULL;

    memcpy(input_layer_0, input, sizeof(float) * L_IDM0);
    printf("memcpy\n");

    net_output = net->layers[1].output;
    net_weight = net->layers[0].weights;
    net_variance = net->layers[0].rolling_variance;
    net_mean = net->layers[0].rolling_mean;
    net_scales = net->layers[0].scales;
    net_bias = net->layers[0].biases;

    conv_Layer0(input_layer_0, sub_layer_0, net_weight);
    printf("... conv_Layer0 completed...\n");
    sub_Layer0(sub_layer_0, input_layer_2, net_variance, net_mean, net_scales, net_bias);

#ifdef DEBUG_MODE_PRT_0
    int i = 0;
    for(i = 0; i < L_IDM2; i++){
        if(abs(input_layer_2[i] - net_output[i]) > 0.0001f){
            printf("maxpooling_2: input_layer_2[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_2[i], i, net_output[i]);
        }
    }
#endif
    printf("... sub_Layer0 completed...\n");
#if 1
    printf("freeing mems... ");
    free(input_layer_0);
    free(sub_layer_0);
    printf("completed!\n");
 
    net_output = net->layers[3].output;
    net_weight = net->layers[2].weights;
    net_variance = net->layers[2].rolling_variance;
    net_mean = net->layers[2].rolling_mean;
    net_scales = net->layers[2].scales;
    net_bias = net->layers[2].biases;

    conv_Layer2(input_layer_2, sub_layer_2, net_weight);
    printf("... conv_Layer2 completed...\n");
    sub_Layer2(sub_layer_2, input_layer_4, net_variance, net_mean, net_scales, net_bias);

    printf("... sub_Layer2 completed...\n");


#ifdef DEBUG_MODE_PRT_2
    for(i = 0; i < N_OCH2; i++){
        if(abs(weightConv_variance_2[i] - net_variance[i]) > 0.0001f){
            printf("maxpooling_4: weightConv_variance_2[%d]=%6.2f,\tnet_variance=[%d]=%6.2f\n", i, weightConv_variance_2[i], i, net_variance[i]);
        }
        if(abs(weightConv_mean_2[i] - net_mean[i]) > 0.0001f){
            printf("maxpooling_4: weightConv_mean_2[%d]=%6.2f,\tnet_mean=[%d]=%6.2f\n", i, weightConv_mean_2[i], i, net_mean[i]);
        }
        if(abs(weightConv_scales_2[i] - net_scales[i]) > 0.0001f){
            printf("maxpooling_4: weightConv_scales_2[%d]=%6.2f,\tnet_scales=[%d]=%6.2f\n", i, weightConv_scales_2[i], i, net_scales[i]);
        }
        if(abs(weightConv_bias_2[i] - net_bias[i]) > 0.0001f){
            printf("maxpooling_4: weightConv_bias_2[%d]=%6.2f,\tnet_bias=[%d]=%6.2f\n", i, weightConv_bias_2[i], i, net_bias[i]);
        }
    }
    for(i = 0; i < L_IDM4; i++){
        if(abs(input_layer_4[i] - net_output[i]) > 0.0001f){
            printf("maxpooling_4: input_layer_4[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_4[i], i, net_output[i]);
        }
    }
#endif

#endif
#if 1
    printf("freeing mems... ");
    free(input_layer_2);
    free(sub_layer_2);
    printf("completed!\n");

    conv_Layer4(input_layer_4, sub_layer_4);
    printf("... conv_Layer4 completed...\n");
    sub_Layer4(sub_layer_4, input_layer_6);
    printf("... sub_Layer4 completed...\n");

#ifdef DEBUG_MODE_PRT
    net_output = net->layers[5].output;
    for(i = 0; i < L_IDM6; i++){
        if(abs(input_layer_6[i] - net_output[i]) > 0.0001f){
            printf("maxpooling_6: input_layer_6[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_6[i], i, net_output[i]);
        }
    }
#endif
#endif
#if 1
    printf("freeing mems... ");
    free(input_layer_4);
    free(sub_layer_4);
    printf("completed!\n");    

    conv_Layer6(input_layer_6, sub_layer_6);
    printf("... conv_Layer6 completed...\n");
    sub_Layer6(sub_layer_6, input_layer_8);
    printf("... sub_Layer6 completed...\n");

#ifdef DEBUG_MODE_PRT
    net_output = net->layers[7].output;
    for(i = 0; i < L_IDM8; i++){
        if(abs(input_layer_8[i] - net_output[i]) > 0.0001f){
            printf("maxpooling_8: input_layer_8[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_8[i], i, net_output[i]);
        }
    }
#endif
#endif
#if 1
    printf("freeing mems... ");
    free(input_layer_6);
    free(sub_layer_6);
    printf("completed!\n");

    conv_Layer8(input_layer_8, sub_layer_8);
    printf("... conv_Layer8 completed...\n");
    sub_Layer8(sub_layer_8, input_layer_10);
    printf("... sub_Layer8 completed...\n");
#ifdef DEBUG_MODE_PRT
    net_output = net->layers[9].output;
    for(i = 0; i < L_IDM10; i++){
        if(abs(input_layer_10[i] - net_output[i]) > 0.0001f){
            printf("maxpooling_10: input_layer_10[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_10[i], i, net_output[i]);
        }
    }
#endif
#endif
#if 1
    printf("freeing mems... ");
    free(input_layer_8);
    free(sub_layer_8);
    printf("completed!\n");

    conv_Layer10(input_layer_10, sub_layer_10);
    printf("... conv_Layer10 completed...\n");
    sub_Layer10(sub_layer_10, input_layer_12);
    printf("... sub_Layer10 completed...\n");

#ifdef DEBUG_MODE_PRT
    net_output = net->layers[11].output;
    for(i = 0; i < L_IDM12; i++){
        if(abs(input_layer_12[i] - net_output[i]) > 0.0001f){
            printf("maxpooling_12: input_layer_12[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_12[i], i, net_output[i]);
        }
    }
#endif
#endif
#if 1
    conv_Layer12(input_layer_12, input_layer_13);
    printf("... conv_Layer12 completed...\n");

#ifdef DEBUG_MODE_PRT
    net_output = net->layers[12].output;
    for(i = 0; i < L_ODM12; i++){
        if(abs(input_layer_13[i] - net_output[i]) > 0.0001f){
            printf("conv_13: input_layer_13[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_13[i], i, net_output[i]);
        }
    }
#endif
#endif
#if 1
    conv_Layer13(input_layer_13, input_layer_14);
    printf("... conv_Layer13 completed...\n");

#ifdef DEBUG_MODE_PRT
    net_output = net->layers[13].output;
    for(i = 0; i < L_ODM13; i++){
        if(abs(input_layer_14[i] - net_output[i]) > 0.0001f){
            printf("conv_14: input_layer_14[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, input_layer_14[i], i, net_output[i]);
        }
    }
#endif
#endif
#if 1
    conv_Layer14(input_layer_14, output);
    printf("... conv_Layer14 completed...\n");
#ifdef DEBUG_MODE_PRT
    net_output = net->layers[14].output;
    for(i = 0; i < L_ODM14; i++){
        if(abs(output[i] - net_output[i]) > 0.0001f){
            printf("output: output[%d]=%6.2f,\tnet_output=[%d]=%6.2f\n", i, output[i], i, net_output[i]);
        }
    }
#endif
#endif
    /*
    conv_max_Layer2(input_layer_2, input_layer_4);
    printf("conv_max_Layer2\n");
    conv_max_Layer4(input_layer_4, input_layer_6);
    printf("conv_max_Layer4\n");
                                                                                                                                                     
    conv_max_Layer6(input_layer_6, input_layer_8);
    printf("conv_max_Layer6\n");
    conv_max_Layer8(input_layer_8, input_layer_10);
    printf("conv_max_Layer8\n");
    conv_max_Layer10(input_layer_10, input_layer_12);
    printf("conv_max_Layer10\n");

    conv_Layer12(input_layer_12, input_layer_13);
    printf("conv_Layer12\n");
    conv_Layer13(input_layer_13, input_layer_14);
    printf("conv_Layer13\n");
    conv_Layer14(input_layer_14, output_layer);
    printf("conv_Layer14\n");
    */
    
    // memcpy(output, output_layer, sizeof(float) * L_ODM14);

    printf("freeing mems... ");
    free(input_layer_10);
    free(sub_layer_10);
    free(input_layer_12);
    free(input_layer_13);
    free(input_layer_14);
    printf("completed!\n");

    printf("... end kernel...\n");
}
#endif
//////////////////////////////////////////////////////////////////////////////////////////

static int coco_ids[] = {1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19,20,21,22,23,24,25,27,28,31,32,33,34,35,36,37,38,39,40,41,42,43,44,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,67,70,72,73,74,75,76,77,78,79,80,81,82,84,85,86,87,88,89,90};

void train_detector(char *datacfg, char *cfgfile, char *weightfile, int *gpus, int ngpus, int clear)
{
    list *options = read_data_cfg(datacfg);
    char *train_images = option_find_str(options, "train", "data/train.list");
    char *backup_directory = option_find_str(options, "backup", "/backup/");

    srand(time(0));
    char *base = basecfg(cfgfile);
    printf("%s\n", base);
    float avg_loss = -1;
    network **nets = calloc(ngpus, sizeof(network));

    srand(time(0));
    int seed = rand();
    int i;
    for(i = 0; i < ngpus; ++i){
        srand(seed);
#ifdef GPU
        cuda_set_device(gpus[i]);
#endif
        nets[i] = load_network(cfgfile, weightfile, clear);
        nets[i]->learning_rate *= ngpus;
    }
    srand(time(0));
    network *net = nets[0];

    int imgs = net->batch * net->subdivisions * ngpus;
    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    data train, buffer;

    layer l = net->layers[net->n - 1];

    int classes = l.classes;
    float jitter = l.jitter;

    list *plist = get_paths(train_images);
    //int N = plist->size;
    char **paths = (char **)list_to_array(plist);

    load_args args = get_base_args(net);
    args.coords = l.coords;
    args.paths = paths;
    args.n = imgs;
    args.m = plist->size;
    args.classes = classes;
    args.jitter = jitter;
    args.num_boxes = l.max_boxes;
    args.d = &buffer;
    args.type = DETECTION_DATA;
    //args.type = INSTANCE_DATA;
    args.threads = 64;

    pthread_t load_thread = load_data(args);
    double time;
    int count = 0;
    //while(i*imgs < N*120){
    while(get_current_batch(net) < net->max_batches){
        if(l.random && count++%10 == 0){
            printf("Resizing\n");
            int dim = (rand() % 10 + 10) * 32;
            if (get_current_batch(net)+200 > net->max_batches) dim = 608;
            //int dim = (rand() % 4 + 16) * 32;
            printf("%d\n", dim);
            args.w = dim;
            args.h = dim;

            pthread_join(load_thread, 0);
            train = buffer;
            free_data(train);
            load_thread = load_data(args);

            for(i = 0; i < ngpus; ++i){
                resize_network(nets[i], dim, dim);
            }
            net = nets[0];
        }
        time=what_time_is_it_now();
        pthread_join(load_thread, 0);
        train = buffer;
        load_thread = load_data(args);

        /*
        int k;
        for(k = 0; k < l.max_boxes; ++k){
            box b = float_to_box(train.y.vals[10] + 1 + k*5);
            if(!b.x) break;
            printf("loaded: %f %f %f %f\n", b.x, b.y, b.w, b.h);
        }
        */
        /*
        int zz;
        for(zz = 0; zz < train.X.cols; ++zz){
            image im = float_to_image(net->w, net->h, 3, train.X.vals[zz]);
            int k;
            for(k = 0; k < l.max_boxes; ++k){
                box b = float_to_box(train.y.vals[zz] + k*5, 1);
                printf("%f %f %f %f\n", b.x, b.y, b.w, b.h);
                draw_bbox(im, b, 1, 1,0,0);
            }
            show_image(im, "truth11");
            cvWaitKey(0);
            save_image(im, "truth11");
        }
        */

        printf("Loaded: %lf seconds\n", what_time_is_it_now()-time);

        time=what_time_is_it_now();
        float loss = 0;
#ifdef GPU
        if(ngpus == 1){
            loss = train_network(net, train);
        } else {
            loss = train_networks(nets, ngpus, train, 4);
        }
#else
        loss = train_network(net, train);
#endif
        if (avg_loss < 0) avg_loss = loss;
        avg_loss = avg_loss*.9 + loss*.1;

        i = get_current_batch(net);
        printf("%ld: %f, %f avg, %f rate, %lf seconds, %d images\n", get_current_batch(net), loss, avg_loss, get_current_rate(net), what_time_is_it_now()-time, i*imgs);
        if(i%100==0){
#ifdef GPU
            if(ngpus != 1) sync_nets(nets, ngpus, 0);
#endif
            char buff[256];
            sprintf(buff, "%s/%s.backup", backup_directory, base);
            save_weights(net, buff);
        }
        if(i%10000==0 || (i < 1000 && i%100 == 0)){
#ifdef GPU
            if(ngpus != 1) sync_nets(nets, ngpus, 0);
#endif
            char buff[256];
            sprintf(buff, "%s/%s_%d.weights", backup_directory, base, i);
            save_weights(net, buff);
        }
        free_data(train);
    }
#ifdef GPU
    if(ngpus != 1) sync_nets(nets, ngpus, 0);
#endif
    char buff[256];
    sprintf(buff, "%s/%s_final.weights", backup_directory, base);
    save_weights(net, buff);
}


static int get_coco_image_id(char *filename)
{
    char *p = strrchr(filename, '_');
    return atoi(p+1);
}

static void print_cocos(FILE *fp, char *image_path, box *boxes, float **probs, int num_boxes, int classes, int w, int h)
{
    int i, j;
    int image_id = get_coco_image_id(image_path);
    for(i = 0; i < num_boxes; ++i){
        float xmin = boxes[i].x - boxes[i].w/2.;
        float xmax = boxes[i].x + boxes[i].w/2.;
        float ymin = boxes[i].y - boxes[i].h/2.;
        float ymax = boxes[i].y + boxes[i].h/2.;

        if (xmin < 0) xmin = 0;
        if (ymin < 0) ymin = 0;
        if (xmax > w) xmax = w;
        if (ymax > h) ymax = h;

        float bx = xmin;
        float by = ymin;
        float bw = xmax - xmin;
        float bh = ymax - ymin;

        for(j = 0; j < classes; ++j){
            if (probs[i][j]) fprintf(fp, "{\"image_id\":%d, \"category_id\":%d, \"bbox\":[%f, %f, %f, %f], \"score\":%f},\n", image_id, coco_ids[j], bx, by, bw, bh, probs[i][j]);
        }
    }
}

void print_detector_detections(FILE **fps, char *id, box *boxes, float **probs, int total, int classes, int w, int h)
{
    int i, j;
    for(i = 0; i < total; ++i){
        float xmin = boxes[i].x - boxes[i].w/2. + 1;
        float xmax = boxes[i].x + boxes[i].w/2. + 1;
        float ymin = boxes[i].y - boxes[i].h/2. + 1;
        float ymax = boxes[i].y + boxes[i].h/2. + 1;

        if (xmin < 1) xmin = 1;
        if (ymin < 1) ymin = 1;
        if (xmax > w) xmax = w;
        if (ymax > h) ymax = h;

        for(j = 0; j < classes; ++j){
            if (probs[i][j]) fprintf(fps[j], "%s %f %f %f %f %f\n", id, probs[i][j],
                    xmin, ymin, xmax, ymax);
        }
    }
}

void print_imagenet_detections(FILE *fp, int id, box *boxes, float **probs, int total, int classes, int w, int h)
{
    int i, j;
    for(i = 0; i < total; ++i){
        float xmin = boxes[i].x - boxes[i].w/2.;
        float xmax = boxes[i].x + boxes[i].w/2.;
        float ymin = boxes[i].y - boxes[i].h/2.;
        float ymax = boxes[i].y + boxes[i].h/2.;

        if (xmin < 0) xmin = 0;
        if (ymin < 0) ymin = 0;
        if (xmax > w) xmax = w;
        if (ymax > h) ymax = h;

        for(j = 0; j < classes; ++j){
            int class = j;
            if (probs[i][class]) fprintf(fp, "%d %d %f %f %f %f %f\n", id, j+1, probs[i][class],
                    xmin, ymin, xmax, ymax);
        }
    }
}

void validate_detector_flip(char *datacfg, char *cfgfile, char *weightfile, char *outfile)
{
    int j;
    list *options = read_data_cfg(datacfg);
    char *valid_images = option_find_str(options, "valid", "data/train.list");
    char *name_list = option_find_str(options, "names", "data/names.list");
    char *prefix = option_find_str(options, "results", "results");
    char **names = get_labels(name_list);
    char *mapf = option_find_str(options, "map", 0);
    int *map = 0;
    if (mapf) map = read_map(mapf);

    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 2);
    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    srand(time(0));

    list *plist = get_paths(valid_images);
    char **paths = (char **)list_to_array(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    char buff[1024];
    char *type = option_find_str(options, "eval", "voc");
    FILE *fp = 0;
    FILE **fps = 0;
    int coco = 0;
    int imagenet = 0;
    if(0==strcmp(type, "coco")){
        if(!outfile) outfile = "coco_results";
        snprintf(buff, 1024, "%s/%s.json", prefix, outfile);
        fp = fopen(buff, "w");
        fprintf(fp, "[\n");
        coco = 1;
    } else if(0==strcmp(type, "imagenet")){
        if(!outfile) outfile = "imagenet-detection";
        snprintf(buff, 1024, "%s/%s.txt", prefix, outfile);
        fp = fopen(buff, "w");
        imagenet = 1;
        classes = 200;
    } else {
        if(!outfile) outfile = "comp4_det_test_";
        fps = calloc(classes, sizeof(FILE *));
        for(j = 0; j < classes; ++j){
            snprintf(buff, 1024, "%s/%s%s.txt", prefix, outfile, names[j]);
            fps[j] = fopen(buff, "w");
        }
    }


    box *boxes = calloc(l.w*l.h*l.n, sizeof(box));
    float **probs = calloc(l.w*l.h*l.n, sizeof(float *));
    for(j = 0; j < l.w*l.h*l.n; ++j) probs[j] = calloc(classes+1, sizeof(float *));

    int m = plist->size;
    int i=0;
    int t;

    float thresh = .005;
    float nms = .45;

    int nthreads = 4;
    image *val = calloc(nthreads, sizeof(image));
    image *val_resized = calloc(nthreads, sizeof(image));
    image *buf = calloc(nthreads, sizeof(image));
    image *buf_resized = calloc(nthreads, sizeof(image));
    pthread_t *thr = calloc(nthreads, sizeof(pthread_t));

    image input = make_image(net->w, net->h, net->c*2);

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    //args.type = IMAGE_DATA;
    args.type = LETTERBOX_DATA;

    for(t = 0; t < nthreads; ++t){
        args.path = paths[i+t];
        args.im = &buf[t];
        args.resized = &buf_resized[t];
        thr[t] = load_data_in_thread(args);
    }
    double start = what_time_is_it_now();
    for(i = nthreads; i < m+nthreads; i += nthreads){
        fprintf(stderr, "%d\n", i);
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            pthread_join(thr[t], 0);
            val[t] = buf[t];
            val_resized[t] = buf_resized[t];
        }
        for(t = 0; t < nthreads && i+t < m; ++t){
            args.path = paths[i+t];
            args.im = &buf[t];
            args.resized = &buf_resized[t];
            thr[t] = load_data_in_thread(args);
        }
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            char *path = paths[i+t-nthreads];
            char *id = basecfg(path);
            copy_cpu(net->w*net->h*net->c, val_resized[t].data, 1, input.data, 1);
            flip_image(val_resized[t]);
            copy_cpu(net->w*net->h*net->c, val_resized[t].data, 1, input.data + net->w*net->h*net->c, 1);

            network_predict(net, input.data);
            int w = val[t].w;
            int h = val[t].h;
            get_region_boxes(l, w, h, net->w, net->h, thresh, probs, boxes, 0, 0, map, .5, 0);
            if (nms) do_nms_sort(boxes, probs, l.w*l.h*l.n, classes, nms);
            if (coco){
                print_cocos(fp, path, boxes, probs, l.w*l.h*l.n, classes, w, h);
            } else if (imagenet){
                print_imagenet_detections(fp, i+t-nthreads+1, boxes, probs, l.w*l.h*l.n, classes, w, h);
            } else {
                print_detector_detections(fps, id, boxes, probs, l.w*l.h*l.n, classes, w, h);
            }
            free(id);
            free_image(val[t]);
            free_image(val_resized[t]);
        }
    }
    for(j = 0; j < classes; ++j){
        if(fps) fclose(fps[j]);
    }
    if(coco){
        fseek(fp, -2, SEEK_CUR); 
        fprintf(fp, "\n]\n");
        fclose(fp);
    }
    fprintf(stderr, "Total Detection Time: %f Seconds\n", what_time_is_it_now() - start);
}


void validate_detector(char *datacfg, char *cfgfile, char *weightfile, char *outfile)
{
    int j;
    list *options = read_data_cfg(datacfg);
    char *valid_images = option_find_str(options, "valid", "data/train.list");
    char *name_list = option_find_str(options, "names", "data/names.list");
    char *prefix = option_find_str(options, "results", "results");
    char **names = get_labels(name_list);
    char *mapf = option_find_str(options, "map", 0);
    int *map = 0;
    if (mapf) map = read_map(mapf);

    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    srand(time(0));

    list *plist = get_paths(valid_images);
    char **paths = (char **)list_to_array(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    char buff[1024];
    char *type = option_find_str(options, "eval", "voc");
    FILE *fp = 0;
    FILE **fps = 0;
    int coco = 0;
    int imagenet = 0;
    if(0==strcmp(type, "coco")){
        if(!outfile) outfile = "coco_results";
        snprintf(buff, 1024, "%s/%s.json", prefix, outfile);
        fp = fopen(buff, "w");
        fprintf(fp, "[\n");
        coco = 1;
    } else if(0==strcmp(type, "imagenet")){
        if(!outfile) outfile = "imagenet-detection";
        snprintf(buff, 1024, "%s/%s.txt", prefix, outfile);
        fp = fopen(buff, "w");
        imagenet = 1;
        classes = 200;
    } else {
        if(!outfile) outfile = "comp4_det_test_";
        fps = calloc(classes, sizeof(FILE *));
        for(j = 0; j < classes; ++j){
            snprintf(buff, 1024, "%s/%s%s.txt", prefix, outfile, names[j]);
            fps[j] = fopen(buff, "w");
        }
    }


    box *boxes = calloc(l.w*l.h*l.n, sizeof(box));
    float **probs = calloc(l.w*l.h*l.n, sizeof(float *));
    for(j = 0; j < l.w*l.h*l.n; ++j) probs[j] = calloc(classes+1, sizeof(float *));

    int m = plist->size;
    int i=0;
    int t;

    float thresh = .005;
    float nms = .45;

    int nthreads = 4;
    image *val = calloc(nthreads, sizeof(image));
    image *val_resized = calloc(nthreads, sizeof(image));
    image *buf = calloc(nthreads, sizeof(image));
    image *buf_resized = calloc(nthreads, sizeof(image));
    pthread_t *thr = calloc(nthreads, sizeof(pthread_t));

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    //args.type = IMAGE_DATA;
    args.type = LETTERBOX_DATA;

    for(t = 0; t < nthreads; ++t){
        args.path = paths[i+t];
        args.im = &buf[t];
        args.resized = &buf_resized[t];
        thr[t] = load_data_in_thread(args);
    }
    double start = what_time_is_it_now();
    for(i = nthreads; i < m+nthreads; i += nthreads){
        fprintf(stderr, "%d\n", i);
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            pthread_join(thr[t], 0);
            val[t] = buf[t];
            val_resized[t] = buf_resized[t];
        }
        for(t = 0; t < nthreads && i+t < m; ++t){
            args.path = paths[i+t];
            args.im = &buf[t];
            args.resized = &buf_resized[t];
            thr[t] = load_data_in_thread(args);
        }
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            char *path = paths[i+t-nthreads];
            char *id = basecfg(path);
            float *X = val_resized[t].data;
            network_predict(net, X);
            int w = val[t].w;
            int h = val[t].h;
            get_region_boxes(l, w, h, net->w, net->h, thresh, probs, boxes, 0, 0, map, .5, 0);
            if (nms) do_nms_sort(boxes, probs, l.w*l.h*l.n, classes, nms);
            if (coco){
                print_cocos(fp, path, boxes, probs, l.w*l.h*l.n, classes, w, h);
            } else if (imagenet){
                print_imagenet_detections(fp, i+t-nthreads+1, boxes, probs, l.w*l.h*l.n, classes, w, h);
            } else {
                print_detector_detections(fps, id, boxes, probs, l.w*l.h*l.n, classes, w, h);
            }
            free(id);
            free_image(val[t]);
            free_image(val_resized[t]);
        }
    }
    for(j = 0; j < classes; ++j){
        if(fps) fclose(fps[j]);
    }
    if(coco){
        fseek(fp, -2, SEEK_CUR); 
        fprintf(fp, "\n]\n");
        fclose(fp);
    }
    fprintf(stderr, "Total Detection Time: %f Seconds\n", what_time_is_it_now() - start);
}

void validate_detector_recall(char *cfgfile, char *weightfile)
{
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    srand(time(0));

    list *plist = get_paths("data/coco_val_5k.list");
    char **paths = (char **)list_to_array(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    int j, k;
    box *boxes = calloc(l.w*l.h*l.n, sizeof(box));
    float **probs = calloc(l.w*l.h*l.n, sizeof(float *));
    for(j = 0; j < l.w*l.h*l.n; ++j) probs[j] = calloc(classes+1, sizeof(float *));

    int m = plist->size;
    int i=0;

    float thresh = .001;
    float iou_thresh = .5;
    float nms = .4;

    int total = 0;
    int correct = 0;
    int proposals = 0;
    float avg_iou = 0;

    for(i = 0; i < m; ++i){
        char *path = paths[i];
        image orig = load_image_color(path, 0, 0);
        image sized = resize_image(orig, net->w, net->h);
        char *id = basecfg(path);
        network_predict(net, sized.data);
        get_region_boxes(l, sized.w, sized.h, net->w, net->h, thresh, probs, boxes, 0, 1, 0, .5, 1);
        if (nms) do_nms(boxes, probs, l.w*l.h*l.n, 1, nms);

        char labelpath[4096];
        find_replace(path, "images", "labels", labelpath);
        find_replace(labelpath, "JPEGImages", "labels", labelpath);
        find_replace(labelpath, ".jpg", ".txt", labelpath);
        find_replace(labelpath, ".JPEG", ".txt", labelpath);

        int num_labels = 0;
        box_label *truth = read_boxes(labelpath, &num_labels);
        for(k = 0; k < l.w*l.h*l.n; ++k){
            if(probs[k][0] > thresh){
                ++proposals;
            }
        }
        for (j = 0; j < num_labels; ++j) {
            ++total;
            box t = {truth[j].x, truth[j].y, truth[j].w, truth[j].h};
            float best_iou = 0;
            for(k = 0; k < l.w*l.h*l.n; ++k){
                float iou = box_iou(boxes[k], t);
                if(probs[k][0] > thresh && iou > best_iou){
                    best_iou = iou;
                }
            }
            avg_iou += best_iou;
            if(best_iou > iou_thresh){
                ++correct;
            }
        }

        fprintf(stderr, "%5d %5d %5d\tRPs/Img: %.2f\tIOU: %.2f%%\tRecall:%.2f%%\n", i, correct, total, (float)proposals/(i+1), avg_iou*100/total, 100.*correct/total);
        free(id);
        free_image(orig);
        free_image(sized);
    }
}

void test_detector(char *datacfg, char *cfgfile, char *weightfile, char *filename, float thresh, float hier_thresh, char *outfile, int fullscreen)
{
#if 1
    list *options = read_data_cfg(datacfg);
    char *name_list = option_find_str(options, "names", "data/names.list");
    printf("name_list: %s\n", name_list);
    char **names = get_labels(name_list);

    image **alphabet = load_alphabet();
    network *net = load_network(cfgfile, weightfile, 0);
    
    set_batch_network(net, 1);
    srand(2222222);
    double time;
    char buff[256];
    char *input = buff;
    int j;
    float nms=.3;
    while(1){
        if(filename){
            strncpy(input, filename, 256);
        } else {
            printf("Enter Image Path: ");
            fflush(stdout);
            input = fgets(input, 256, stdin);
            if(!input) return;
            strtok(input, "\n");
        }
        image im = load_image_color(input,0,0);
        //printf("im.w: %d, im.h: %d\n", im.w, im.h);
        image sized = letterbox_image(im, net->w, net->h);
        //image sized = resize_image(im, net->w, net->h);
        //image sized2 = resize_max(im, net->w);
        //image sized = crop_image(sized2, -((net->w - sized2.w)/2), -((net->h - sized2.h)/2), net->w, net->h);
        //resize_network(net, sized.w, sized.h);
        layer l = net->layers[net->n-1];

        box *boxes = calloc(l.w*l.h*l.n, sizeof(box));
        float **probs = calloc(l.w*l.h*l.n, sizeof(float *));
        for(j = 0; j < l.w*l.h*l.n; ++j) probs[j] = calloc(l.classes + 1, sizeof(float *));
        float **masks = 0;
        if (l.coords > 4){
            masks = calloc(l.w*l.h*l.n, sizeof(float*));
            for(j = 0; j < l.w*l.h*l.n; ++j) masks[j] = calloc(l.coords-4, sizeof(float *));
        }

        float *X = sized.data;
        time=what_time_is_it_now();
        network_predict(net, X);
//        kernel(net, X, l.output);
        printf("%s: Predicted in %f seconds.\n", input, what_time_is_it_now()-time);
        get_region_boxes(l, im.w, im.h, net->w, net->h, thresh, probs, boxes, masks, 0, 0, hier_thresh, 1);
        //if (nms) do_nms_obj(boxes, probs, l.w*l.h*l.n, l.classes, nms);
        if (nms) do_nms_sort(boxes, probs, l.w*l.h*l.n, l.classes, nms);
        draw_detections(im, l.w*l.h*l.n, thresh, boxes, probs, masks, names, alphabet, l.classes);
        if(outfile){
            save_image(im, outfile);
        }
        else{
            save_image(im, "predictions");
#ifdef OPENCV
            cvNamedWindow("predictions", CV_WINDOW_NORMAL); 
            if(fullscreen){
                cvSetWindowProperty("predictions", CV_WND_PROP_FULLSCREEN, CV_WINDOW_FULLSCREEN);
            }
            show_image(im, "predictions");
            cvWaitKey(0);
            cvDestroyAllWindows();
#endif
        }

        free_image(im);
        free_image(sized);
        free(boxes);
        free_ptrs((void **)probs, l.w*l.h*l.n);
        printf("%s: Predicted in %f seconds.\n", input, what_time_is_it_now()-time);
        if (filename) break;
    }
    
#endif
#if 0
    printf("test code\n");

    float* fprod = (float*) calloc(2, sizeof(float));

    FILE* fp = fopen("test.output", "rb");

    fread(fprod, sizeof(float), 2, fp);

    fclose(fp);

    printf("fprod[0]: %.28f\n", fprod[0]);
    printf("fprod[1]: %.28f\n", fprod[1]);

    free(fprod);
#endif
}

void run_detector(int argc, char **argv)
{
    char *prefix = find_char_arg(argc, argv, "-prefix", 0);
    float thresh = find_float_arg(argc, argv, "-thresh", .24);
    float hier_thresh = find_float_arg(argc, argv, "-hier", .5);
    int cam_index = find_int_arg(argc, argv, "-c", 0);
    int frame_skip = find_int_arg(argc, argv, "-s", 0);
    int avg = find_int_arg(argc, argv, "-avg", 3);
    if(argc < 4){
        fprintf(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }
    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
    char *outfile = find_char_arg(argc, argv, "-out", 0);
    int *gpus = 0;
    int gpu = 0;
    int ngpus = 0;
    if(gpu_list){
        printf("%s\n", gpu_list);
        int len = strlen(gpu_list);
        ngpus = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (gpu_list[i] == ',') ++ngpus;
        }
        gpus = calloc(ngpus, sizeof(int));
        for(i = 0; i < ngpus; ++i){
            gpus[i] = atoi(gpu_list);
            gpu_list = strchr(gpu_list, ',')+1;
        }
    } else {
        gpu = gpu_index;
        gpus = &gpu;
        ngpus = 1;
    }

    int clear = find_arg(argc, argv, "-clear");
    int fullscreen = find_arg(argc, argv, "-fullscreen");
    int width = find_int_arg(argc, argv, "-w", 0);
    int height = find_int_arg(argc, argv, "-h", 0);
    int fps = find_int_arg(argc, argv, "-fps", 0);

    char *datacfg = argv[3];
    char *cfg = argv[4];
    char *weights = (argc > 5) ? argv[5] : 0;
    char *filename = (argc > 6) ? argv[6]: 0;
    if(0==strcmp(argv[2], "test")) test_detector(datacfg, cfg, weights, filename, thresh, hier_thresh, outfile, fullscreen);
    else if(0==strcmp(argv[2], "train")) train_detector(datacfg, cfg, weights, gpus, ngpus, clear);
    else if(0==strcmp(argv[2], "valid")) validate_detector(datacfg, cfg, weights, outfile);
    else if(0==strcmp(argv[2], "valid2")) validate_detector_flip(datacfg, cfg, weights, outfile);
    else if(0==strcmp(argv[2], "recall")) validate_detector_recall(cfg, weights);
    else if(0==strcmp(argv[2], "demo")) {
        list *options = read_data_cfg(datacfg);
        int classes = option_find_int(options, "classes", 20);
        char *name_list = option_find_str(options, "names", "data/names.list");
        char **names = get_labels(name_list);
        demo(cfg, weights, thresh, cam_index, filename, names, classes, frame_skip, prefix, avg, hier_thresh, width, height, fps, fullscreen);
    }
}
