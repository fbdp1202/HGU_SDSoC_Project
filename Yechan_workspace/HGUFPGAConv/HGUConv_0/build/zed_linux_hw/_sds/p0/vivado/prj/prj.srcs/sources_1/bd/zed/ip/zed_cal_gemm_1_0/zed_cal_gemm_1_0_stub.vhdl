-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Mar  8 14:17:49 2019
-- Host        : sdsoc-Z97X-UD3H running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/vivado/prj/prj.srcs/sources_1/bd/zed/ip/zed_cal_gemm_1_0/zed_cal_gemm_1_0_stub.vhdl
-- Design      : zed_cal_gemm_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zed_cal_gemm_1_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_empty_n : in STD_LOGIC;
    A_read : out STD_LOGIC;
    B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B_empty_n : in STD_LOGIC;
    B_read : out STD_LOGIC;
    C_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    C_full_n : in STD_LOGIC;
    C_write : out STD_LOGIC
  );

end zed_cal_gemm_1_0;

architecture stub of zed_cal_gemm_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,A_dout[31:0],A_empty_n,A_read,B_dout[31:0],B_empty_n,B_read,C_din[31:0],C_full_n,C_write";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "a0_cal_gemm,Vivado 2018.2";
begin
end;
