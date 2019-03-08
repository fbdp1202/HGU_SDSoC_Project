# This script segment is generated automatically by AutoPilot

# FIFO definition:
set ID 329
set FifoName a0_fifo_w32_d128_A
set InstName inStream1_V_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 128
set DataWd 32
set AddrWd 7
set FullThresh 0
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
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
    id 330 \
    name la_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_0 \
    op interface \
    ports { la_0_address0 { O 8 vector } la_0_ce0 { O 1 bit } la_0_d0 { O 32 vector } la_0_q0 { I 32 vector } la_0_we0 { O 1 bit } la_0_address1 { O 8 vector } la_0_ce1 { O 1 bit } la_0_d1 { O 32 vector } la_0_q1 { I 32 vector } la_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name la_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_1 \
    op interface \
    ports { la_1_address0 { O 8 vector } la_1_ce0 { O 1 bit } la_1_d0 { O 32 vector } la_1_q0 { I 32 vector } la_1_we0 { O 1 bit } la_1_address1 { O 8 vector } la_1_ce1 { O 1 bit } la_1_d1 { O 32 vector } la_1_q1 { I 32 vector } la_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name la_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_2 \
    op interface \
    ports { la_2_address0 { O 8 vector } la_2_ce0 { O 1 bit } la_2_d0 { O 32 vector } la_2_q0 { I 32 vector } la_2_we0 { O 1 bit } la_2_address1 { O 8 vector } la_2_ce1 { O 1 bit } la_2_d1 { O 32 vector } la_2_q1 { I 32 vector } la_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name la_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_3 \
    op interface \
    ports { la_3_address0 { O 8 vector } la_3_ce0 { O 1 bit } la_3_d0 { O 32 vector } la_3_q0 { I 32 vector } la_3_we0 { O 1 bit } la_3_address1 { O 8 vector } la_3_ce1 { O 1 bit } la_3_d1 { O 32 vector } la_3_q1 { I 32 vector } la_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name la_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_4 \
    op interface \
    ports { la_4_address0 { O 8 vector } la_4_ce0 { O 1 bit } la_4_d0 { O 32 vector } la_4_q0 { I 32 vector } la_4_we0 { O 1 bit } la_4_address1 { O 8 vector } la_4_ce1 { O 1 bit } la_4_d1 { O 32 vector } la_4_q1 { I 32 vector } la_4_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name la_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_5 \
    op interface \
    ports { la_5_address0 { O 8 vector } la_5_ce0 { O 1 bit } la_5_d0 { O 32 vector } la_5_q0 { I 32 vector } la_5_we0 { O 1 bit } la_5_address1 { O 8 vector } la_5_ce1 { O 1 bit } la_5_d1 { O 32 vector } la_5_q1 { I 32 vector } la_5_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name la_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_6 \
    op interface \
    ports { la_6_address0 { O 8 vector } la_6_ce0 { O 1 bit } la_6_d0 { O 32 vector } la_6_q0 { I 32 vector } la_6_we0 { O 1 bit } la_6_address1 { O 8 vector } la_6_ce1 { O 1 bit } la_6_d1 { O 32 vector } la_6_q1 { I 32 vector } la_6_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name la_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_7 \
    op interface \
    ports { la_7_address0 { O 8 vector } la_7_ce0 { O 1 bit } la_7_d0 { O 32 vector } la_7_q0 { I 32 vector } la_7_we0 { O 1 bit } la_7_address1 { O 8 vector } la_7_ce1 { O 1 bit } la_7_d1 { O 32 vector } la_7_q1 { I 32 vector } la_7_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name la_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_8 \
    op interface \
    ports { la_8_address0 { O 8 vector } la_8_ce0 { O 1 bit } la_8_d0 { O 32 vector } la_8_q0 { I 32 vector } la_8_we0 { O 1 bit } la_8_address1 { O 8 vector } la_8_ce1 { O 1 bit } la_8_d1 { O 32 vector } la_8_q1 { I 32 vector } la_8_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name la_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_9 \
    op interface \
    ports { la_9_address0 { O 8 vector } la_9_ce0 { O 1 bit } la_9_d0 { O 32 vector } la_9_q0 { I 32 vector } la_9_we0 { O 1 bit } la_9_address1 { O 8 vector } la_9_ce1 { O 1 bit } la_9_d1 { O 32 vector } la_9_q1 { I 32 vector } la_9_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name la_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_10 \
    op interface \
    ports { la_10_address0 { O 8 vector } la_10_ce0 { O 1 bit } la_10_d0 { O 32 vector } la_10_q0 { I 32 vector } la_10_we0 { O 1 bit } la_10_address1 { O 8 vector } la_10_ce1 { O 1 bit } la_10_d1 { O 32 vector } la_10_q1 { I 32 vector } la_10_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name la_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_11 \
    op interface \
    ports { la_11_address0 { O 8 vector } la_11_ce0 { O 1 bit } la_11_d0 { O 32 vector } la_11_q0 { I 32 vector } la_11_we0 { O 1 bit } la_11_address1 { O 8 vector } la_11_ce1 { O 1 bit } la_11_d1 { O 32 vector } la_11_q1 { I 32 vector } la_11_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name la_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_12 \
    op interface \
    ports { la_12_address0 { O 8 vector } la_12_ce0 { O 1 bit } la_12_d0 { O 32 vector } la_12_q0 { I 32 vector } la_12_we0 { O 1 bit } la_12_address1 { O 8 vector } la_12_ce1 { O 1 bit } la_12_d1 { O 32 vector } la_12_q1 { I 32 vector } la_12_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name la_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_13 \
    op interface \
    ports { la_13_address0 { O 8 vector } la_13_ce0 { O 1 bit } la_13_d0 { O 32 vector } la_13_q0 { I 32 vector } la_13_we0 { O 1 bit } la_13_address1 { O 8 vector } la_13_ce1 { O 1 bit } la_13_d1 { O 32 vector } la_13_q1 { I 32 vector } la_13_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name la_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_14 \
    op interface \
    ports { la_14_address0 { O 8 vector } la_14_ce0 { O 1 bit } la_14_d0 { O 32 vector } la_14_q0 { I 32 vector } la_14_we0 { O 1 bit } la_14_address1 { O 8 vector } la_14_ce1 { O 1 bit } la_14_d1 { O 32 vector } la_14_q1 { I 32 vector } la_14_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name la_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_15 \
    op interface \
    ports { la_15_address0 { O 8 vector } la_15_ce0 { O 1 bit } la_15_d0 { O 32 vector } la_15_q0 { I 32 vector } la_15_we0 { O 1 bit } la_15_address1 { O 8 vector } la_15_ce1 { O 1 bit } la_15_d1 { O 32 vector } la_15_q1 { I 32 vector } la_15_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name la_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_16 \
    op interface \
    ports { la_16_address0 { O 8 vector } la_16_ce0 { O 1 bit } la_16_d0 { O 32 vector } la_16_q0 { I 32 vector } la_16_we0 { O 1 bit } la_16_address1 { O 8 vector } la_16_ce1 { O 1 bit } la_16_d1 { O 32 vector } la_16_q1 { I 32 vector } la_16_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name la_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_17 \
    op interface \
    ports { la_17_address0 { O 8 vector } la_17_ce0 { O 1 bit } la_17_d0 { O 32 vector } la_17_q0 { I 32 vector } la_17_we0 { O 1 bit } la_17_address1 { O 8 vector } la_17_ce1 { O 1 bit } la_17_d1 { O 32 vector } la_17_q1 { I 32 vector } la_17_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name la_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_18 \
    op interface \
    ports { la_18_address0 { O 8 vector } la_18_ce0 { O 1 bit } la_18_d0 { O 32 vector } la_18_q0 { I 32 vector } la_18_we0 { O 1 bit } la_18_address1 { O 8 vector } la_18_ce1 { O 1 bit } la_18_d1 { O 32 vector } la_18_q1 { I 32 vector } la_18_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name la_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_19 \
    op interface \
    ports { la_19_address0 { O 8 vector } la_19_ce0 { O 1 bit } la_19_d0 { O 32 vector } la_19_q0 { I 32 vector } la_19_we0 { O 1 bit } la_19_address1 { O 8 vector } la_19_ce1 { O 1 bit } la_19_d1 { O 32 vector } la_19_q1 { I 32 vector } la_19_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name la_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_20 \
    op interface \
    ports { la_20_address0 { O 8 vector } la_20_ce0 { O 1 bit } la_20_d0 { O 32 vector } la_20_q0 { I 32 vector } la_20_we0 { O 1 bit } la_20_address1 { O 8 vector } la_20_ce1 { O 1 bit } la_20_d1 { O 32 vector } la_20_q1 { I 32 vector } la_20_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name la_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_21 \
    op interface \
    ports { la_21_address0 { O 8 vector } la_21_ce0 { O 1 bit } la_21_d0 { O 32 vector } la_21_q0 { I 32 vector } la_21_we0 { O 1 bit } la_21_address1 { O 8 vector } la_21_ce1 { O 1 bit } la_21_d1 { O 32 vector } la_21_q1 { I 32 vector } la_21_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name la_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_22 \
    op interface \
    ports { la_22_address0 { O 8 vector } la_22_ce0 { O 1 bit } la_22_d0 { O 32 vector } la_22_q0 { I 32 vector } la_22_we0 { O 1 bit } la_22_address1 { O 8 vector } la_22_ce1 { O 1 bit } la_22_d1 { O 32 vector } la_22_q1 { I 32 vector } la_22_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name la_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_23 \
    op interface \
    ports { la_23_address0 { O 8 vector } la_23_ce0 { O 1 bit } la_23_d0 { O 32 vector } la_23_q0 { I 32 vector } la_23_we0 { O 1 bit } la_23_address1 { O 8 vector } la_23_ce1 { O 1 bit } la_23_d1 { O 32 vector } la_23_q1 { I 32 vector } la_23_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name la_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_24 \
    op interface \
    ports { la_24_address0 { O 8 vector } la_24_ce0 { O 1 bit } la_24_d0 { O 32 vector } la_24_q0 { I 32 vector } la_24_we0 { O 1 bit } la_24_address1 { O 8 vector } la_24_ce1 { O 1 bit } la_24_d1 { O 32 vector } la_24_q1 { I 32 vector } la_24_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name la_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_25 \
    op interface \
    ports { la_25_address0 { O 8 vector } la_25_ce0 { O 1 bit } la_25_d0 { O 32 vector } la_25_q0 { I 32 vector } la_25_we0 { O 1 bit } la_25_address1 { O 8 vector } la_25_ce1 { O 1 bit } la_25_d1 { O 32 vector } la_25_q1 { I 32 vector } la_25_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name la_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_26 \
    op interface \
    ports { la_26_address0 { O 8 vector } la_26_ce0 { O 1 bit } la_26_d0 { O 32 vector } la_26_q0 { I 32 vector } la_26_we0 { O 1 bit } la_26_address1 { O 8 vector } la_26_ce1 { O 1 bit } la_26_d1 { O 32 vector } la_26_q1 { I 32 vector } la_26_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name la_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_27 \
    op interface \
    ports { la_27_address0 { O 8 vector } la_27_ce0 { O 1 bit } la_27_d0 { O 32 vector } la_27_q0 { I 32 vector } la_27_we0 { O 1 bit } la_27_address1 { O 8 vector } la_27_ce1 { O 1 bit } la_27_d1 { O 32 vector } la_27_q1 { I 32 vector } la_27_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 358 \
    name la_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_28 \
    op interface \
    ports { la_28_address0 { O 8 vector } la_28_ce0 { O 1 bit } la_28_d0 { O 32 vector } la_28_q0 { I 32 vector } la_28_we0 { O 1 bit } la_28_address1 { O 8 vector } la_28_ce1 { O 1 bit } la_28_d1 { O 32 vector } la_28_q1 { I 32 vector } la_28_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 359 \
    name la_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_29 \
    op interface \
    ports { la_29_address0 { O 8 vector } la_29_ce0 { O 1 bit } la_29_d0 { O 32 vector } la_29_q0 { I 32 vector } la_29_we0 { O 1 bit } la_29_address1 { O 8 vector } la_29_ce1 { O 1 bit } la_29_d1 { O 32 vector } la_29_q1 { I 32 vector } la_29_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 360 \
    name la_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_30 \
    op interface \
    ports { la_30_address0 { O 8 vector } la_30_ce0 { O 1 bit } la_30_d0 { O 32 vector } la_30_q0 { I 32 vector } la_30_we0 { O 1 bit } la_30_address1 { O 8 vector } la_30_ce1 { O 1 bit } la_30_d1 { O 32 vector } la_30_q1 { I 32 vector } la_30_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name la_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename la_31 \
    op interface \
    ports { la_31_address0 { O 8 vector } la_31_ce0 { O 1 bit } la_31_d0 { O 32 vector } la_31_q0 { I 32 vector } la_31_we0 { O 1 bit } la_31_address1 { O 8 vector } la_31_ce1 { O 1 bit } la_31_d1 { O 32 vector } la_31_q1 { I 32 vector } la_31_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'la_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name lout_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_0 \
    op interface \
    ports { lout_0_address0 { O 8 vector } lout_0_ce0 { O 1 bit } lout_0_d0 { O 32 vector } lout_0_q0 { I 32 vector } lout_0_we0 { O 1 bit } lout_0_address1 { O 8 vector } lout_0_ce1 { O 1 bit } lout_0_d1 { O 32 vector } lout_0_q1 { I 32 vector } lout_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 364 \
    name lout_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_1 \
    op interface \
    ports { lout_1_address0 { O 8 vector } lout_1_ce0 { O 1 bit } lout_1_d0 { O 32 vector } lout_1_q0 { I 32 vector } lout_1_we0 { O 1 bit } lout_1_address1 { O 8 vector } lout_1_ce1 { O 1 bit } lout_1_d1 { O 32 vector } lout_1_q1 { I 32 vector } lout_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 365 \
    name lout_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_2 \
    op interface \
    ports { lout_2_address0 { O 8 vector } lout_2_ce0 { O 1 bit } lout_2_d0 { O 32 vector } lout_2_q0 { I 32 vector } lout_2_we0 { O 1 bit } lout_2_address1 { O 8 vector } lout_2_ce1 { O 1 bit } lout_2_d1 { O 32 vector } lout_2_q1 { I 32 vector } lout_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 366 \
    name lout_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_3 \
    op interface \
    ports { lout_3_address0 { O 8 vector } lout_3_ce0 { O 1 bit } lout_3_d0 { O 32 vector } lout_3_q0 { I 32 vector } lout_3_we0 { O 1 bit } lout_3_address1 { O 8 vector } lout_3_ce1 { O 1 bit } lout_3_d1 { O 32 vector } lout_3_q1 { I 32 vector } lout_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name lout_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_4 \
    op interface \
    ports { lout_4_address0 { O 8 vector } lout_4_ce0 { O 1 bit } lout_4_d0 { O 32 vector } lout_4_q0 { I 32 vector } lout_4_we0 { O 1 bit } lout_4_address1 { O 8 vector } lout_4_ce1 { O 1 bit } lout_4_d1 { O 32 vector } lout_4_q1 { I 32 vector } lout_4_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 368 \
    name lout_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_5 \
    op interface \
    ports { lout_5_address0 { O 8 vector } lout_5_ce0 { O 1 bit } lout_5_d0 { O 32 vector } lout_5_q0 { I 32 vector } lout_5_we0 { O 1 bit } lout_5_address1 { O 8 vector } lout_5_ce1 { O 1 bit } lout_5_d1 { O 32 vector } lout_5_q1 { I 32 vector } lout_5_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 369 \
    name lout_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_6 \
    op interface \
    ports { lout_6_address0 { O 8 vector } lout_6_ce0 { O 1 bit } lout_6_d0 { O 32 vector } lout_6_q0 { I 32 vector } lout_6_we0 { O 1 bit } lout_6_address1 { O 8 vector } lout_6_ce1 { O 1 bit } lout_6_d1 { O 32 vector } lout_6_q1 { I 32 vector } lout_6_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 370 \
    name lout_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_7 \
    op interface \
    ports { lout_7_address0 { O 8 vector } lout_7_ce0 { O 1 bit } lout_7_d0 { O 32 vector } lout_7_q0 { I 32 vector } lout_7_we0 { O 1 bit } lout_7_address1 { O 8 vector } lout_7_ce1 { O 1 bit } lout_7_d1 { O 32 vector } lout_7_q1 { I 32 vector } lout_7_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 371 \
    name lout_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_8 \
    op interface \
    ports { lout_8_address0 { O 8 vector } lout_8_ce0 { O 1 bit } lout_8_d0 { O 32 vector } lout_8_q0 { I 32 vector } lout_8_we0 { O 1 bit } lout_8_address1 { O 8 vector } lout_8_ce1 { O 1 bit } lout_8_d1 { O 32 vector } lout_8_q1 { I 32 vector } lout_8_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 372 \
    name lout_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_9 \
    op interface \
    ports { lout_9_address0 { O 8 vector } lout_9_ce0 { O 1 bit } lout_9_d0 { O 32 vector } lout_9_q0 { I 32 vector } lout_9_we0 { O 1 bit } lout_9_address1 { O 8 vector } lout_9_ce1 { O 1 bit } lout_9_d1 { O 32 vector } lout_9_q1 { I 32 vector } lout_9_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 373 \
    name lout_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_10 \
    op interface \
    ports { lout_10_address0 { O 8 vector } lout_10_ce0 { O 1 bit } lout_10_d0 { O 32 vector } lout_10_q0 { I 32 vector } lout_10_we0 { O 1 bit } lout_10_address1 { O 8 vector } lout_10_ce1 { O 1 bit } lout_10_d1 { O 32 vector } lout_10_q1 { I 32 vector } lout_10_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 374 \
    name lout_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_11 \
    op interface \
    ports { lout_11_address0 { O 8 vector } lout_11_ce0 { O 1 bit } lout_11_d0 { O 32 vector } lout_11_q0 { I 32 vector } lout_11_we0 { O 1 bit } lout_11_address1 { O 8 vector } lout_11_ce1 { O 1 bit } lout_11_d1 { O 32 vector } lout_11_q1 { I 32 vector } lout_11_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 375 \
    name lout_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_12 \
    op interface \
    ports { lout_12_address0 { O 8 vector } lout_12_ce0 { O 1 bit } lout_12_d0 { O 32 vector } lout_12_q0 { I 32 vector } lout_12_we0 { O 1 bit } lout_12_address1 { O 8 vector } lout_12_ce1 { O 1 bit } lout_12_d1 { O 32 vector } lout_12_q1 { I 32 vector } lout_12_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 376 \
    name lout_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_13 \
    op interface \
    ports { lout_13_address0 { O 8 vector } lout_13_ce0 { O 1 bit } lout_13_d0 { O 32 vector } lout_13_q0 { I 32 vector } lout_13_we0 { O 1 bit } lout_13_address1 { O 8 vector } lout_13_ce1 { O 1 bit } lout_13_d1 { O 32 vector } lout_13_q1 { I 32 vector } lout_13_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 377 \
    name lout_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_14 \
    op interface \
    ports { lout_14_address0 { O 8 vector } lout_14_ce0 { O 1 bit } lout_14_d0 { O 32 vector } lout_14_q0 { I 32 vector } lout_14_we0 { O 1 bit } lout_14_address1 { O 8 vector } lout_14_ce1 { O 1 bit } lout_14_d1 { O 32 vector } lout_14_q1 { I 32 vector } lout_14_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 378 \
    name lout_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_15 \
    op interface \
    ports { lout_15_address0 { O 8 vector } lout_15_ce0 { O 1 bit } lout_15_d0 { O 32 vector } lout_15_q0 { I 32 vector } lout_15_we0 { O 1 bit } lout_15_address1 { O 8 vector } lout_15_ce1 { O 1 bit } lout_15_d1 { O 32 vector } lout_15_q1 { I 32 vector } lout_15_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 379 \
    name lout_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_16 \
    op interface \
    ports { lout_16_address0 { O 8 vector } lout_16_ce0 { O 1 bit } lout_16_d0 { O 32 vector } lout_16_q0 { I 32 vector } lout_16_we0 { O 1 bit } lout_16_address1 { O 8 vector } lout_16_ce1 { O 1 bit } lout_16_d1 { O 32 vector } lout_16_q1 { I 32 vector } lout_16_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 380 \
    name lout_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_17 \
    op interface \
    ports { lout_17_address0 { O 8 vector } lout_17_ce0 { O 1 bit } lout_17_d0 { O 32 vector } lout_17_q0 { I 32 vector } lout_17_we0 { O 1 bit } lout_17_address1 { O 8 vector } lout_17_ce1 { O 1 bit } lout_17_d1 { O 32 vector } lout_17_q1 { I 32 vector } lout_17_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 381 \
    name lout_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_18 \
    op interface \
    ports { lout_18_address0 { O 8 vector } lout_18_ce0 { O 1 bit } lout_18_d0 { O 32 vector } lout_18_q0 { I 32 vector } lout_18_we0 { O 1 bit } lout_18_address1 { O 8 vector } lout_18_ce1 { O 1 bit } lout_18_d1 { O 32 vector } lout_18_q1 { I 32 vector } lout_18_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 382 \
    name lout_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_19 \
    op interface \
    ports { lout_19_address0 { O 8 vector } lout_19_ce0 { O 1 bit } lout_19_d0 { O 32 vector } lout_19_q0 { I 32 vector } lout_19_we0 { O 1 bit } lout_19_address1 { O 8 vector } lout_19_ce1 { O 1 bit } lout_19_d1 { O 32 vector } lout_19_q1 { I 32 vector } lout_19_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 383 \
    name lout_20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_20 \
    op interface \
    ports { lout_20_address0 { O 8 vector } lout_20_ce0 { O 1 bit } lout_20_d0 { O 32 vector } lout_20_q0 { I 32 vector } lout_20_we0 { O 1 bit } lout_20_address1 { O 8 vector } lout_20_ce1 { O 1 bit } lout_20_d1 { O 32 vector } lout_20_q1 { I 32 vector } lout_20_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 384 \
    name lout_21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_21 \
    op interface \
    ports { lout_21_address0 { O 8 vector } lout_21_ce0 { O 1 bit } lout_21_d0 { O 32 vector } lout_21_q0 { I 32 vector } lout_21_we0 { O 1 bit } lout_21_address1 { O 8 vector } lout_21_ce1 { O 1 bit } lout_21_d1 { O 32 vector } lout_21_q1 { I 32 vector } lout_21_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 385 \
    name lout_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_22 \
    op interface \
    ports { lout_22_address0 { O 8 vector } lout_22_ce0 { O 1 bit } lout_22_d0 { O 32 vector } lout_22_q0 { I 32 vector } lout_22_we0 { O 1 bit } lout_22_address1 { O 8 vector } lout_22_ce1 { O 1 bit } lout_22_d1 { O 32 vector } lout_22_q1 { I 32 vector } lout_22_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 386 \
    name lout_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_23 \
    op interface \
    ports { lout_23_address0 { O 8 vector } lout_23_ce0 { O 1 bit } lout_23_d0 { O 32 vector } lout_23_q0 { I 32 vector } lout_23_we0 { O 1 bit } lout_23_address1 { O 8 vector } lout_23_ce1 { O 1 bit } lout_23_d1 { O 32 vector } lout_23_q1 { I 32 vector } lout_23_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 387 \
    name lout_24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_24 \
    op interface \
    ports { lout_24_address0 { O 8 vector } lout_24_ce0 { O 1 bit } lout_24_d0 { O 32 vector } lout_24_q0 { I 32 vector } lout_24_we0 { O 1 bit } lout_24_address1 { O 8 vector } lout_24_ce1 { O 1 bit } lout_24_d1 { O 32 vector } lout_24_q1 { I 32 vector } lout_24_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 388 \
    name lout_25 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_25 \
    op interface \
    ports { lout_25_address0 { O 8 vector } lout_25_ce0 { O 1 bit } lout_25_d0 { O 32 vector } lout_25_q0 { I 32 vector } lout_25_we0 { O 1 bit } lout_25_address1 { O 8 vector } lout_25_ce1 { O 1 bit } lout_25_d1 { O 32 vector } lout_25_q1 { I 32 vector } lout_25_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 389 \
    name lout_26 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_26 \
    op interface \
    ports { lout_26_address0 { O 8 vector } lout_26_ce0 { O 1 bit } lout_26_d0 { O 32 vector } lout_26_q0 { I 32 vector } lout_26_we0 { O 1 bit } lout_26_address1 { O 8 vector } lout_26_ce1 { O 1 bit } lout_26_d1 { O 32 vector } lout_26_q1 { I 32 vector } lout_26_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
    name lout_27 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_27 \
    op interface \
    ports { lout_27_address0 { O 8 vector } lout_27_ce0 { O 1 bit } lout_27_d0 { O 32 vector } lout_27_q0 { I 32 vector } lout_27_we0 { O 1 bit } lout_27_address1 { O 8 vector } lout_27_ce1 { O 1 bit } lout_27_d1 { O 32 vector } lout_27_q1 { I 32 vector } lout_27_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 391 \
    name lout_28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_28 \
    op interface \
    ports { lout_28_address0 { O 8 vector } lout_28_ce0 { O 1 bit } lout_28_d0 { O 32 vector } lout_28_q0 { I 32 vector } lout_28_we0 { O 1 bit } lout_28_address1 { O 8 vector } lout_28_ce1 { O 1 bit } lout_28_d1 { O 32 vector } lout_28_q1 { I 32 vector } lout_28_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 392 \
    name lout_29 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_29 \
    op interface \
    ports { lout_29_address0 { O 8 vector } lout_29_ce0 { O 1 bit } lout_29_d0 { O 32 vector } lout_29_q0 { I 32 vector } lout_29_we0 { O 1 bit } lout_29_address1 { O 8 vector } lout_29_ce1 { O 1 bit } lout_29_d1 { O 32 vector } lout_29_q1 { I 32 vector } lout_29_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 393 \
    name lout_30 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_30 \
    op interface \
    ports { lout_30_address0 { O 8 vector } lout_30_ce0 { O 1 bit } lout_30_d0 { O 32 vector } lout_30_q0 { I 32 vector } lout_30_we0 { O 1 bit } lout_30_address1 { O 8 vector } lout_30_ce1 { O 1 bit } lout_30_d1 { O 32 vector } lout_30_q1 { I 32 vector } lout_30_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 394 \
    name lout_31 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lout_31 \
    op interface \
    ports { lout_31_address0 { O 8 vector } lout_31_ce0 { O 1 bit } lout_31_d0 { O 32 vector } lout_31_q0 { I 32 vector } lout_31_we0 { O 1 bit } lout_31_address1 { O 8 vector } lout_31_ce1 { O 1 bit } lout_31_d1 { O 32 vector } lout_31_q1 { I 32 vector } lout_31_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lout_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name B \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B \
    op interface \
    ports { B_dout { I 32 vector } B_empty_n { I 1 bit } B_read { O 1 bit } } \
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


