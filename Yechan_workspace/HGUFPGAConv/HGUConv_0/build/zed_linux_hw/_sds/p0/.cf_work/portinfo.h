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
