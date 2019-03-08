#include "kernel.h"
#include <hls_stream.h>

void read_A(float *A, float la[32][144]){
	int i, j, k;
    for(i = 0, k = 0; i < 32; i++, k+=144){
        for(j = 0; j < 144; j++){
#pragma HLS PIPELINE
            la[i][j] = A[k+j];
        }
    }
}

void out_initial(float lout[32][169]){
	int i,j;
	for(j = 0; j < 169; j++){
    #pragma HLS PIPELINE
        for(i = 0; i < 32; i++){
            lout[i][j] = 0;
        }
    }
}

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
	int i;
    for(i = 0; i < 144*169; i++){
	#pragma HLS PIPELINE
    	inStream << B[i];
    }
}

void calulation(hls::stream<float> &inStream1,
                float la[32][144],
                float lout[32][169]){
    #pragma HLS dataflow
	int ia;
    for(ia = 0; ia < 144; ia++){
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

#include "cf_stub.h"
#ifdef __cplusplus
extern "C" {
#endif
void _p0_cal_gemm_1_noasync(float * A, float * B, float * C);
#ifdef __cplusplus
}
#endif
void _p0_cal_gemm_1_noasync(float * A, float * B, float * C)
{
  int start_seq[1];
  start_seq[0] = 0;
  cf_request_handle_t _p0_swinst_cal_gemm_1_cmd;
  cf_send_i(&(_p0_swinst_cal_gemm_1.cmd_cal_gemm), start_seq, 1 * sizeof(int), &_p0_swinst_cal_gemm_1_cmd);
  cf_wait(_p0_swinst_cal_gemm_1_cmd);

  cf_send_i(&(_p0_swinst_cal_gemm_1.A), A, (32*144) * 4, &_p0_request_0);
  cf_send_i(&(_p0_swinst_cal_gemm_1.B), B, (144*169) * 4, &_p0_request_1);

  cf_receive_i(&(_p0_swinst_cal_gemm_1.C), C, (32*169) * 4, &_p0_cal_gemm_1_noasync_num_C, &_p0_request_2);

  cf_wait(_p0_request_0);
  cf_wait(_p0_request_1);
  cf_wait(_p0_request_2);
}


