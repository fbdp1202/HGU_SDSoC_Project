# 1 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp"
# 1 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 154 "<built-in>" 3
# 1 "<command line>" 1
# 12 "<command line>"
# 1 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 157 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 13 "<command line>" 2
# 1 "<built-in>" 2
# 1 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp" 2
# 1 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.h" 1




extern "C" {


void cal_gemm(float *A, float *B, float *C);


}
# 2 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp" 2
# 1 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/hls_stream.h" 1
# 66 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/hls_stream.h"
# 1 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/etc/autopilot_enum.h" 1
# 58 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/etc/autopilot_enum.h"
enum SsdmDataTypes {
    _ssdm_sc_int = 0,
    _ssdm_c_int = _ssdm_sc_int,
    _ssdm_sc_uint = 1,
    _ssdm_c_uint = _ssdm_sc_uint,
    _ssdm_sc_bigint = 2,
    _ssdm_sc_biguint = 3,
};



enum SsdmPortTypes {
    _ssdm_sc_in = 0,
    _ssdm_sc_out = 1,
    _ssdm_sc_inout = 2,
    _ssdm_sc_in_clk,

    _ssdm_fifo_in,
    _ssdm_sc_fifo_in = _ssdm_fifo_in,
    _ssdm_tlm_fifo_in = _ssdm_fifo_in,
    _ssdm_fifo_out,
    _ssdm_sc_fifo_out = _ssdm_fifo_out,
    _ssdm_tlm_fifo_out = _ssdm_fifo_out,
    _ssdm_fifo_inout,
    _ssdm_sc_fifo_inout = _ssdm_fifo_inout,
    _ssdm_tlm_fifo_inout = _ssdm_fifo_inout,
    _ssdm_sc_bus,
    _ssdm_hls_bus_port = _ssdm_sc_bus,
    _ssdm_AXI4M_bus_port = _ssdm_sc_bus,
    _ssdm_port_end,
};



enum SsdmProcessTypes {
    _ssdm_method = 0,
    _ssdm_sc_method = _ssdm_method,
    _ssdm_thread = 1,
    _ssdm_sc_thread = _ssdm_thread,
    _ssdm_cthread = 2,
    _ssdm_sc_cthread = _ssdm_cthread,
    _ssdm_process_end,
};



enum SsdmSensitiveTypes {
    _ssdm_sensitive = 0,
    _ssdm_sensitive_pos,
    _ssdm_sensitive_neg,
    _ssdm_sensitive_reset0,
    _ssdm_sensitive_reset1,
    _ssdm_sensitive_end,
};



enum SsdmChannelTypes {
    _ssdm_sc_sig,
    _ssdm_fifo,
    _ssdm_sc_fifo = _ssdm_fifo,
    _ssdm_mem_fifo,
    _ssdm_sc_mem_fifo = _ssdm_mem_fifo,
};


enum SsdmRegionTypes {
    _ssdm_region_reset,
    _ssdm_region_protocol,
    _ssdm_region_pipeline,
    _ssdm_region_parallel,
};
# 67 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/hls_stream.h" 2


namespace hls {
# 78 "/opt/Xilinx/Vivado/2018.2/common/technology/autopilot/hls_stream.h"
template<typename __STREAM_T__>
class stream
{
  public:

    inline __attribute__((always_inline)) stream() {
    }

    inline __attribute__((always_inline)) stream(const char* name) {
    }


  private:
    inline __attribute__((always_inline)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }

    inline __attribute__((always_inline)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }

  public:

    inline __attribute__((always_inline)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }

    inline __attribute__((always_inline)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }


  public:

    inline __attribute__((always_inline)) bool empty() const {
        bool tmp = _ssdm_StreamCanRead(&V);
        return !tmp;
    }

    inline __attribute__((always_inline)) bool full() const {
        bool tmp = _ssdm_StreamCanWrite(&V);
        return !tmp;
    }


    inline __attribute__((always_inline)) void read(__STREAM_T__& dout) {

        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        dout = tmp;



    }

