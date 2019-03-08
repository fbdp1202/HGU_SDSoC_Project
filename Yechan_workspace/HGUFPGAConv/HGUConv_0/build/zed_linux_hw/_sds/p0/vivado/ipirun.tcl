# This file automatically generated by SDx 
# please do not modify
set local_dir ".local"
source -notrace "$local_dir/ocl_util.tcl"

set synth_proj_name "syn"
set impl_proj_name "imp"
set proj_name "prj"
set emu_proj_name "prj"
set design_name "dr"
set reconfig_module "my_rm"
set dsa_name "zed"
set dsa_part "xc7z020clg484-1"
set output_dir "output"
set steps_log "./vivado.steps.log"
set vivado_error_file "vivado_error.txt"
set vivado_warn_file "vivado_warning.txt"
set kernel_ip_dirs {
  {/home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/iprepo/repo}
  {/opt/Xilinx/SDx/2018.2/data/ip/xilinx}}
set install_ip_cache "/opt/Xilinx/SDx/2018.2/data/cache/xilinx"

# kernel clock 'PL 2' (2)
set dict_clk_wiz_0_clk_out1 [dict create \
  is_user_set false \
  clk_id 2 \
  freq 100.000000 \
];
# kernel clock 'PL 1' (1)
set dict_clk_wiz_0_clk_out2 [dict create \
  is_user_set false \
  clk_id 1 \
  freq 142.857142 \
];
# kernel clock 'PL 0' (0)
set dict_clk_wiz_0_clk_out3 [dict create \
  is_user_set false \
  clk_id 0 \
  freq 166.666666 \
];
# kernel clock 'PL 3' (3)
set dict_clk_wiz_0_clk_out4 [dict create \
  is_user_set false \
  clk_id 3 \
  freq 200.000000 \
];

set kernel_clock_freqs [dict create \
  clk_wiz_0_clk_out1 $dict_clk_wiz_0_clk_out1 \
  clk_wiz_0_clk_out2 $dict_clk_wiz_0_clk_out2 \
  clk_wiz_0_clk_out3 $dict_clk_wiz_0_clk_out3 \
  clk_wiz_0_clk_out4 $dict_clk_wiz_0_clk_out4 \
];

set system_clock_freqs [dict create \
];


set impl_xdc [dict create \
];


set synth_xdc [dict create \
];

set utilization [dict create \
  luts                   -1 \
  brams                  -1 \
  registers              -1 \
  dsps                   -1 \
];

set dsa_info [dict create \
  dsa_part                 "xc7z020clg484-1" \
  dsa_vbnv                 "xilinx.com:zed:zed:1.0" \
  dsa_dcp                  "" \
  bb_locked_dcp            "" \
  dsa_uses_pr               false \
  dsa_uses_pr_shell_dcp     false \
  dsa_pr_shell_dcp         "" \
  dsa_platform_state       "pre_synth" \
  ocl_region               "" \
  utilization               $utilization \
  dsa_dr_bd                "" \
  dsa_rebuild_tcl          ".local/dsa/prj/rebuild.tcl" \
  post_sys_link_tcl        "" \
  user_post_sys_link_tcl   "" \
  pre_sys_link_tcl         "" \
  synth_xdc                 $synth_xdc \
  impl_xdc                  $impl_xdc \
  dsa_ip_repo              "" \
  dsa_ip_cache             ".local/dsa/ipcache" \
  dsa_board_repo           "" \
  dsa_bconn_locked          {} \
  dsa_bconn_unlocked        {} \
  dsa_board_part           "em.avnet.com:zed:part0:1.4" \
  link_output_format        bitstream \
  is_unified                true \
  dsa_dcp_top              "zed_wrapper" \
];


set config_info [dict create \
  synth_proj_name          "$synth_proj_name" \
  impl_proj_name           "$impl_proj_name" \
  proj_name                "$proj_name" \
  emu_proj_name            "$emu_proj_name" \
  design_name              "$design_name" \
  ocl_dcp                  "$output_dir/$design_name.dcp" \
  out_partial_bitstream    "$output_dir/partial.bit" \
  out_partial_clear_bit    "$output_dir/partial_clear.bit" \
  out_full_bitstream       "$output_dir/system.bit" \
  gen_extra_run_data        true \
  enable_dont_partition     true \
  enable_util_report        false \
  utilization_threshold     0.8 \
  generate_script_only      false \
  run_script_map_file      "" \
  clbinary_name            "bin" \
  kernels                  "adapter cal_gemm" \
  steps_log                 $steps_log \
  num_jobs                  4 \
  lsf_string               {} \
  xocc_optimize_level       0 \
  enable_lock_crit_insts    false \
  is_hw_emu                 false \
  user_ip_repo              {} \
  kernel_ip_dirs            $kernel_ip_dirs \
  no_dsa_ip_cache           false \
  no_install_ip_cache       false \
  install_ip_cache          $install_ip_cache \
  no_ip_cache               false \
  remote_ip_cache          "" \
  user_board_repo           {} \
  user_bconn                {} \
  dr_bd_tcl                ".local/top.bd.tcl" \
  webtalk_flag             "SDSoC" \
  encrypt_impl_dcp          false \
  enable_pr_verify          false \
  return_pre_synth          false \
  return_post_synth         false \
  return_pre_impl           false \
  protocol_checker          false \
  scripts_dir              "scripts" \
  output_dir               "$output_dir" \
  local_dir                "$local_dir" \
  partition_def            "my_pd" \
  reconfig_module          "$reconfig_module" \
  failfast_config          {} \
];

set clk_info [dict create \
  kernel_clock_freqs         $kernel_clock_freqs \
  system_clock_freqs         $system_clock_freqs \
  worst_negative_slack      0 \
  lock_slack_threshold      1.2 \
  max_frequency             500 \
  min_frequency             60 \
  error_on_hold_violation   true \
  skip_timing_and_scaling   false \
  enable_auto_freq_scale    false \
];

set dict_debug [dict create \
  version "1.0" \
];
dict set dict_debug kernel_debug false
set dict_profile [dict create \
  NAME profile_monitors \
  DATA [list] \
  STALL [list] \
  EXEC [list] \
];
set debug_profile_info [dict create debug $dict_debug profile $dict_profile]

source [dict get $config_info scripts_dir]/_vivado_params.tcl

ocl_util::write_sdx_tcl_hooks $dsa_info $config_info $clk_info

dict set config_info synth_props_tcl "scripts/_vivado_synth_props.tcl"
dict set config_info impl_props_tcl "scripts/_vivado_impl_props.tcl"
dict set config_info report_commands_tcl "scripts/_vivado_report_commands.tcl"
send_msg_id {101-1} {status} {Creating Vivado project and starting FPGA synthesis.}

### Single Project Flow
ocl_util::single_project_flow_unip $dsa_info $config_info $clk_info $debug_profile_info
