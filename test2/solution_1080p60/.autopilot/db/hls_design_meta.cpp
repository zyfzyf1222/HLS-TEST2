#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("src_V_V_dout", 8, hls_in, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("src_V_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("src_V_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("dst_V_V_din", 8, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("dst_V_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("dst_V_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("y_V", 12, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("y_V_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("x_V", 12, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("x_V_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
	Port_Property("w_V", 12, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("h_V", 12, hls_in, 5, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "gray8_gauss2d_3x3";
