/* File: /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/.cf_work/portinfo.c */
#include "cf_lib.h"
#include "cf_request.h"
#include "sds_lib.h"
#include "sds_trace.h"
#include "portinfo.h"
#include <stdio.h>  // for printf
#include <stdlib.h> // for exit
#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_simple_dm.h"
#include "axi_lite_dm.h"
#include "sysport_info.h"

sysport_info_t _sds_sysport_p0_ps7_S_AXI_ACP = {
  .name = "ps7_S_AXI_ACP",
  .id = 1,
  .address_space = 0,
  .cmd_type = sysport_commands_type_no_action,
};

accel_info_t _sds__p0_cal_gemm_1 = {
  .device_id = 3,
  .phys_base_addr = 0x43c00000,
  .addr_range = 0x10000,
  .func_name = "cal_gemm_1",
  .ip_type = "axis_acc_adapter",
  .irq = 0,
};

axi_dma_simple_info_t _p0_dm_0 = {
  .name = "dm_0",
  .phys_base_addr = 0x40400000,
  .addr_range = 0x10000,
  .device_id = 0,
  .dir = XLNK_DMA_TO_DEV,
  .irq = -1,
  .data_sysport = &_sds_sysport_p0_ps7_S_AXI_ACP,
  .data_width = 64,
};

axi_dma_simple_info_t _p0_dm_1 = {
  .name = "dm_1",
  .phys_base_addr = 0x40410000,
  .addr_range = 0x10000,
  .device_id = 1,
  .dir = XLNK_DMA_TO_DEV,
  .irq = -1,
  .data_sysport = &_sds_sysport_p0_ps7_S_AXI_ACP,
  .data_width = 64,
};

axi_dma_simple_info_t _p0_dm_2 = {
  .name = "dm_2",
  .phys_base_addr = 0x40420000,
  .addr_range = 0x10000,
  .device_id = 2,
  .dir = XLNK_DMA_FROM_DEV,
  .irq = -1,
  .data_sysport = &_sds_sysport_p0_ps7_S_AXI_ACP,
  .data_width = 64,
};

int _p0_swinst_cal_gemm_1_cmd_cal_gemm_sg_list[] = {0x8};

axi_lite_info_t _p0_swinst_cal_gemm_1_cmd_cal_gemm_info = {
  .phys_base_addr = 0x43c00000,
  .data_reg_offset = _p0_swinst_cal_gemm_1_cmd_cal_gemm_sg_list,
  .data_reg_sg_size = 1,
  .write_status_reg_offset = 0x0,
  .read_status_reg_offset = 0x0,
  .config = XLNK_AXI_LITE_SG |
    XLNK_AXI_LITE_STAT_REG_READ(XLNK_AXI_LITE_STAT_REG_NOCHECK) |
    XLNK_AXI_LITE_STAT_REG_WRITE(XLNK_AXI_LITE_STAT_REG_NOCHECK),
  .acc_info = &_sds__p0_cal_gemm_1,
};

struct _p0_swblk_cal_gemm _p0_swinst_cal_gemm_1 = {
  .cmd_cal_gemm = { .base = { .channel_info = &_p0_swinst_cal_gemm_1_cmd_cal_gemm_info}, 
    .send_i = &axi_lite_send },
  .A = { .base = { .channel_info = &_p0_dm_0},
    .send_i = &axi_dma_simple_send_i },
  .B = { .base = { .channel_info = &_p0_dm_1},
    .send_i = &axi_dma_simple_send_i },
  .C = { .base = { .channel_info = &_p0_dm_2},
    .receive_ref_i = 0,
    .receive_i = &axi_dma_simple_recv_i },
};

extern void pfm_hook_init();
extern void pfm_hook_shutdown();
void _p0_cf_framework_open(int first)
{
  int xlnk_init_done;
  cf_context_init();
  xlnkCounterMap(666666687);
  xlnk_init_done = cf_xlnk_open(first);
  if (!xlnk_init_done) {
    pfm_hook_init();
    cf_xlnk_init(first);
  } else if (xlnk_init_done < 0) {
    fprintf(stderr, "ERROR: unable to open xlnk\n");
    exit(-1);
  }
  cf_get_current_context();
  sysport_open(&_sds_sysport_p0_ps7_S_AXI_ACP);
  axi_dma_simple_open(&_p0_dm_0);
  axi_dma_simple_open(&_p0_dm_1);
  axi_dma_simple_open(&_p0_dm_2);
  axi_lite_open(&_p0_swinst_cal_gemm_1_cmd_cal_gemm_info);
  _sds__p0_cal_gemm_1.arg_dm_id[0] = _p0_swinst_cal_gemm_1_cmd_cal_gemm_info.dm_id;
  _sds__p0_cal_gemm_1.arg_dm_id[1] = _p0_dm_0.dm_id;
  _sds__p0_cal_gemm_1.arg_dm_id[2] = _p0_dm_1.dm_id;
  _sds__p0_cal_gemm_1.arg_dm_id[3] = _p0_dm_2.dm_id;
  _sds__p0_cal_gemm_1.arg_dm_id_count = 4;
  accel_open(&_sds__p0_cal_gemm_1);
}

void _p0_cf_framework_close(int last)
{
  accel_close(&_sds__p0_cal_gemm_1);
  axi_dma_simple_close(&_p0_dm_0);
  axi_dma_simple_close(&_p0_dm_1);
  axi_dma_simple_close(&_p0_dm_2);
  axi_lite_close(&_p0_swinst_cal_gemm_1_cmd_cal_gemm_info);
  sysport_close(&_sds_sysport_p0_ps7_S_AXI_ACP);
  pfm_hook_shutdown();
  xlnkClose(last, NULL);
}


void init_first_partition() __attribute__ ((constructor));
void close_last_partition() __attribute__ ((destructor));
void init_first_partition()
{
    _p0_cf_framework_open(1);

    sds_trace_setup();
}


void close_last_partition()
{
     _p0_cf_framework_close(1);
#ifdef PERF_EST
    apf_perf_estimation_exit();
#endif
    sds_trace_cleanup();
}

