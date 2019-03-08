// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Mar  8 14:17:32 2019
// Host        : sdsoc-Z97X-UD3H running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/vivado/prj/prj.srcs/sources_1/bd/zed/ip/zed_axcache_0xE_0/zed_axcache_0xE_0_stub.v
// Design      : zed_axcache_0xE_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.2" *)
module zed_axcache_0xE_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[3:0]" */;
  output [3:0]dout;
endmodule
