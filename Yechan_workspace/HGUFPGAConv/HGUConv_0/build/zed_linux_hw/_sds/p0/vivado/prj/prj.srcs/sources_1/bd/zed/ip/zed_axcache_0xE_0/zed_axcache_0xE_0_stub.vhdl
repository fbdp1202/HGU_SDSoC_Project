-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Mar  8 14:17:32 2019
-- Host        : sdsoc-Z97X-UD3H running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/vivado/prj/prj.srcs/sources_1/bd/zed/ip/zed_axcache_0xE_0/zed_axcache_0xE_0_stub.vhdl
-- Design      : zed_axcache_0xE_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zed_axcache_0xE_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end zed_axcache_0xE_0;

architecture stub of zed_axcache_0xE_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_5_xlconstant,Vivado 2018.2";
begin
end;
