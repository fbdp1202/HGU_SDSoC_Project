#include "kernel.h"
#include <hls_stream.h>



    // readA: for (int itr = 0, i = 0, j = 0; itr < 32*144; itr++, j++) {
    // #pragma HLS PIPELINE
    //     if (j == 144) { j = 0; i++; }
    //     la[i][j] = A[itr];
    // }

void read_A(float *A, float la[32][144]){
    for (int itr = 0, i = 0, j = 0; itr < 32*144; itr++, j++) {
    #pragma HLS PIPELINE
        if (j == 144) { j = 0; i++; }
        la[i][j] = A[itr];
    }
}

// void read_A(float *A, float la[32][144]){
// 	int i, j, k;
//     for(i = 0, k = 0; i < 32; i++, k+=144){
//         for(j = 0; j < 144; j++){
// #pragma HLS PIPELINE
//             la[i][j] = A[k+j];
//         }
//     }
// }

void out_initial(float lout[32][169]){
    for (int i = 0, j = 0; i < 32; j++) {
    #pragma HLS PIPELINE
        if (j == 169) { j = 0; i++; }
        lout[i][j] = 0;
    }
}

// void write_out(float lout[32][169], float *C){
//     for(int itr=0, w = 0, i=0; itr < 32*169; itr++, i++){
//         #pragma HLS PIPELINE
//             if (i == 32) { i = 0; w++; }
//             C[itr] = lout[i][w];
//     }
// }

void write_out(float lout[32][169], float *C){
	int w,z,i;
	for(w = 0, z = 0; w < 32; w++){
        for(i = 0; i < 169; i++, z++){
        #pragma HLS PIPELINE
            C[z] = lout[w][i];
        }
    }
}

void cal_initial(float *A, float la[32][144], float lout[32][169]){
	#pragma HLS dataflow
	out_initial(lout);
	read_A(A, la);
}

void read_B(float *B, hls::stream<float> &inStream){
#pragma HLS INLINE
    for(int i = 0; i < 144*169; i++){
	#pragma HLS PIPELINE
    	inStream << B[i];
    }
}

void calulation(hls::stream<float> &inStream1,
                float la[32][144],
                float lout[32][169]){
    #pragma HLS dataflow
    for(int ia = 0; ia < 144; ia++){
        for(int j = 0; j < 169; j++){
        #pragma HLS DEPENDENCE variable=lout inter false
        #pragma HLS PIPELINE
            float rb1 = inStream1.read();
            for(int w = 0; w < 32; w++){
                lout[w][j] = lout[w][j] + la[w][ia] * rb1;
            }
        }
    }
}

void stream_cal(float la[32][144],
                float *B,
                float lout[32][169]){
    hls::stream<float> inStream1;
    #pragma HLS STREAM variable=inStream1  depth=128
	
	#pragma HLS dataflow
    read_B(B, inStream1);
    calulation(inStream1, la, lout);
}

#pragma SDS data sys_port( A:ACP,\
                           B:ACP,\
                           C:ACP)
#pragma SDS data data_mover( A:AXIDMA_SIMPLE, \
                             B:AXIDMA_SIMPLE,\
                             C:AXIDMA_SIMPLE)
#pragma SDS data mem_attribute( A:PHYSICAL_CONTIGUOUS,\
                                B:PHYSICAL_CONTIGUOUS,\
                                C:PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern( A:SEQUENTIAL,\
                                 B:SEQUENTIAL,\
                                 C:SEQUENTIAL)
#pragma SDS data copy( A[0:32*144],\
                       B[0:144*169],\
                       C[0:32*169])
void cal_gemm(float *A, float *B, float *C){
    float la[32][144];
	#pragma HLS ARRAY_PARTITION variable=la dim=1 complete
//    #pragma HLS ARRAY_PARTITION variable=la dim=2 block factor=2

    float lout[32][169];
    #pragma HLS ARRAY_PARTITION variable=lout dim=1 complete

// initialize
    cal_initial(A, la, lout);
    stream_cal(la, B, lout);
	write_out(lout, C);
// calculation
}
