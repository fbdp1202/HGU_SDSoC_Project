// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _a0_write_out_HH_
#define _a0_write_out_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "a0_cal_gemm_mux_325_dEe.h"

namespace ap_rtl {

struct a0_write_out : public sc_module {
    // Port declarations 105
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > lout_0_address0;
    sc_out< sc_logic > lout_0_ce0;
    sc_in< sc_lv<32> > lout_0_q0;
    sc_out< sc_lv<8> > lout_1_address0;
    sc_out< sc_logic > lout_1_ce0;
    sc_in< sc_lv<32> > lout_1_q0;
    sc_out< sc_lv<8> > lout_2_address0;
    sc_out< sc_logic > lout_2_ce0;
    sc_in< sc_lv<32> > lout_2_q0;
    sc_out< sc_lv<8> > lout_3_address0;
    sc_out< sc_logic > lout_3_ce0;
    sc_in< sc_lv<32> > lout_3_q0;
    sc_out< sc_lv<8> > lout_4_address0;
    sc_out< sc_logic > lout_4_ce0;
    sc_in< sc_lv<32> > lout_4_q0;
    sc_out< sc_lv<8> > lout_5_address0;
    sc_out< sc_logic > lout_5_ce0;
    sc_in< sc_lv<32> > lout_5_q0;
    sc_out< sc_lv<8> > lout_6_address0;
    sc_out< sc_logic > lout_6_ce0;
    sc_in< sc_lv<32> > lout_6_q0;
    sc_out< sc_lv<8> > lout_7_address0;
    sc_out< sc_logic > lout_7_ce0;
    sc_in< sc_lv<32> > lout_7_q0;
    sc_out< sc_lv<8> > lout_8_address0;
    sc_out< sc_logic > lout_8_ce0;
    sc_in< sc_lv<32> > lout_8_q0;
    sc_out< sc_lv<8> > lout_9_address0;
    sc_out< sc_logic > lout_9_ce0;
    sc_in< sc_lv<32> > lout_9_q0;
    sc_out< sc_lv<8> > lout_10_address0;
    sc_out< sc_logic > lout_10_ce0;
    sc_in< sc_lv<32> > lout_10_q0;
    sc_out< sc_lv<8> > lout_11_address0;
    sc_out< sc_logic > lout_11_ce0;
    sc_in< sc_lv<32> > lout_11_q0;
    sc_out< sc_lv<8> > lout_12_address0;
    sc_out< sc_logic > lout_12_ce0;
    sc_in< sc_lv<32> > lout_12_q0;
    sc_out< sc_lv<8> > lout_13_address0;
    sc_out< sc_logic > lout_13_ce0;
    sc_in< sc_lv<32> > lout_13_q0;
    sc_out< sc_lv<8> > lout_14_address0;
    sc_out< sc_logic > lout_14_ce0;
    sc_in< sc_lv<32> > lout_14_q0;
    sc_out< sc_lv<8> > lout_15_address0;
    sc_out< sc_logic > lout_15_ce0;
    sc_in< sc_lv<32> > lout_15_q0;
    sc_out< sc_lv<8> > lout_16_address0;
    sc_out< sc_logic > lout_16_ce0;
    sc_in< sc_lv<32> > lout_16_q0;
    sc_out< sc_lv<8> > lout_17_address0;
    sc_out< sc_logic > lout_17_ce0;
    sc_in< sc_lv<32> > lout_17_q0;
    sc_out< sc_lv<8> > lout_18_address0;
    sc_out< sc_logic > lout_18_ce0;
    sc_in< sc_lv<32> > lout_18_q0;
    sc_out< sc_lv<8> > lout_19_address0;
    sc_out< sc_logic > lout_19_ce0;
    sc_in< sc_lv<32> > lout_19_q0;
    sc_out< sc_lv<8> > lout_20_address0;
    sc_out< sc_logic > lout_20_ce0;
    sc_in< sc_lv<32> > lout_20_q0;
    sc_out< sc_lv<8> > lout_21_address0;
    sc_out< sc_logic > lout_21_ce0;
    sc_in< sc_lv<32> > lout_21_q0;
    sc_out< sc_lv<8> > lout_22_address0;
    sc_out< sc_logic > lout_22_ce0;
    sc_in< sc_lv<32> > lout_22_q0;
    sc_out< sc_lv<8> > lout_23_address0;
    sc_out< sc_logic > lout_23_ce0;
    sc_in< sc_lv<32> > lout_23_q0;
    sc_out< sc_lv<8> > lout_24_address0;
    sc_out< sc_logic > lout_24_ce0;
    sc_in< sc_lv<32> > lout_24_q0;
    sc_out< sc_lv<8> > lout_25_address0;
    sc_out< sc_logic > lout_25_ce0;
    sc_in< sc_lv<32> > lout_25_q0;
    sc_out< sc_lv<8> > lout_26_address0;
    sc_out< sc_logic > lout_26_ce0;
    sc_in< sc_lv<32> > lout_26_q0;
    sc_out< sc_lv<8> > lout_27_address0;
    sc_out< sc_logic > lout_27_ce0;
    sc_in< sc_lv<32> > lout_27_q0;
    sc_out< sc_lv<8> > lout_28_address0;
    sc_out< sc_logic > lout_28_ce0;
    sc_in< sc_lv<32> > lout_28_q0;
    sc_out< sc_lv<8> > lout_29_address0;
    sc_out< sc_logic > lout_29_ce0;
    sc_in< sc_lv<32> > lout_29_q0;
    sc_out< sc_lv<8> > lout_30_address0;
    sc_out< sc_logic > lout_30_ce0;
    sc_in< sc_lv<32> > lout_30_q0;
    sc_out< sc_lv<8> > lout_31_address0;
    sc_out< sc_logic > lout_31_ce0;
    sc_in< sc_lv<32> > lout_31_q0;
    sc_out< sc_lv<32> > C_din;
    sc_in< sc_logic > C_full_n;
    sc_out< sc_logic > C_write;


