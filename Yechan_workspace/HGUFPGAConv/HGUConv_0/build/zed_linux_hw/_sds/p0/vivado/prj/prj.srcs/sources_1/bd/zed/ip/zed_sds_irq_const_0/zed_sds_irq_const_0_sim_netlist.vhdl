-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Mar  8 14:19:55 2019
-- Host        : sdsoc-Z97X-UD3H running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/vivado/prj/prj.srcs/sources_1/bd/zed/ip/zed_sds_irq_const_0/zed_sds_irq_const_0_sim_netlist.vhdl
-- Design      : zed_sds_irq_const_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_sds_irq_const_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zed_sds_irq_const_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zed_sds_irq_const_0 : entity is "zed_sds_irq_const_0,xlconstant_v1_1_5_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zed_sds_irq_const_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zed_sds_irq_const_0 : entity is "xlconstant_v1_1_5_xlconstant,Vivado 2018.2";
end zed_sds_irq_const_0;

architecture STRUCTURE of zed_sds_irq_const_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
