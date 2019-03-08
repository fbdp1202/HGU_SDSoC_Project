// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Mar  8 14:15:03 2019
// Host        : sdsoc-Z97X-UD3H running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/vivado/prj/prj.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_0/zed_proc_sys_reset_3_0_stub.v
// Design      : zed_proc_sys_reset_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "proc_sys_reset,Vivado 2018.2" *)
module zed_proc_sys_reset_3_0(slowest_sync_clk, ext_reset_in, aux_reset_in, 
  mb_debug_sys_rst, dcm_locked, mb_reset, bus_struct_reset, peripheral_reset, 
  interconnect_aresetn, peripheral_aresetn)
/* synthesis syn_black_box black_box_pad_pin="slowest_sync_clk,ext_reset_in,aux_reset_in,mb_debug_sys_rst,dcm_locked,mb_reset,bus_struct_reset[0:0],peripheral_reset[0:0],interconnect_aresetn[0:0],peripheral_aresetn[0:0]" */;
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
endmodule
