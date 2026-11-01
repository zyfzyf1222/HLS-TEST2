// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 28 15:54:37 2026
// Host        : DESKTOP-MTRJSS0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sharpen3x3_0_stub.v
// Design      : sharpen3x3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sharpen3x3,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, src_V_V_dout, src_V_V_empty_n, src_V_V_read, dst_V_V_din, dst_V_V_full_n, 
  dst_V_V_write, width_V, height_V)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,src_V_V_dout[7:0],src_V_V_empty_n,src_V_V_read,dst_V_V_din[7:0],dst_V_V_full_n,dst_V_V_write,width_V[11:0],height_V[11:0]" */;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]src_V_V_dout;
  input src_V_V_empty_n;
  output src_V_V_read;
  output [7:0]dst_V_V_din;
  input dst_V_V_full_n;
  output dst_V_V_write;
  input [11:0]width_V;
  input [11:0]height_V;
endmodule
