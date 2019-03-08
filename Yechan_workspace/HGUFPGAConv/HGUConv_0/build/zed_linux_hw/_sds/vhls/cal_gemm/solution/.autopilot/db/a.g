#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/vhls/cal_gemm/solution/.autopilot/db/a.g.bc ${1+"$@"}
