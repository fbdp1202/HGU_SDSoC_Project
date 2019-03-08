// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Mar  8 14:17:48 2019
// Host        : sdsoc-Z97X-UD3H running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/vivado/prj/prj.srcs/sources_1/bd/zed/ip/zed_cal_gemm_1_0/zed_cal_gemm_1_0_stub.v
// Design      : zed_cal_gemm_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "a0_cal_gemm,Vivado 2018.2" *)
module zed_cal_gemm_1_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, A_dout, A_empty_n, A_read, B_dout, B_empty_n, B_read, C_din, C_full_n, C_write)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,A_dout[31:0],A_empty_n,A_read,B_dout[31:0],B_empty_n,B_read,C_din[31:0],C_full_n,C_write" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]A_dout;
  input A_empty_n;
  output A_read;
  input [31:0]B_dout;
  input B_empty_n;
  output B_read;
  output [31:0]C_din;
  input C_full_n;
  output C_write;
endmodule
