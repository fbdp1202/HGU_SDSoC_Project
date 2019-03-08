# This script segment is generated automatically by AutoPilot

set id 133
set name a0_cal_gemm_fadd_32nbkb
set corename simcore_fadd
set op fadd
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 165
set name a0_cal_gemm_fmul_32ncud
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name lout_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_0 \
    op interface \
    ports { lout_0_address0 { O 8 vector } lout_0_ce0 { O 1 bit } lout_0_q0 { I 32 vector } lout_0_address1 { O 8 vector } lout_0_ce1 { O 1 bit } lout_0_we1 { O 1 bit } lout_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name lout_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_1 \
    op interface \
    ports { lout_1_address0 { O 8 vector } lout_1_ce0 { O 1 bit } lout_1_q0 { I 32 vector } lout_1_address1 { O 8 vector } lout_1_ce1 { O 1 bit } lout_1_we1 { O 1 bit } lout_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name lout_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_2 \
    op interface \
    ports { lout_2_address0 { O 8 vector } lout_2_ce0 { O 1 bit } lout_2_q0 { I 32 vector } lout_2_address1 { O 8 vector } lout_2_ce1 { O 1 bit } lout_2_we1 { O 1 bit } lout_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name lout_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_3 \
    op interface \
    ports { lout_3_address0 { O 8 vector } lout_3_ce0 { O 1 bit } lout_3_q0 { I 32 vector } lout_3_address1 { O 8 vector } lout_3_ce1 { O 1 bit } lout_3_we1 { O 1 bit } lout_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name lout_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_4 \
    op interface \
    ports { lout_4_address0 { O 8 vector } lout_4_ce0 { O 1 bit } lout_4_q0 { I 32 vector } lout_4_address1 { O 8 vector } lout_4_ce1 { O 1 bit } lout_4_we1 { O 1 bit } lout_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name lout_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_5 \
    op interface \
    ports { lout_5_address0 { O 8 vector } lout_5_ce0 { O 1 bit } lout_5_q0 { I 32 vector } lout_5_address1 { O 8 vector } lout_5_ce1 { O 1 bit } lout_5_we1 { O 1 bit } lout_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name lout_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_6 \
    op interface \
    ports { lout_6_address0 { O 8 vector } lout_6_ce0 { O 1 bit } lout_6_q0 { I 32 vector } lout_6_address1 { O 8 vector } lout_6_ce1 { O 1 bit } lout_6_we1 { O 1 bit } lout_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name lout_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_7 \
    op interface \
    ports { lout_7_address0 { O 8 vector } lout_7_ce0 { O 1 bit } lout_7_q0 { I 32 vector } lout_7_address1 { O 8 vector } lout_7_ce1 { O 1 bit } lout_7_we1 { O 1 bit } lout_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name lout_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_8 \
    op interface \
    ports { lout_8_address0 { O 8 vector } lout_8_ce0 { O 1 bit } lout_8_q0 { I 32 vector } lout_8_address1 { O 8 vector } lout_8_ce1 { O 1 bit } lout_8_we1 { O 1 bit } lout_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name lout_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_9 \
    op interface \
    ports { lout_9_address0 { O 8 vector } lout_9_ce0 { O 1 bit } lout_9_q0 { I 32 vector } lout_9_address1 { O 8 vector } lout_9_ce1 { O 1 bit } lout_9_we1 { O 1 bit } lout_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name lout_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_10 \
    op interface \
    ports { lout_10_address0 { O 8 vector } lout_10_ce0 { O 1 bit } lout_10_q0 { I 32 vector } lout_10_address1 { O 8 vector } lout_10_ce1 { O 1 bit } lout_10_we1 { O 1 bit } lout_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name lout_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_11 \
    op interface \
    ports { lout_11_address0 { O 8 vector } lout_11_ce0 { O 1 bit } lout_11_q0 { I 32 vector } lout_11_address1 { O 8 vector } lout_11_ce1 { O 1 bit } lout_11_we1 { O 1 bit } lout_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name lout_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_12 \
    op interface \
    ports { lout_12_address0 { O 8 vector } lout_12_ce0 { O 1 bit } lout_12_q0 { I 32 vector } lout_12_address1 { O 8 vector } lout_12_ce1 { O 1 bit } lout_12_we1 { O 1 bit } lout_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name lout_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_13 \
    op interface \
    ports { lout_13_address0 { O 8 vector } lout_13_ce0 { O 1 bit } lout_13_q0 { I 32 vector } lout_13_address1 { O 8 vector } lout_13_ce1 { O 1 bit } lout_13_we1 { O 1 bit } lout_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name lout_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_14 \
    op interface \
    ports { lout_14_address0 { O 8 vector } lout_14_ce0 { O 1 bit } lout_14_q0 { I 32 vector } lout_14_address1 { O 8 vector } lout_14_ce1 { O 1 bit } lout_14_we1 { O 1 bit } lout_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name lout_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_15 \
    op interface \
    ports { lout_15_address0 { O 8 vector } lout_15_ce0 { O 1 bit } lout_15_q0 { I 32 vector } lout_15_address1 { O 8 vector } lout_15_ce1 { O 1 bit } lout_15_we1 { O 1 bit } lout_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name lout_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_16 \
    op interface \
    ports { lout_16_address0 { O 8 vector } lout_16_ce0 { O 1 bit } lout_16_q0 { I 32 vector } lout_16_address1 { O 8 vector } lout_16_ce1 { O 1 bit } lout_16_we1 { O 1 bit } lout_16_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name lout_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_17 \
    op interface \
    ports { lout_17_address0 { O 8 vector } lout_17_ce0 { O 1 bit } lout_17_q0 { I 32 vector } lout_17_address1 { O 8 vector } lout_17_ce1 { O 1 bit } lout_17_we1 { O 1 bit } lout_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name lout_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_18 \
    op interface \
    ports { lout_18_address0 { O 8 vector } lout_18_ce0 { O 1 bit } lout_18_q0 { I 32 vector } lout_18_address1 { O 8 vector } lout_18_ce1 { O 1 bit } lout_18_we1 { O 1 bit } lout_18_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name lout_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_19 \
    op interface \
    ports { lout_19_address0 { O 8 vector } lout_19_ce0 { O 1 bit } lout_19_q0 { I 32 vector } lout_19_address1 { O 8 vector } lout_19_ce1 { O 1 bit } lout_19_we1 { O 1 bit } lout_19_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name lout_20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_20 \
    op interface \
    ports { lout_20_address0 { O 8 vector } lout_20_ce0 { O 1 bit } lout_20_q0 { I 32 vector } lout_20_address1 { O 8 vector } lout_20_ce1 { O 1 bit } lout_20_we1 { O 1 bit } lout_20_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name lout_21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_21 \
    op interface \
    ports { lout_21_address0 { O 8 vector } lout_21_ce0 { O 1 bit } lout_21_q0 { I 32 vector } lout_21_address1 { O 8 vector } lout_21_ce1 { O 1 bit } lout_21_we1 { O 1 bit } lout_21_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name lout_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_22 \
    op interface \
    ports { lout_22_address0 { O 8 vector } lout_22_ce0 { O 1 bit } lout_22_q0 { I 32 vector } lout_22_address1 { O 8 vector } lout_22_ce1 { O 1 bit } lout_22_we1 { O 1 bit } lout_22_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name lout_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_23 \
    op interface \
    ports { lout_23_address0 { O 8 vector } lout_23_ce0 { O 1 bit } lout_23_q0 { I 32 vector } lout_23_address1 { O 8 vector } lout_23_ce1 { O 1 bit } lout_23_we1 { O 1 bit } lout_23_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name lout_24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_24 \
    op interface \
    ports { lout_24_address0 { O 8 vector } lout_24_ce0 { O 1 bit } lout_24_q0 { I 32 vector } lout_24_address1 { O 8 vector } lout_24_ce1 { O 1 bit } lout_24_we1 { O 1 bit } lout_24_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name lout_25 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_25 \
    op interface \
    ports { lout_25_address0 { O 8 vector } lout_25_ce0 { O 1 bit } lout_25_q0 { I 32 vector } lout_25_address1 { O 8 vector } lout_25_ce1 { O 1 bit } lout_25_we1 { O 1 bit } lout_25_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name lout_26 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_26 \
    op interface \
    ports { lout_26_address0 { O 8 vector } lout_26_ce0 { O 1 bit } lout_26_q0 { I 32 vector } lout_26_address1 { O 8 vector } lout_26_ce1 { O 1 bit } lout_26_we1 { O 1 bit } lout_26_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name lout_27 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_27 \
    op interface \
    ports { lout_27_address0 { O 8 vector } lout_27_ce0 { O 1 bit } lout_27_q0 { I 32 vector } lout_27_address1 { O 8 vector } lout_27_ce1 { O 1 bit } lout_27_we1 { O 1 bit } lout_27_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name lout_28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_28 \
    op interface \
    ports { lout_28_address0 { O 8 vector } lout_28_ce0 { O 1 bit } lout_28_q0 { I 32 vector } lout_28_address1 { O 8 vector } lout_28_ce1 { O 1 bit } lout_28_we1 { O 1 bit } lout_28_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name lout_29 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_29 \
    op interface \
    ports { lout_29_address0 { O 8 vector } lout_29_ce0 { O 1 bit } lout_29_q0 { I 32 vector } lout_29_address1 { O 8 vector } lout_29_ce1 { O 1 bit } lout_29_we1 { O 1 bit } lout_29_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name lout_30 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_30 \
    op interface \
    ports { lout_30_address0 { O 8 vector } lout_30_ce0 { O 1 bit } lout_30_q0 { I 32 vector } lout_30_address1 { O 8 vector } lout_30_ce1 { O 1 bit } lout_30_we1 { O 1 bit } lout_30_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name lout_31 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_31 \
    op interface \
    ports { lout_31_address0 { O 8 vector } lout_31_ce0 { O 1 bit } lout_31_q0 { I 32 vector } lout_31_address1 { O 8 vector } lout_31_ce1 { O 1 bit } lout_31_we1 { O 1 bit } lout_31_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name la_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_0 \
    op interface \
    ports { la_0_address0 { O 8 vector } la_0_ce0 { O 1 bit } la_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name la_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_1 \
    op interface \
    ports { la_1_address0 { O 8 vector } la_1_ce0 { O 1 bit } la_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name la_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_2 \
    op interface \
    ports { la_2_address0 { O 8 vector } la_2_ce0 { O 1 bit } la_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name la_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_3 \
    op interface \
    ports { la_3_address0 { O 8 vector } la_3_ce0 { O 1 bit } la_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name la_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_4 \
    op interface \
    ports { la_4_address0 { O 8 vector } la_4_ce0 { O 1 bit } la_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name la_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_5 \
    op interface \
    ports { la_5_address0 { O 8 vector } la_5_ce0 { O 1 bit } la_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name la_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_6 \
    op interface \
    ports { la_6_address0 { O 8 vector } la_6_ce0 { O 1 bit } la_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name la_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_7 \
    op interface \
    ports { la_7_address0 { O 8 vector } la_7_ce0 { O 1 bit } la_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name la_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_8 \
    op interface \
    ports { la_8_address0 { O 8 vector } la_8_ce0 { O 1 bit } la_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name la_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_9 \
    op interface \
    ports { la_9_address0 { O 8 vector } la_9_ce0 { O 1 bit } la_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name la_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_10 \
    op interface \
    ports { la_10_address0 { O 8 vector } la_10_ce0 { O 1 bit } la_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name la_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_11 \
    op interface \
    ports { la_11_address0 { O 8 vector } la_11_ce0 { O 1 bit } la_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
    name la_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_12 \
    op interface \
    ports { la_12_address0 { O 8 vector } la_12_ce0 { O 1 bit } la_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name la_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_13 \
    op interface \
    ports { la_13_address0 { O 8 vector } la_13_ce0 { O 1 bit } la_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 246 \
    name la_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_14 \
    op interface \
    ports { la_14_address0 { O 8 vector } la_14_ce0 { O 1 bit } la_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name la_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_15 \
    op interface \
    ports { la_15_address0 { O 8 vector } la_15_ce0 { O 1 bit } la_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name la_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_16 \
    op interface \
    ports { la_16_address0 { O 8 vector } la_16_ce0 { O 1 bit } la_16_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name la_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_17 \
    op interface \
    ports { la_17_address0 { O 8 vector } la_17_ce0 { O 1 bit } la_17_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name la_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_18 \
    op interface \
    ports { la_18_address0 { O 8 vector } la_18_ce0 { O 1 bit } la_18_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name la_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_19 \
    op interface \
    ports { la_19_address0 { O 8 vector } la_19_ce0 { O 1 bit } la_19_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name la_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_20 \
    op interface \
    ports { la_20_address0 { O 8 vector } la_20_ce0 { O 1 bit } la_20_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name la_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_21 \
    op interface \
    ports { la_21_address0 { O 8 vector } la_21_ce0 { O 1 bit } la_21_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name la_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_22 \
    op interface \
    ports { la_22_address0 { O 8 vector } la_22_ce0 { O 1 bit } la_22_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name la_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_23 \
    op interface \
    ports { la_23_address0 { O 8 vector } la_23_ce0 { O 1 bit } la_23_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name la_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_24 \
    op interface \
    ports { la_24_address0 { O 8 vector } la_24_ce0 { O 1 bit } la_24_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name la_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_25 \
    op interface \
    ports { la_25_address0 { O 8 vector } la_25_ce0 { O 1 bit } la_25_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name la_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_26 \
    op interface \
    ports { la_26_address0 { O 8 vector } la_26_ce0 { O 1 bit } la_26_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name la_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_27 \
    op interface \
    ports { la_27_address0 { O 8 vector } la_27_ce0 { O 1 bit } la_27_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name la_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_28 \
    op interface \
    ports { la_28_address0 { O 8 vector } la_28_ce0 { O 1 bit } la_28_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name la_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_29 \
    op interface \
    ports { la_29_address0 { O 8 vector } la_29_ce0 { O 1 bit } la_29_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name la_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_30 \
    op interface \
    ports { la_30_address0 { O 8 vector } la_30_ce0 { O 1 bit } la_30_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name la_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_31 \
    op interface \
    ports { la_31_address0 { O 8 vector } la_31_ce0 { O 1 bit } la_31_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name inStream1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inStream1_V \
    op interface \
    ports { inStream1_V_dout { I 32 vector } inStream1_V_empty_n { I 1 bit } inStream1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