    inline __attribute__((always_inline)) __STREAM_T__ read() {

        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        return tmp;





    }


    inline __attribute__((always_inline)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        bool empty_n = _ssdm_StreamNbRead(&V, &tmp);
        dout = tmp;
        return empty_n;
    }


    inline __attribute__((always_inline)) void write(const __STREAM_T__& din) {

        __STREAM_T__ tmp = din;
        _ssdm_StreamWrite(&V, &tmp);



    }


    inline __attribute__((always_inline)) bool write_nb(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        bool full_n = _ssdm_StreamNbWrite(&V, &tmp);
        return full_n;
    }


    inline __attribute__((always_inline)) unsigned size() {
        unsigned size = _ssdm_StreamSize(&V);
        return size;
    }

  public:
    __STREAM_T__ V;
};


}
# 3 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp" 2

void read_A(float *A, float la[32][144]){_ssdm_SpecArrayDimSize(la, 32);
 int i, j, k;
    for(i = 0, k = 0; i < 32; i++, k+=144){
        for(j = 0; j < 144; j++){
#pragma HLS PIPELINE
 la[i][j] = A[k+j];
        }
    }
}

void out_initial(float lout[32][169]){_ssdm_SpecArrayDimSize(lout, 32);
 int i,j;
 for(j = 0; j < 169; j++){
#pragma HLS PIPELINE
 for(i = 0; i < 32; i++){
            lout[i][j] = 0;
        }
    }
}

void write_out(float lout[32][169], float *C){_ssdm_SpecArrayDimSize(lout, 32);
 int w,z,i;
 for(w = 0, z = 0; w < 32; w++){
        for(i = 0; i < 169; i++, z++){
#pragma HLS PIPELINE
 C[z] = lout[w][i];
        }
    }
}

void cal_initial(float *A, float la[32][144], float lout[32][169]){_ssdm_SpecArrayDimSize(la, 32);_ssdm_SpecArrayDimSize(lout, 32);
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
                float lout[32][169]){_ssdm_SpecArrayDimSize(la, 32);_ssdm_SpecArrayDimSize(lout, 32);
#pragma HLS dataflow
 int ia;
    for(ia = 0; ia < 144; ia++){
        for(int j = 0; j < 169; j++){
#pragma HLS DEPENDENCE variable=&lout inter false
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
                float lout[32][169]){_ssdm_SpecArrayDimSize(la, 32);_ssdm_SpecArrayDimSize(lout, 32);
    hls::stream<float> inStream1;
#pragma HLS STREAM variable=&inStream1 depth=128

#pragma HLS dataflow
 read_B(B, inStream1);
    calulation(inStream1, la, lout);
}

#pragma SDS data sys_port( A:ACP, B:ACP, C:ACP)


#pragma SDS data data_mover( A:AXIDMA_SIMPLE, B:AXIDMA_SIMPLE, C:AXIDMA_SIMPLE)


#pragma SDS data mem_attribute( A:PHYSICAL_CONTIGUOUS, B:PHYSICAL_CONTIGUOUS, C:PHYSICAL_CONTIGUOUS)


#pragma SDS data access_pattern( A:SEQUENTIAL, B:SEQUENTIAL, C:SEQUENTIAL)


#pragma SDS data copy( A[0:32*144], B[0:144*169], C[0:32*169])


void cal_gemm(float *A, float *B, float *C){
#pragma HLS INTERFACE ap_fifo port=&A
# 92 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp"

#pragma HLS INTERFACE ap_fifo port=&B
# 92 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp"

#pragma HLS INTERFACE ap_fifo port=&C
# 92 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp"

#pragma HLS LATENCY min=1
# 92 "/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp"

    float la[32][144];
#pragma HLS ARRAY_PARTITION variable=&la dim=1 complete


 float lout[32][169];
#pragma HLS ARRAY_PARTITION variable=&lout dim=1 complete


 cal_initial(A, la, lout);
    stream_cal(la, B, lout);
 write_out(lout, C);

}
