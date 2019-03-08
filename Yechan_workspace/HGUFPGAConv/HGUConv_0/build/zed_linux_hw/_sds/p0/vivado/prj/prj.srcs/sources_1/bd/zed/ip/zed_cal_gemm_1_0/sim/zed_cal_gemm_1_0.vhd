-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:cal_gemm:1.0
-- IP Revision: 1903081410

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zed_cal_gemm_1_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    A_empty_n : IN STD_LOGIC;
    A_read : OUT STD_LOGIC;
    B_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    B_empty_n : IN STD_LOGIC;
    B_read : OUT STD_LOGIC;
    C_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    C_full_n : IN STD_LOGIC;
    C_write : OUT STD_LOGIC
  );
END zed_cal_gemm_1_0;

ARCHITECTURE zed_cal_gemm_1_0_arch OF zed_cal_gemm_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zed_cal_gemm_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT a0_cal_gemm IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      A_empty_n : IN STD_LOGIC;
      A_read : OUT STD_LOGIC;
      B_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      B_empty_n : IN STD_LOGIC;
      B_read : OUT STD_LOGIC;
      C_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_full_n : IN STD_LOGIC;
      C_write : OUT STD_LOGIC
    );
  END COMPONENT a0_cal_gemm;
  ATTRIBUTE SDX_KERNEL : STRING;
  ATTRIBUTE SDX_KERNEL OF a0_cal_gemm: COMPONENT IS "true";
  ATTRIBUTE SDX_KERNEL_TYPE : STRING;
  ATTRIBUTE SDX_KERNEL_TYPE OF a0_cal_gemm: COMPONENT IS "hls";
  ATTRIBUTE SDX_KERNEL_SIM_INST : STRING;
  ATTRIBUTE SDX_KERNEL_SIM_INST OF a0_cal_gemm: COMPONENT IS "U0";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zed_cal_gemm_1_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF C_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 C WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF C_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 C FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF C_din: SIGNAL IS "XIL_INTERFACENAME C, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 24}}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency" & 
" {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF C_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 C WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF B_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 B RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF B_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 B EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF B_dout: SIGNAL IS "XIL_INTERFACENAME B, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 24}}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependenc" & 
"y {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF B_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 B RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF A_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 A RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF A_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 A EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF A_dout: SIGNAL IS "XIL_INTERFACENAME A, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 24}}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependenc" & 
"y {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF A_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 A RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : a0_cal_gemm
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      A_dout => A_dout,
      A_empty_n => A_empty_n,
      A_read => A_read,
      B_dout => B_dout,
      B_empty_n => B_empty_n,
      B_read => B_read,
      C_din => C_din,
      C_full_n => C_full_n,
      C_write => C_write
    );
END zed_cal_gemm_1_0_arch;
