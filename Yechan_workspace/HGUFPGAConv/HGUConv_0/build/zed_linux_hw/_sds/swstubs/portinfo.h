#ifndef _SDS_PORTINFO_H
#define _SDS_PORTINFO_H
/* File: /home/sdsoc/yc_ws/sdx_ws/proj/YOLO-master/cpp/HGUFPGAConv/HGUConv_0/build/zed_linux_hw/_sds/p0/.cf_work/portinfo.h */
#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_cal_gemm {
  cf_port_send_t cmd_cal_gemm;
  cf_port_send_t A;
  cf_port_send_t B;
  cf_port_receive_t C;
};

extern struct _p0_swblk_cal_gemm _p0_swinst_cal_gemm_1;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
#ifdef __cplusplus
extern "C" {
#endif
#ifdef __cplusplus
};
#endif /* extern "C" */
#endif /* _SDS_PORTINFO_H_ */
