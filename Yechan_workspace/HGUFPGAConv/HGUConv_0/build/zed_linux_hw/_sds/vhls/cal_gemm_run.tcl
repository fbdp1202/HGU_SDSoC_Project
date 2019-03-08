open_project cal_gemm
set_top cal_gemm
add_files /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src/kernel.cpp -cflags "-I/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/libs/sds_utils -Wall -O3 -Wno-unused-label -Wall -Wno-unused-result -Wno-unknown-pragmas -Wfatal-errors -fPIC -DSDSOC -D __SDSCC__ -m32 -D HLS_NO_XIL_FPO_LIB -I /opt/Xilinx/SDx/2018.2/target/aarch32-linux/include -I/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/src -D __SDSVHLS__ -D __SDSVHLS_SYNTHESIS__ -I /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 10.000000
set_clock_uncertainty 27.0%
config_rtl -reset_level low
source /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/vhls/cal_gemm.tcl
# end synthesis directives
config_rtl -prefix a0_
csynth_design
export_design -ipname cal_gemm -acc
exit