    // Module declarations
    a0_write_out(sc_module_name name);
    SC_HAS_PROCESS(a0_write_out);

    ~a0_write_out();

    sc_trace_file* mVcdFile;

    a0_cal_gemm_mux_325_dEe<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,5,32>* cal_gemm_mux_325_dEe_U395;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > C_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_792;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_792_pp0_iter1_reg;
    sc_signal< sc_lv<13> > indvar_flatten_reg_529;
    sc_signal< sc_lv<13> > indvars_iv_reg_540;
    sc_signal< sc_lv<6> > w_reg_551;
    sc_signal< sc_lv<13> > z_reg_562;
    sc_signal< sc_lv<13> > z_1_reg_573;
    sc_signal< sc_lv<8> > i_reg_584;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_595_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<13> > indvar_flatten_next_fu_601_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > w_t_mid2_v_fu_641_p3;
    sc_signal< sc_lv<6> > w_t_mid2_v_reg_801;
    sc_signal< sc_lv<5> > tmp_3_fu_649_p1;
    sc_signal< sc_lv<5> > tmp_3_reg_806;
    sc_signal< sc_lv<13> > indvars_iv_mid2_fu_659_p3;
    sc_signal< sc_lv<13> > z_mid2_fu_667_p3;
    sc_signal< sc_lv<8> > i_1_fu_711_p2;
    sc_signal< sc_lv<13> > tmp_fu_717_p2;
    sc_signal< sc_lv<32> > tmp_2_fu_723_p34;
    sc_signal< sc_lv<32> > tmp_2_reg_991;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<6> > ap_phi_mux_w_phi_fu_555_p4;
    sc_signal< sc_lv<32> > i_cast_fu_675_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<1> > exitcond_fu_607_p2;
    sc_signal< sc_lv<13> > z_s_fu_613_p2;
    sc_signal< sc_lv<6> > w_s_fu_635_p2;
    sc_signal< sc_lv<13> > indvars_iv_next_dup_fu_653_p2;
    sc_signal< sc_lv<8> > i_mid2_fu_627_p3;
    sc_signal< sc_lv<13> > z_1_mid2_fu_619_p3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<13> ap_const_lv13_A9;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<13> ap_const_lv13_1520;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_C_blk_n();
    void thread_C_din();
    void thread_C_write();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_w_phi_fu_555_p4();
    void thread_ap_ready();
    void thread_exitcond_flatten_fu_595_p2();
    void thread_exitcond_fu_607_p2();
    void thread_i_1_fu_711_p2();
    void thread_i_cast_fu_675_p1();
    void thread_i_mid2_fu_627_p3();
    void thread_indvar_flatten_next_fu_601_p2();
    void thread_indvars_iv_mid2_fu_659_p3();
    void thread_indvars_iv_next_dup_fu_653_p2();
    void thread_lout_0_address0();
    void thread_lout_0_ce0();
    void thread_lout_10_address0();
    void thread_lout_10_ce0();
    void thread_lout_11_address0();
    void thread_lout_11_ce0();
    void thread_lout_12_address0();
    void thread_lout_12_ce0();
    void thread_lout_13_address0();
    void thread_lout_13_ce0();
    void thread_lout_14_address0();
    void thread_lout_14_ce0();
    void thread_lout_15_address0();
    void thread_lout_15_ce0();
    void thread_lout_16_address0();
    void thread_lout_16_ce0();
    void thread_lout_17_address0();
    void thread_lout_17_ce0();
    void thread_lout_18_address0();
    void thread_lout_18_ce0();
    void thread_lout_19_address0();
    void thread_lout_19_ce0();
    void thread_lout_1_address0();
    void thread_lout_1_ce0();
    void thread_lout_20_address0();
    void thread_lout_20_ce0();
    void thread_lout_21_address0();
    void thread_lout_21_ce0();
    void thread_lout_22_address0();
    void thread_lout_22_ce0();
    void thread_lout_23_address0();
    void thread_lout_23_ce0();
    void thread_lout_24_address0();
    void thread_lout_24_ce0();
    void thread_lout_25_address0();
    void thread_lout_25_ce0();
    void thread_lout_26_address0();
    void thread_lout_26_ce0();
    void thread_lout_27_address0();
    void thread_lout_27_ce0();
    void thread_lout_28_address0();
    void thread_lout_28_ce0();
    void thread_lout_29_address0();
    void thread_lout_29_ce0();
    void thread_lout_2_address0();
    void thread_lout_2_ce0();
    void thread_lout_30_address0();
    void thread_lout_30_ce0();
    void thread_lout_31_address0();
    void thread_lout_31_ce0();
    void thread_lout_3_address0();
    void thread_lout_3_ce0();
    void thread_lout_4_address0();
    void thread_lout_4_ce0();
    void thread_lout_5_address0();
    void thread_lout_5_ce0();
    void thread_lout_6_address0();
    void thread_lout_6_ce0();
    void thread_lout_7_address0();
    void thread_lout_7_ce0();
    void thread_lout_8_address0();
    void thread_lout_8_ce0();
    void thread_lout_9_address0();
    void thread_lout_9_ce0();
    void thread_tmp_3_fu_649_p1();
    void thread_tmp_fu_717_p2();
    void thread_w_s_fu_635_p2();
    void thread_w_t_mid2_v_fu_641_p3();
    void thread_z_1_mid2_fu_619_p3();
    void thread_z_mid2_fu_667_p3();
    void thread_z_s_fu_613_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
