// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 28 14:50:23 2026
// Host        : DESKTOP-MTRJSS0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/gauss_src/hdmi_loop/hdmi_loop.srcs/sources_1/ip/gray8_gauss2d_3x3_0/gray8_gauss2d_3x3_0_sim_netlist.v
// Design      : gray8_gauss2d_3x3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gray8_gauss2d_3x3_0,gray8_gauss2d_3x3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "gray8_gauss2d_3x3,Vivado 2018.3" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module gray8_gauss2d_3x3_0
   (y_V_ap_vld,
    x_V_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    src_V_V_dout,
    src_V_V_empty_n,
    src_V_V_read,
    dst_V_V_din,
    dst_V_V_full_n,
    dst_V_V_write,
    y_V,
    x_V,
    w_V,
    h_V);
  output y_V_ap_vld;
  output x_V_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 src_V_V RD_DATA" *) input [7:0]src_V_V_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 src_V_V EMPTY_N" *) input src_V_V_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 src_V_V RD_EN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_V_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output src_V_V_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V WR_DATA" *) output [7:0]dst_V_V_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V FULL_N" *) input dst_V_V_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V WR_EN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dst_V_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output dst_V_V_write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 y_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME y_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [11:0]y_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 x_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME x_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [11:0]x_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 w_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME w_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [11:0]w_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 h_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME h_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [11:0]h_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]dst_V_V_din;
  wire dst_V_V_full_n;
  wire dst_V_V_write;
  wire [11:0]h_V;
  wire [7:0]src_V_V_dout;
  wire src_V_V_empty_n;
  wire src_V_V_read;
  wire [11:0]w_V;
  wire [11:0]x_V;
  wire x_V_ap_vld;
  wire [11:0]y_V;
  wire y_V_ap_vld;

  (* ap_ST_fsm_pp0_stage0 = "4'b0100" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state8 = "4'b1000" *) 
  gray8_gauss2d_3x3_0_gray8_gauss2d_3x3 inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .dst_V_V_din(dst_V_V_din),
        .dst_V_V_full_n(dst_V_V_full_n),
        .dst_V_V_write(dst_V_V_write),
        .h_V(h_V),
        .src_V_V_dout(src_V_V_dout),
        .src_V_V_empty_n(src_V_V_empty_n),
        .src_V_V_read(src_V_V_read),
        .w_V(w_V),
        .x_V(x_V),
        .x_V_ap_vld(x_V_ap_vld),
        .y_V(y_V),
        .y_V_ap_vld(y_V_ap_vld));
endmodule

(* ORIG_REF_NAME = "gray8_gauss2d_3x3" *) (* ap_ST_fsm_pp0_stage0 = "4'b0100" *) (* ap_ST_fsm_state1 = "4'b0001" *) 
(* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state8 = "4'b1000" *) (* hls_module = "yes" *) 
module gray8_gauss2d_3x3_0_gray8_gauss2d_3x3
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    src_V_V_dout,
    src_V_V_empty_n,
    src_V_V_read,
    dst_V_V_din,
    dst_V_V_full_n,
    dst_V_V_write,
    y_V,
    y_V_ap_vld,
    x_V,
    x_V_ap_vld,
    w_V,
    h_V);
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
  output [11:0]y_V;
  output y_V_ap_vld;
  output [11:0]x_V;
  output x_V_ap_vld;
  input [11:0]w_V;
  input [11:0]h_V;

  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage017_in;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state8;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_block_pp0_stage0_subdone;
  wire ap_block_pp0_stage0_subdone5_in;
  wire ap_clk;
  wire ap_condition_182;
  wire ap_condition_254;
  wire ap_condition_256;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter3_i_1_n_0;
  wire ap_enable_reg_pp0_iter4_i_1_n_0;
  wire ap_enable_reg_pp0_iter4_reg_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_ready_INST_0_i_2_n_0;
  wire ap_ready_INST_0_i_2_n_1;
  wire ap_ready_INST_0_i_2_n_2;
  wire ap_ready_INST_0_i_2_n_3;
  wire ap_ready_INST_0_i_3_n_0;
  wire ap_ready_INST_0_i_4_n_0;
  wire ap_ready_INST_0_i_5_n_0;
  wire ap_ready_INST_0_i_6_n_0;
  wire ap_ready_INST_0_i_7_n_0;
  wire ap_rst;
  wire ap_start;
  wire \c_1_reg_325[0]_i_3_n_0 ;
  wire \c_1_reg_325[0]_i_4_n_0 ;
  wire \c_1_reg_325[0]_i_5_n_0 ;
  wire \c_1_reg_325[0]_i_6_n_0 ;
  wire \c_1_reg_325[4]_i_2_n_0 ;
  wire \c_1_reg_325[4]_i_3_n_0 ;
  wire \c_1_reg_325[4]_i_4_n_0 ;
  wire \c_1_reg_325[4]_i_5_n_0 ;
  wire \c_1_reg_325[8]_i_2_n_0 ;
  wire \c_1_reg_325[8]_i_3_n_0 ;
  wire \c_1_reg_325[8]_i_4_n_0 ;
  wire \c_1_reg_325[8]_i_5_n_0 ;
  wire [11:0]c_1_reg_325_reg;
  wire \c_1_reg_325_reg[0]_i_2_n_0 ;
  wire \c_1_reg_325_reg[0]_i_2_n_1 ;
  wire \c_1_reg_325_reg[0]_i_2_n_2 ;
  wire \c_1_reg_325_reg[0]_i_2_n_3 ;
  wire \c_1_reg_325_reg[0]_i_2_n_4 ;
  wire \c_1_reg_325_reg[0]_i_2_n_5 ;
  wire \c_1_reg_325_reg[0]_i_2_n_6 ;
  wire \c_1_reg_325_reg[0]_i_2_n_7 ;
  wire \c_1_reg_325_reg[4]_i_1_n_0 ;
  wire \c_1_reg_325_reg[4]_i_1_n_1 ;
  wire \c_1_reg_325_reg[4]_i_1_n_2 ;
  wire \c_1_reg_325_reg[4]_i_1_n_3 ;
  wire \c_1_reg_325_reg[4]_i_1_n_4 ;
  wire \c_1_reg_325_reg[4]_i_1_n_5 ;
  wire \c_1_reg_325_reg[4]_i_1_n_6 ;
  wire \c_1_reg_325_reg[4]_i_1_n_7 ;
  wire \c_1_reg_325_reg[8]_i_1_n_1 ;
  wire \c_1_reg_325_reg[8]_i_1_n_2 ;
  wire \c_1_reg_325_reg[8]_i_1_n_3 ;
  wire \c_1_reg_325_reg[8]_i_1_n_4 ;
  wire \c_1_reg_325_reg[8]_i_1_n_5 ;
  wire \c_1_reg_325_reg[8]_i_1_n_6 ;
  wire \c_1_reg_325_reg[8]_i_1_n_7 ;
  wire c_reg_314;
  wire c_reg_3140;
  wire \c_reg_314_reg_n_0_[0] ;
  wire \c_reg_314_reg_n_0_[10] ;
  wire \c_reg_314_reg_n_0_[11] ;
  wire \c_reg_314_reg_n_0_[1] ;
  wire \c_reg_314_reg_n_0_[2] ;
  wire \c_reg_314_reg_n_0_[3] ;
  wire \c_reg_314_reg_n_0_[4] ;
  wire \c_reg_314_reg_n_0_[5] ;
  wire \c_reg_314_reg_n_0_[6] ;
  wire \c_reg_314_reg_n_0_[7] ;
  wire \c_reg_314_reg_n_0_[8] ;
  wire \c_reg_314_reg_n_0_[9] ;
  wire [31:0]col;
  wire col0;
  wire col_flag_fu_150;
  wire \col_flag_fu_150[0]_i_1_n_0 ;
  wire [10:0]col_loc_fu_142;
  wire \col_loc_fu_142[31]_i_11_n_0 ;
  wire \col_loc_fu_142[31]_i_12_n_0 ;
  wire \col_loc_fu_142[31]_i_13_n_0 ;
  wire \col_loc_fu_142[31]_i_14_n_0 ;
  wire \col_loc_fu_142[31]_i_16_n_0 ;
  wire \col_loc_fu_142[31]_i_17_n_0 ;
  wire \col_loc_fu_142[31]_i_18_n_0 ;
  wire \col_loc_fu_142[31]_i_19_n_0 ;
  wire \col_loc_fu_142[31]_i_1_n_0 ;
  wire \col_loc_fu_142[31]_i_20_n_0 ;
  wire \col_loc_fu_142[31]_i_21_n_0 ;
  wire \col_loc_fu_142[31]_i_22_n_0 ;
  wire \col_loc_fu_142[31]_i_23_n_0 ;
  wire \col_loc_fu_142[31]_i_24_n_0 ;
  wire \col_loc_fu_142[31]_i_25_n_0 ;
  wire \col_loc_fu_142[31]_i_26_n_0 ;
  wire \col_loc_fu_142[31]_i_27_n_0 ;
  wire \col_loc_fu_142[31]_i_28_n_0 ;
  wire \col_loc_fu_142[31]_i_29_n_0 ;
  wire \col_loc_fu_142[31]_i_6_n_0 ;
  wire \col_loc_fu_142[31]_i_7_n_0 ;
  wire \col_loc_fu_142[31]_i_8_n_0 ;
  wire \col_loc_fu_142[31]_i_9_n_0 ;
  wire \col_loc_fu_142_reg[12]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[12]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[12]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[12]_i_2_n_3 ;
  wire \col_loc_fu_142_reg[16]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[16]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[16]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[16]_i_2_n_3 ;
  wire \col_loc_fu_142_reg[20]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[20]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[20]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[20]_i_2_n_3 ;
  wire \col_loc_fu_142_reg[24]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[24]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[24]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[24]_i_2_n_3 ;
  wire \col_loc_fu_142_reg[28]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[28]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[28]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[28]_i_2_n_3 ;
  wire \col_loc_fu_142_reg[31]_i_10_n_0 ;
  wire \col_loc_fu_142_reg[31]_i_10_n_1 ;
  wire \col_loc_fu_142_reg[31]_i_10_n_2 ;
  wire \col_loc_fu_142_reg[31]_i_10_n_3 ;
  wire \col_loc_fu_142_reg[31]_i_15_n_0 ;
  wire \col_loc_fu_142_reg[31]_i_15_n_1 ;
  wire \col_loc_fu_142_reg[31]_i_15_n_2 ;
  wire \col_loc_fu_142_reg[31]_i_15_n_3 ;
  wire \col_loc_fu_142_reg[31]_i_3_n_2 ;
  wire \col_loc_fu_142_reg[31]_i_3_n_3 ;
  wire \col_loc_fu_142_reg[31]_i_4_n_0 ;
  wire \col_loc_fu_142_reg[31]_i_4_n_1 ;
  wire \col_loc_fu_142_reg[31]_i_4_n_2 ;
  wire \col_loc_fu_142_reg[31]_i_4_n_3 ;
  wire \col_loc_fu_142_reg[31]_i_5_n_0 ;
  wire \col_loc_fu_142_reg[31]_i_5_n_1 ;
  wire \col_loc_fu_142_reg[31]_i_5_n_2 ;
  wire \col_loc_fu_142_reg[31]_i_5_n_3 ;
  wire \col_loc_fu_142_reg[4]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[4]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[4]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[4]_i_2_n_3 ;
  wire \col_loc_fu_142_reg[8]_i_2_n_0 ;
  wire \col_loc_fu_142_reg[8]_i_2_n_1 ;
  wire \col_loc_fu_142_reg[8]_i_2_n_2 ;
  wire \col_loc_fu_142_reg[8]_i_2_n_3 ;
  wire \col_loc_fu_142_reg_n_0_[11] ;
  wire \col_loc_fu_142_reg_n_0_[12] ;
  wire \col_loc_fu_142_reg_n_0_[13] ;
  wire \col_loc_fu_142_reg_n_0_[14] ;
  wire \col_loc_fu_142_reg_n_0_[15] ;
  wire \col_loc_fu_142_reg_n_0_[16] ;
  wire \col_loc_fu_142_reg_n_0_[17] ;
  wire \col_loc_fu_142_reg_n_0_[18] ;
  wire \col_loc_fu_142_reg_n_0_[19] ;
  wire \col_loc_fu_142_reg_n_0_[20] ;
  wire \col_loc_fu_142_reg_n_0_[21] ;
  wire \col_loc_fu_142_reg_n_0_[22] ;
  wire \col_loc_fu_142_reg_n_0_[23] ;
  wire \col_loc_fu_142_reg_n_0_[24] ;
  wire \col_loc_fu_142_reg_n_0_[25] ;
  wire \col_loc_fu_142_reg_n_0_[26] ;
  wire \col_loc_fu_142_reg_n_0_[27] ;
  wire \col_loc_fu_142_reg_n_0_[28] ;
  wire \col_loc_fu_142_reg_n_0_[29] ;
  wire \col_loc_fu_142_reg_n_0_[30] ;
  wire \col_loc_fu_142_reg_n_0_[31] ;
  wire [31:0]col_new_fu_146;
  wire [15:8]d_V_2_2_fu_948_p2;
  wire dd_V_reg_11570;
  wire \dd_V_reg_1157[3]_i_10_n_0 ;
  wire \dd_V_reg_1157[3]_i_11_n_0 ;
  wire \dd_V_reg_1157[3]_i_12_n_0 ;
  wire \dd_V_reg_1157[3]_i_13_n_0 ;
  wire \dd_V_reg_1157[3]_i_14_n_0 ;
  wire \dd_V_reg_1157[3]_i_15_n_0 ;
  wire \dd_V_reg_1157[3]_i_16_n_0 ;
  wire \dd_V_reg_1157[3]_i_3_n_0 ;
  wire \dd_V_reg_1157[3]_i_4_n_0 ;
  wire \dd_V_reg_1157[3]_i_5_n_0 ;
  wire \dd_V_reg_1157[3]_i_6_n_0 ;
  wire \dd_V_reg_1157[3]_i_7_n_0 ;
  wire \dd_V_reg_1157[3]_i_8_n_0 ;
  wire \dd_V_reg_1157[3]_i_9_n_0 ;
  wire \dd_V_reg_1157[7]_i_3_n_0 ;
  wire \dd_V_reg_1157[7]_i_4_n_0 ;
  wire \dd_V_reg_1157[7]_i_5_n_0 ;
  wire \dd_V_reg_1157[7]_i_6_n_0 ;
  wire \dd_V_reg_1157[7]_i_7_n_0 ;
  wire \dd_V_reg_1157[7]_i_8_n_0 ;
  wire \dd_V_reg_1157[7]_i_9_n_0 ;
  wire \dd_V_reg_1157_reg[3]_i_1_n_0 ;
  wire \dd_V_reg_1157_reg[3]_i_1_n_1 ;
  wire \dd_V_reg_1157_reg[3]_i_1_n_2 ;
  wire \dd_V_reg_1157_reg[3]_i_1_n_3 ;
  wire \dd_V_reg_1157_reg[3]_i_2_n_0 ;
  wire \dd_V_reg_1157_reg[3]_i_2_n_1 ;
  wire \dd_V_reg_1157_reg[3]_i_2_n_2 ;
  wire \dd_V_reg_1157_reg[3]_i_2_n_3 ;
  wire \dd_V_reg_1157_reg[7]_i_2_n_1 ;
  wire \dd_V_reg_1157_reg[7]_i_2_n_2 ;
  wire \dd_V_reg_1157_reg[7]_i_2_n_3 ;
  wire [7:0]dst_V_V_din;
  wire dst_V_V_full_n;
  wire dst_V_V_write;
  wire exitcond1_fu_524_p2;
  wire \exitcond_reg_1076[0]_i_1_n_0 ;
  wire exitcond_reg_1076_pp0_iter1_reg;
  wire \exitcond_reg_1076_pp0_iter1_reg[0]_i_1_n_0 ;
  wire exitcond_reg_1076_pp0_iter2_reg;
  wire exitcond_reg_1076_pp0_iter3_reg;
  wire \exitcond_reg_1076_reg_n_0_[0] ;
  wire [31:1]grp_fu_373_p2;
  wire [11:0]h_V;
  wire [12:0]i_fu_529_p2;
  wire i_op_assign_1_reg_303;
  wire \i_op_assign_1_reg_303[0]_i_3_n_0 ;
  wire [12:0]i_op_assign_1_reg_303_reg;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_0 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_1 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_2 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_3 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_4 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_5 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_6 ;
  wire \i_op_assign_1_reg_303_reg[0]_i_2_n_7 ;
  wire \i_op_assign_1_reg_303_reg[12]_i_1_n_7 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_0 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_1 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_2 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_3 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_4 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_5 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_6 ;
  wire \i_op_assign_1_reg_303_reg[4]_i_1_n_7 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_0 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_1 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_2 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_3 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_4 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_5 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_6 ;
  wire \i_op_assign_1_reg_303_reg[8]_i_1_n_7 ;
  wire i_op_assign_reg_292;
  wire \i_op_assign_reg_292_reg_n_0_[12] ;
  wire [12:0]i_reg_1058;
  wire \i_reg_1058_reg[12]_i_1_n_1 ;
  wire \i_reg_1058_reg[12]_i_1_n_2 ;
  wire \i_reg_1058_reg[12]_i_1_n_3 ;
  wire \i_reg_1058_reg[4]_i_1_n_0 ;
  wire \i_reg_1058_reg[4]_i_1_n_1 ;
  wire \i_reg_1058_reg[4]_i_1_n_2 ;
  wire \i_reg_1058_reg[4]_i_1_n_3 ;
  wire \i_reg_1058_reg[8]_i_1_n_0 ;
  wire \i_reg_1058_reg[8]_i_1_n_1 ;
  wire \i_reg_1058_reg[8]_i_1_n_2 ;
  wire \i_reg_1058_reg[8]_i_1_n_3 ;
  wire or_cond1_reg_1085;
  wire \or_cond1_reg_1085[0]_i_1_n_0 ;
  wire or_cond_reg_1123;
  wire \or_cond_reg_1123[0]_i_1_n_0 ;
  wire or_cond_reg_1123_pp0_iter1_reg;
  wire \or_cond_reg_1123_pp0_iter1_reg[0]_i_1_n_0 ;
  wire or_cond_reg_1123_pp0_iter2_reg;
  wire or_cond_reg_1123_pp0_iter3_reg;
  wire [9:0]p_0_in;
  wire [31:0]p_1_in;
  wire p_40_in;
  wire [7:0]src_V_V_dout;
  wire src_V_V_empty_n;
  wire src_V_V_read;
  wire [14:4]tmp1_fu_909_p2;
  wire \tmp1_reg_1142[10]_i_10_n_0 ;
  wire \tmp1_reg_1142[10]_i_11_n_0 ;
  wire \tmp1_reg_1142[10]_i_12_n_0 ;
  wire \tmp1_reg_1142[10]_i_13_n_0 ;
  wire \tmp1_reg_1142[10]_i_14_n_0 ;
  wire \tmp1_reg_1142[10]_i_15_n_0 ;
  wire \tmp1_reg_1142[10]_i_2_n_0 ;
  wire \tmp1_reg_1142[10]_i_3_n_0 ;
  wire \tmp1_reg_1142[10]_i_4_n_0 ;
  wire \tmp1_reg_1142[10]_i_5_n_0 ;
  wire \tmp1_reg_1142[10]_i_6_n_0 ;
  wire \tmp1_reg_1142[10]_i_7_n_0 ;
  wire \tmp1_reg_1142[10]_i_8_n_0 ;
  wire \tmp1_reg_1142[10]_i_9_n_0 ;
  wire \tmp1_reg_1142[14]_i_10_n_0 ;
  wire \tmp1_reg_1142[14]_i_11_n_0 ;
  wire \tmp1_reg_1142[14]_i_2_n_0 ;
  wire \tmp1_reg_1142[14]_i_3_n_0 ;
  wire \tmp1_reg_1142[14]_i_4_n_0 ;
  wire \tmp1_reg_1142[14]_i_5_n_0 ;
  wire \tmp1_reg_1142[14]_i_6_n_0 ;
  wire \tmp1_reg_1142[14]_i_7_n_0 ;
  wire \tmp1_reg_1142[14]_i_8_n_0 ;
  wire \tmp1_reg_1142[14]_i_9_n_0 ;
  wire \tmp1_reg_1142[6]_i_2_n_0 ;
  wire \tmp1_reg_1142[6]_i_3_n_0 ;
  wire \tmp1_reg_1142[6]_i_4_n_0 ;
  wire \tmp1_reg_1142[6]_i_5_n_0 ;
  wire tmp1_reg_1142_reg0;
  wire \tmp1_reg_1142_reg[10]_i_1_n_0 ;
  wire \tmp1_reg_1142_reg[10]_i_1_n_1 ;
  wire \tmp1_reg_1142_reg[10]_i_1_n_2 ;
  wire \tmp1_reg_1142_reg[10]_i_1_n_3 ;
  wire \tmp1_reg_1142_reg[14]_i_1_n_2 ;
  wire \tmp1_reg_1142_reg[14]_i_1_n_3 ;
  wire \tmp1_reg_1142_reg[6]_i_1_n_0 ;
  wire \tmp1_reg_1142_reg[6]_i_1_n_1 ;
  wire \tmp1_reg_1142_reg[6]_i_1_n_2 ;
  wire \tmp1_reg_1142_reg[6]_i_1_n_3 ;
  wire \tmp1_reg_1142_reg_n_0_[10] ;
  wire \tmp1_reg_1142_reg_n_0_[11] ;
  wire \tmp1_reg_1142_reg_n_0_[12] ;
  wire \tmp1_reg_1142_reg_n_0_[13] ;
  wire \tmp1_reg_1142_reg_n_0_[14] ;
  wire \tmp1_reg_1142_reg_n_0_[4] ;
  wire \tmp1_reg_1142_reg_n_0_[5] ;
  wire \tmp1_reg_1142_reg_n_0_[6] ;
  wire \tmp1_reg_1142_reg_n_0_[7] ;
  wire \tmp1_reg_1142_reg_n_0_[8] ;
  wire \tmp1_reg_1142_reg_n_0_[9] ;
  wire [14:5]tmp5_cast_fu_936_p1;
  wire \tmp5_reg_1147[12]_i_2_n_0 ;
  wire \tmp5_reg_1147[12]_i_3_n_0 ;
  wire \tmp5_reg_1147[12]_i_4_n_0 ;
  wire \tmp5_reg_1147[12]_i_5_n_0 ;
  wire \tmp5_reg_1147[8]_i_2_n_0 ;
  wire \tmp5_reg_1147[8]_i_3_n_0 ;
  wire \tmp5_reg_1147[8]_i_4_n_0 ;
  wire \tmp5_reg_1147_reg[12]_i_1_n_0 ;
  wire \tmp5_reg_1147_reg[12]_i_1_n_1 ;
  wire \tmp5_reg_1147_reg[12]_i_1_n_2 ;
  wire \tmp5_reg_1147_reg[12]_i_1_n_3 ;
  wire \tmp5_reg_1147_reg[8]_i_1_n_0 ;
  wire \tmp5_reg_1147_reg[8]_i_1_n_1 ;
  wire \tmp5_reg_1147_reg[8]_i_1_n_2 ;
  wire \tmp5_reg_1147_reg[8]_i_1_n_3 ;
  wire [13:4]tmp6_cast_fu_939_p1;
  wire [13:4]tmp6_fu_927_p2;
  wire \tmp6_reg_1152[10]_i_2_n_0 ;
  wire \tmp6_reg_1152[10]_i_3_n_0 ;
  wire \tmp6_reg_1152[10]_i_4_n_0 ;
  wire \tmp6_reg_1152[10]_i_5_n_0 ;
  wire \tmp6_reg_1152[10]_i_6_n_0 ;
  wire \tmp6_reg_1152[10]_i_7_n_0 ;
  wire \tmp6_reg_1152[10]_i_8_n_0 ;
  wire \tmp6_reg_1152[10]_i_9_n_0 ;
  wire \tmp6_reg_1152[13]_i_2_n_0 ;
  wire \tmp6_reg_1152[13]_i_3_n_0 ;
  wire \tmp6_reg_1152[13]_i_4_n_0 ;
  wire \tmp6_reg_1152[6]_i_2_n_0 ;
  wire \tmp6_reg_1152[6]_i_3_n_0 ;
  wire \tmp6_reg_1152[6]_i_4_n_0 ;
  wire \tmp6_reg_1152[6]_i_5_n_0 ;
  wire \tmp6_reg_1152_reg[10]_i_1_n_0 ;
  wire \tmp6_reg_1152_reg[10]_i_1_n_1 ;
  wire \tmp6_reg_1152_reg[10]_i_1_n_2 ;
  wire \tmp6_reg_1152_reg[10]_i_1_n_3 ;
  wire \tmp6_reg_1152_reg[13]_i_1_n_3 ;
  wire \tmp6_reg_1152_reg[6]_i_1_n_0 ;
  wire \tmp6_reg_1152_reg[6]_i_1_n_1 ;
  wire \tmp6_reg_1152_reg[6]_i_1_n_2 ;
  wire \tmp6_reg_1152_reg[6]_i_1_n_3 ;
  wire tmp_11_reg_10890;
  wire [11:0]tmp_16_fu_663_p1;
  wire [11:0]tmp_1_cast_cast_reg_1034;
  wire [11:1]tmp_2_fu_428_p2;
  wire tmp_3_fu_540_p2;
  wire tmp_3_reg_1063;
  wire \tmp_3_reg_1063[0]_i_10_n_0 ;
  wire \tmp_3_reg_1063[0]_i_11_n_0 ;
  wire \tmp_3_reg_1063[0]_i_12_n_0 ;
  wire \tmp_3_reg_1063[0]_i_13_n_0 ;
  wire \tmp_3_reg_1063[0]_i_14_n_0 ;
  wire \tmp_3_reg_1063[0]_i_15_n_0 ;
  wire \tmp_3_reg_1063[0]_i_16_n_0 ;
  wire \tmp_3_reg_1063[0]_i_1_n_0 ;
  wire \tmp_3_reg_1063[0]_i_4_n_0 ;
  wire \tmp_3_reg_1063[0]_i_5_n_0 ;
  wire \tmp_3_reg_1063[0]_i_6_n_0 ;
  wire \tmp_3_reg_1063[0]_i_7_n_0 ;
  wire \tmp_3_reg_1063[0]_i_8_n_0 ;
  wire \tmp_3_reg_1063[0]_i_9_n_0 ;
  wire \tmp_3_reg_1063_reg[0]_i_2_n_2 ;
  wire \tmp_3_reg_1063_reg[0]_i_2_n_3 ;
  wire \tmp_3_reg_1063_reg[0]_i_3_n_0 ;
  wire \tmp_3_reg_1063_reg[0]_i_3_n_1 ;
  wire \tmp_3_reg_1063_reg[0]_i_3_n_2 ;
  wire \tmp_3_reg_1063_reg[0]_i_3_n_3 ;
  wire [12:5]tmp_44_0_1_cast_fu_795_p1;
  wire [11:4]tmp_44_0_2_cast_fu_807_p1;
  wire [13:6]tmp_44_1_1_cast_fu_834_p1;
  wire [12:5]tmp_44_1_2_cast_fu_846_p1;
  wire [12:5]tmp_44_1_cast_fu_823_p1;
  wire [12:5]tmp_44_2_1_cast_fu_873_p1;
  wire [11:4]tmp_44_2_2_cast_fu_885_p1;
  wire [11:4]tmp_44_2_cast_fu_862_p1;
  wire [11:4]tmp_44_cast_fu_784_p1;
  wire tmp_4_fu_545_p2;
  wire tmp_4_reg_1068;
  wire \tmp_4_reg_1068[0]_i_1_n_0 ;
  wire \tmp_4_reg_1068[0]_i_3_n_0 ;
  wire \tmp_4_reg_1068[0]_i_4_n_0 ;
  wire tmp_5_fu_574_p2;
  wire [11:0]tmp_7_cast_cast_reg_1039_reg__0;
  wire tmp_7_reg_11060;
  wire [12:0]tmp_9_fu_472_p2;
  wire [12:0]tmp_9_reg_1044;
  wire \tmp_9_reg_1044_reg[12]_i_1_n_2 ;
  wire \tmp_9_reg_1044_reg[12]_i_1_n_3 ;
  wire \tmp_9_reg_1044_reg[4]_i_1_n_0 ;
  wire \tmp_9_reg_1044_reg[4]_i_1_n_1 ;
  wire \tmp_9_reg_1044_reg[4]_i_1_n_2 ;
  wire \tmp_9_reg_1044_reg[4]_i_1_n_3 ;
  wire \tmp_9_reg_1044_reg[8]_i_1_n_0 ;
  wire \tmp_9_reg_1044_reg[8]_i_1_n_1 ;
  wire \tmp_9_reg_1044_reg[8]_i_1_n_2 ;
  wire \tmp_9_reg_1044_reg[8]_i_1_n_3 ;
  wire [7:0]tmp_V_1_fu_174;
  wire \tmp_V_1_fu_174[0]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[1]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[2]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[3]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[4]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[5]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[6]_i_1_n_0 ;
  wire \tmp_V_1_fu_174[7]_i_1_n_0 ;
  wire tmp_V_fu_170;
  wire \tmp_V_fu_170[0]_i_1_n_0 ;
  wire \tmp_V_fu_170[1]_i_1_n_0 ;
  wire \tmp_V_fu_170[2]_i_1_n_0 ;
  wire \tmp_V_fu_170[3]_i_1_n_0 ;
  wire \tmp_V_fu_170[4]_i_1_n_0 ;
  wire \tmp_V_fu_170[5]_i_1_n_0 ;
  wire \tmp_V_fu_170[6]_i_1_n_0 ;
  wire \tmp_V_fu_170[7]_i_2_n_0 ;
  wire \tmp_V_fu_170_reg_n_0_[0] ;
  wire \tmp_V_fu_170_reg_n_0_[1] ;
  wire \tmp_V_fu_170_reg_n_0_[2] ;
  wire \tmp_V_fu_170_reg_n_0_[3] ;
  wire \tmp_V_fu_170_reg_n_0_[4] ;
  wire \tmp_V_fu_170_reg_n_0_[5] ;
  wire \tmp_V_fu_170_reg_n_0_[6] ;
  wire \tmp_V_fu_170_reg_n_0_[7] ;
  wire tmp_V_load_1_reg_11370;
  wire [12:0]tmp_s_fu_478_p2;
  wire [12:0]tmp_s_reg_1049;
  wire \tmp_s_reg_1049_reg[12]_i_2_n_2 ;
  wire \tmp_s_reg_1049_reg[12]_i_2_n_3 ;
  wire \tmp_s_reg_1049_reg[4]_i_1_n_0 ;
  wire \tmp_s_reg_1049_reg[4]_i_1_n_1 ;
  wire \tmp_s_reg_1049_reg[4]_i_1_n_2 ;
  wire \tmp_s_reg_1049_reg[4]_i_1_n_3 ;
  wire \tmp_s_reg_1049_reg[8]_i_1_n_0 ;
  wire \tmp_s_reg_1049_reg[8]_i_1_n_1 ;
  wire \tmp_s_reg_1049_reg[8]_i_1_n_2 ;
  wire \tmp_s_reg_1049_reg[8]_i_1_n_3 ;
  wire [11:0]w_V;
  wire wlb_lb_val_V_0_U_n_10;
  wire wlb_lb_val_V_0_U_n_11;
  wire wlb_lb_val_V_0_U_n_12;
  wire wlb_lb_val_V_0_U_n_13;
  wire wlb_lb_val_V_0_U_n_14;
  wire wlb_lb_val_V_0_U_n_15;
  wire wlb_lb_val_V_0_U_n_8;
  wire wlb_lb_val_V_0_U_n_9;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_10_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_11_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_12_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_13_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_14_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_15_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_16_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_4_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_5_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_6_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_7_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_8_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_9_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_n_2 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_n_3 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_0 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_1 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_2 ;
  wire \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_3 ;
  wire wlb_lb_val_V_0_ce0;
  wire wlb_lb_val_V_0_ce1;
  wire [7:0]wlb_lb_val_V_0_q0;
  wire wlb_lb_val_V_1_U_n_21;
  wire wlb_lb_val_V_1_U_n_23;
  wire wlb_lb_val_V_1_U_n_24;
  wire wlb_lb_val_V_1_U_n_25;
  wire wlb_lb_val_V_1_U_n_26;
  wire wlb_lb_val_V_1_U_n_27;
  wire wlb_lb_val_V_1_U_n_28;
  wire wlb_lb_val_V_1_U_n_29;
  wire wlb_lb_val_V_1_U_n_30;
  wire [10:0]wlb_lb_val_V_1_addr_1_reg_1100;
  wire [10:0]wlb_lb_val_V_1_addr_reg_1117;
  wire [10:0]wlb_lb_val_V_1_address1;
  wire [7:0]wlb_lb_val_V_1_q0;
  wire wlb_w_val_V_0_0;
  wire \wlb_w_val_V_0_0[7]_i_1_n_0 ;
  wire \wlb_w_val_V_0_0[7]_i_3_n_0 ;
  wire wlb_w_val_V_0_0_loc_2_reg_337;
  wire \wlb_w_val_V_0_0_reg_n_0_[0] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[1] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[2] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[3] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[4] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[5] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[6] ;
  wire \wlb_w_val_V_0_0_reg_n_0_[7] ;
  wire [7:0]wlb_w_val_V_0_1;
  wire [7:0]wlb_w_val_V_1_0_loc_fu_162;
  wire [7:0]wlb_w_val_V_1_1;
  wire [7:0]wlb_w_val_V_1_1_loc_fu_166;
  wire \wlb_w_val_V_1_1_loc_fu_166[0]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[1]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[2]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[3]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[4]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[5]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[6]_i_1_n_0 ;
  wire \wlb_w_val_V_1_1_loc_fu_166[7]_i_1_n_0 ;
  wire [7:0]wlb_w_val_V_2_0_loc_fu_154;
  wire [7:0]wlb_w_val_V_2_1;
  wire wlb_w_val_V_2_1_loc_fu_158;
  wire \wlb_w_val_V_2_1_loc_fu_158[0]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[1]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[2]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[3]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[4]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[5]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[6]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158[7]_i_1_n_0 ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[0] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[1] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[2] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[3] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[4] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[5] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[6] ;
  wire \wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[7] ;
  wire [11:0]wlb_xsize_V;
  wire \wlb_xsize_V_reg[11]_i_1_n_2 ;
  wire \wlb_xsize_V_reg[11]_i_1_n_3 ;
  wire \wlb_xsize_V_reg[4]_i_1_n_0 ;
  wire \wlb_xsize_V_reg[4]_i_1_n_1 ;
  wire \wlb_xsize_V_reg[4]_i_1_n_2 ;
  wire \wlb_xsize_V_reg[4]_i_1_n_3 ;
  wire \wlb_xsize_V_reg[8]_i_1_n_0 ;
  wire \wlb_xsize_V_reg[8]_i_1_n_1 ;
  wire \wlb_xsize_V_reg[8]_i_1_n_2 ;
  wire \wlb_xsize_V_reg[8]_i_1_n_3 ;
  wire [11:0]x_V;
  wire \x_V[1]_INST_0_n_0 ;
  wire \x_V[1]_INST_0_n_1 ;
  wire \x_V[1]_INST_0_n_2 ;
  wire \x_V[1]_INST_0_n_3 ;
  wire \x_V[5]_INST_0_n_0 ;
  wire \x_V[5]_INST_0_n_1 ;
  wire \x_V[5]_INST_0_n_2 ;
  wire \x_V[5]_INST_0_n_3 ;
  wire \x_V[9]_INST_0_n_2 ;
  wire \x_V[9]_INST_0_n_3 ;
  wire x_V_ap_vld;
  wire x_V_ap_vld_INST_0_i_10_n_0;
  wire x_V_ap_vld_INST_0_i_11_n_0;
  wire x_V_ap_vld_INST_0_i_12_n_0;
  wire x_V_ap_vld_INST_0_i_3_n_0;
  wire x_V_ap_vld_INST_0_i_4_n_0;
  wire x_V_ap_vld_INST_0_i_5_n_0;
  wire x_V_ap_vld_INST_0_i_7_n_0;
  wire x_V_ap_vld_INST_0_i_7_n_1;
  wire x_V_ap_vld_INST_0_i_7_n_2;
  wire x_V_ap_vld_INST_0_i_7_n_3;
  wire x_V_ap_vld_INST_0_i_8_n_0;
  wire x_V_ap_vld_INST_0_i_9_n_0;
  wire [11:0]y_V;
  wire y_V_ap_vld;
  wire [3:1]NLW_ap_ready_INST_0_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_ap_ready_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_ap_ready_INST_0_i_2_O_UNCONNECTED;
  wire [3:3]\NLW_c_1_reg_325_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_col_loc_fu_142_reg[31]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_col_loc_fu_142_reg[31]_i_15_O_UNCONNECTED ;
  wire [3:2]\NLW_col_loc_fu_142_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_col_loc_fu_142_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_col_loc_fu_142_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_col_loc_fu_142_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_dd_V_reg_1157_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_dd_V_reg_1157_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_op_assign_1_reg_303_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_i_op_assign_1_reg_303_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_i_reg_1058_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:2]\NLW_tmp1_reg_1142_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp1_reg_1142_reg[14]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_tmp1_reg_1142_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp5_reg_1147_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp5_reg_1147_reg[14]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp6_reg_1152_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp6_reg_1152_reg[13]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_tmp6_reg_1152_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_tmp_3_reg_1063_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_3_reg_1063_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_3_reg_1063_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:2]\NLW_tmp_9_reg_1044_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp_9_reg_1044_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_tmp_s_reg_1049_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp_s_reg_1049_reg[12]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_wlb_xsize_V_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wlb_xsize_V_reg[11]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_wlb_xsize_V_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_x_V[9]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_V[9]_INST_0_O_UNCONNECTED ;
  wire [3:1]NLW_x_V_ap_vld_INST_0_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_x_V_ap_vld_INST_0_i_6_O_UNCONNECTED;
  wire [3:0]NLW_x_V_ap_vld_INST_0_i_7_O_UNCONNECTED;

  assign ap_done = ap_ready;
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(exitcond1_fu_524_p2),
        .O(ap_NS_fsm[0]));
  LUT3 #(
    .INIT(8'hF8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state8),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(exitcond1_fu_524_p2),
        .I1(ap_CS_fsm_state2),
        .I2(\ap_CS_fsm[2]_i_2_n_0 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_CS_fsm_pp0_stage017_in),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h2020FF20)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(ap_enable_reg_pp0_iter4_reg_n_0),
        .I4(ap_enable_reg_pp0_iter3),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044F44444)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_enable_reg_pp0_iter4_reg_n_0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(\ap_CS_fsm[3]_i_2_n_0 ),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage017_in),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h4454445400004454)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_state2),
        .I3(exitcond1_fu_524_p2),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(\ap_CS_fsm[3]_i_2_n_0 ),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44440050)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .I4(ap_block_pp0_stage0_subdone),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter3_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(ap_enable_reg_pp0_iter3),
        .O(ap_enable_reg_pp0_iter3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h4450005044504450)) 
    ap_enable_reg_pp0_iter4_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter4_reg_n_0),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(exitcond1_fu_524_p2),
        .I5(ap_CS_fsm_state2),
        .O(ap_enable_reg_pp0_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter4_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_ready_INST_0
       (.I0(exitcond1_fu_524_p2),
        .I1(ap_CS_fsm_state2),
        .O(ap_ready));
  CARRY4 ap_ready_INST_0_i_1
       (.CI(ap_ready_INST_0_i_2_n_0),
        .CO({NLW_ap_ready_INST_0_i_1_CO_UNCONNECTED[3:1],exitcond1_fu_524_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_ready_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,ap_ready_INST_0_i_3_n_0}));
  CARRY4 ap_ready_INST_0_i_2
       (.CI(1'b0),
        .CO({ap_ready_INST_0_i_2_n_0,ap_ready_INST_0_i_2_n_1,ap_ready_INST_0_i_2_n_2,ap_ready_INST_0_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_ready_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({ap_ready_INST_0_i_4_n_0,ap_ready_INST_0_i_5_n_0,ap_ready_INST_0_i_6_n_0,ap_ready_INST_0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ap_ready_INST_0_i_3
       (.I0(tmp_s_reg_1049[12]),
        .I1(\i_op_assign_reg_292_reg_n_0_[12] ),
        .O(ap_ready_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_ready_INST_0_i_4
       (.I0(y_V[10]),
        .I1(tmp_s_reg_1049[10]),
        .I2(y_V[9]),
        .I3(tmp_s_reg_1049[9]),
        .I4(y_V[11]),
        .I5(tmp_s_reg_1049[11]),
        .O(ap_ready_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_ready_INST_0_i_5
       (.I0(y_V[7]),
        .I1(tmp_s_reg_1049[7]),
        .I2(y_V[6]),
        .I3(tmp_s_reg_1049[6]),
        .I4(y_V[8]),
        .I5(tmp_s_reg_1049[8]),
        .O(ap_ready_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_ready_INST_0_i_6
       (.I0(y_V[4]),
        .I1(tmp_s_reg_1049[4]),
        .I2(y_V[3]),
        .I3(tmp_s_reg_1049[3]),
        .I4(y_V[5]),
        .I5(tmp_s_reg_1049[5]),
        .O(ap_ready_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_ready_INST_0_i_7
       (.I0(y_V[1]),
        .I1(tmp_s_reg_1049[1]),
        .I2(y_V[0]),
        .I3(tmp_s_reg_1049[0]),
        .I4(y_V[2]),
        .I5(tmp_s_reg_1049[2]),
        .O(ap_ready_INST_0_i_7_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \c_1_reg_325[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_block_pp0_stage0_subdone),
        .O(ap_condition_182));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[0]_i_3 
       (.I0(c_1_reg_325_reg[3]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[3] ),
        .O(\c_1_reg_325[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[0]_i_4 
       (.I0(c_1_reg_325_reg[2]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[2] ),
        .O(\c_1_reg_325[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[0]_i_5 
       (.I0(c_1_reg_325_reg[1]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[1] ),
        .O(\c_1_reg_325[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h111EEE1E)) 
    \c_1_reg_325[0]_i_6 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(p_40_in),
        .I2(\c_reg_314_reg_n_0_[0] ),
        .I3(ap_condition_256),
        .I4(c_1_reg_325_reg[0]),
        .O(\c_1_reg_325[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_1_reg_325[0]_i_7 
       (.I0(\exitcond_reg_1076_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_CS_fsm_pp0_stage017_in),
        .O(ap_condition_256));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[4]_i_2 
       (.I0(c_1_reg_325_reg[7]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[7] ),
        .O(\c_1_reg_325[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[4]_i_3 
       (.I0(c_1_reg_325_reg[6]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[6] ),
        .O(\c_1_reg_325[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[4]_i_4 
       (.I0(c_1_reg_325_reg[5]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[5] ),
        .O(\c_1_reg_325[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[4]_i_5 
       (.I0(c_1_reg_325_reg[4]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[4] ),
        .O(\c_1_reg_325[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[8]_i_2 
       (.I0(c_1_reg_325_reg[11]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[11] ),
        .O(\c_1_reg_325[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[8]_i_3 
       (.I0(c_1_reg_325_reg[10]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[10] ),
        .O(\c_1_reg_325[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[8]_i_4 
       (.I0(c_1_reg_325_reg[9]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[9] ),
        .O(\c_1_reg_325[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \c_1_reg_325[8]_i_5 
       (.I0(c_1_reg_325_reg[8]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[8] ),
        .O(\c_1_reg_325[8]_i_5_n_0 ));
  FDRE \c_1_reg_325_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[0]_i_2_n_7 ),
        .Q(c_1_reg_325_reg[0]),
        .R(1'b0));
  CARRY4 \c_1_reg_325_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\c_1_reg_325_reg[0]_i_2_n_0 ,\c_1_reg_325_reg[0]_i_2_n_1 ,\c_1_reg_325_reg[0]_i_2_n_2 ,\c_1_reg_325_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,tmp_16_fu_663_p1[0]}),
        .O({\c_1_reg_325_reg[0]_i_2_n_4 ,\c_1_reg_325_reg[0]_i_2_n_5 ,\c_1_reg_325_reg[0]_i_2_n_6 ,\c_1_reg_325_reg[0]_i_2_n_7 }),
        .S({\c_1_reg_325[0]_i_3_n_0 ,\c_1_reg_325[0]_i_4_n_0 ,\c_1_reg_325[0]_i_5_n_0 ,\c_1_reg_325[0]_i_6_n_0 }));
  FDRE \c_1_reg_325_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[8]_i_1_n_5 ),
        .Q(c_1_reg_325_reg[10]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[11] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[8]_i_1_n_4 ),
        .Q(c_1_reg_325_reg[11]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[0]_i_2_n_6 ),
        .Q(c_1_reg_325_reg[1]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[0]_i_2_n_5 ),
        .Q(c_1_reg_325_reg[2]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[0]_i_2_n_4 ),
        .Q(c_1_reg_325_reg[3]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[4]_i_1_n_7 ),
        .Q(c_1_reg_325_reg[4]),
        .R(1'b0));
  CARRY4 \c_1_reg_325_reg[4]_i_1 
       (.CI(\c_1_reg_325_reg[0]_i_2_n_0 ),
        .CO({\c_1_reg_325_reg[4]_i_1_n_0 ,\c_1_reg_325_reg[4]_i_1_n_1 ,\c_1_reg_325_reg[4]_i_1_n_2 ,\c_1_reg_325_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_1_reg_325_reg[4]_i_1_n_4 ,\c_1_reg_325_reg[4]_i_1_n_5 ,\c_1_reg_325_reg[4]_i_1_n_6 ,\c_1_reg_325_reg[4]_i_1_n_7 }),
        .S({\c_1_reg_325[4]_i_2_n_0 ,\c_1_reg_325[4]_i_3_n_0 ,\c_1_reg_325[4]_i_4_n_0 ,\c_1_reg_325[4]_i_5_n_0 }));
  FDRE \c_1_reg_325_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[4]_i_1_n_6 ),
        .Q(c_1_reg_325_reg[5]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[4]_i_1_n_5 ),
        .Q(c_1_reg_325_reg[6]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[4]_i_1_n_4 ),
        .Q(c_1_reg_325_reg[7]),
        .R(1'b0));
  FDRE \c_1_reg_325_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[8]_i_1_n_7 ),
        .Q(c_1_reg_325_reg[8]),
        .R(1'b0));
  CARRY4 \c_1_reg_325_reg[8]_i_1 
       (.CI(\c_1_reg_325_reg[4]_i_1_n_0 ),
        .CO({\NLW_c_1_reg_325_reg[8]_i_1_CO_UNCONNECTED [3],\c_1_reg_325_reg[8]_i_1_n_1 ,\c_1_reg_325_reg[8]_i_1_n_2 ,\c_1_reg_325_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_1_reg_325_reg[8]_i_1_n_4 ,\c_1_reg_325_reg[8]_i_1_n_5 ,\c_1_reg_325_reg[8]_i_1_n_6 ,\c_1_reg_325_reg[8]_i_1_n_7 }),
        .S({\c_1_reg_325[8]_i_2_n_0 ,\c_1_reg_325[8]_i_3_n_0 ,\c_1_reg_325[8]_i_4_n_0 ,\c_1_reg_325[8]_i_5_n_0 }));
  FDRE \c_1_reg_325_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_182),
        .D(\c_1_reg_325_reg[8]_i_1_n_6 ),
        .Q(c_1_reg_325_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFF70000)) 
    \c_reg_314[11]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_CS_fsm_state2),
        .I5(exitcond1_fu_524_p2),
        .O(c_reg_314));
  LUT4 #(
    .INIT(16'h0008)) 
    \c_reg_314[11]_i_2 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .O(c_reg_3140));
  FDRE \c_reg_314_reg[0] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[0]),
        .Q(\c_reg_314_reg_n_0_[0] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[10] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[10]),
        .Q(\c_reg_314_reg_n_0_[10] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[11] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[11]),
        .Q(\c_reg_314_reg_n_0_[11] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[1] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[1]),
        .Q(\c_reg_314_reg_n_0_[1] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[2] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[2]),
        .Q(\c_reg_314_reg_n_0_[2] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[3] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[3]),
        .Q(\c_reg_314_reg_n_0_[3] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[4] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[4]),
        .Q(\c_reg_314_reg_n_0_[4] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[5] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[5]),
        .Q(\c_reg_314_reg_n_0_[5] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[6] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[6]),
        .Q(\c_reg_314_reg_n_0_[6] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[7] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[7]),
        .Q(\c_reg_314_reg_n_0_[7] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[8] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[8]),
        .Q(\c_reg_314_reg_n_0_[8] ),
        .R(c_reg_314));
  FDRE \c_reg_314_reg[9] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(c_1_reg_325_reg[9]),
        .Q(\c_reg_314_reg_n_0_[9] ),
        .R(c_reg_314));
  LUT3 #(
    .INIT(8'h80)) 
    \col[31]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(exitcond1_fu_524_p2),
        .I2(col_flag_fu_150),
        .O(col0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2AFF)) 
    \col_flag_fu_150[0]_i_1 
       (.I0(col_flag_fu_150),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(\col_flag_fu_150[0]_i_1_n_0 ));
  FDRE \col_flag_fu_150_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\col_flag_fu_150[0]_i_1_n_0 ),
        .Q(col_flag_fu_150),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA30)) 
    \col_loc_fu_142[0]_i_1 
       (.I0(col[0]),
        .I1(col_loc_fu_142[0]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[10]_i_1 
       (.I0(col[10]),
        .I1(grp_fu_373_p2[10]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[11]_i_1 
       (.I0(col[11]),
        .I1(grp_fu_373_p2[11]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[12]_i_1 
       (.I0(col[12]),
        .I1(grp_fu_373_p2[12]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[13]_i_1 
       (.I0(col[13]),
        .I1(grp_fu_373_p2[13]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[14]_i_1 
       (.I0(col[14]),
        .I1(grp_fu_373_p2[14]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[15]_i_1 
       (.I0(col[15]),
        .I1(grp_fu_373_p2[15]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[16]_i_1 
       (.I0(col[16]),
        .I1(grp_fu_373_p2[16]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[17]_i_1 
       (.I0(col[17]),
        .I1(grp_fu_373_p2[17]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[18]_i_1 
       (.I0(col[18]),
        .I1(grp_fu_373_p2[18]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[19]_i_1 
       (.I0(col[19]),
        .I1(grp_fu_373_p2[19]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[19]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[1]_i_1 
       (.I0(col[1]),
        .I1(grp_fu_373_p2[1]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[20]_i_1 
       (.I0(col[20]),
        .I1(grp_fu_373_p2[20]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[21]_i_1 
       (.I0(col[21]),
        .I1(grp_fu_373_p2[21]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[21]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[22]_i_1 
       (.I0(col[22]),
        .I1(grp_fu_373_p2[22]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[22]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[23]_i_1 
       (.I0(col[23]),
        .I1(grp_fu_373_p2[23]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[24]_i_1 
       (.I0(col[24]),
        .I1(grp_fu_373_p2[24]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[24]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[25]_i_1 
       (.I0(col[25]),
        .I1(grp_fu_373_p2[25]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[26]_i_1 
       (.I0(col[26]),
        .I1(grp_fu_373_p2[26]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[27]_i_1 
       (.I0(col[27]),
        .I1(grp_fu_373_p2[27]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[28]_i_1 
       (.I0(col[28]),
        .I1(grp_fu_373_p2[28]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[29]_i_1 
       (.I0(col[29]),
        .I1(grp_fu_373_p2[29]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[2]_i_1 
       (.I0(col[2]),
        .I1(grp_fu_373_p2[2]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[30]_i_1 
       (.I0(col[30]),
        .I1(grp_fu_373_p2[30]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[30]));
  LUT3 #(
    .INIT(8'h8F)) 
    \col_loc_fu_142[31]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(wlb_lb_val_V_1_U_n_21),
        .O(\col_loc_fu_142[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_11 
       (.I0(grp_fu_373_p2[23]),
        .I1(grp_fu_373_p2[22]),
        .O(\col_loc_fu_142[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_12 
       (.I0(grp_fu_373_p2[21]),
        .I1(grp_fu_373_p2[20]),
        .O(\col_loc_fu_142[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_13 
       (.I0(grp_fu_373_p2[19]),
        .I1(grp_fu_373_p2[18]),
        .O(\col_loc_fu_142[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_14 
       (.I0(grp_fu_373_p2[17]),
        .I1(grp_fu_373_p2[16]),
        .O(\col_loc_fu_142[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \col_loc_fu_142[31]_i_16 
       (.I0(wlb_xsize_V[10]),
        .I1(grp_fu_373_p2[10]),
        .I2(grp_fu_373_p2[11]),
        .I3(wlb_xsize_V[11]),
        .O(\col_loc_fu_142[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \col_loc_fu_142[31]_i_17 
       (.I0(wlb_xsize_V[8]),
        .I1(grp_fu_373_p2[8]),
        .I2(grp_fu_373_p2[9]),
        .I3(wlb_xsize_V[9]),
        .O(\col_loc_fu_142[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_18 
       (.I0(grp_fu_373_p2[15]),
        .I1(grp_fu_373_p2[14]),
        .O(\col_loc_fu_142[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_19 
       (.I0(grp_fu_373_p2[13]),
        .I1(grp_fu_373_p2[12]),
        .O(\col_loc_fu_142[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[31]_i_2 
       (.I0(col[31]),
        .I1(grp_fu_373_p2[31]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h9009)) 
    \col_loc_fu_142[31]_i_20 
       (.I0(grp_fu_373_p2[11]),
        .I1(wlb_xsize_V[11]),
        .I2(wlb_xsize_V[10]),
        .I3(grp_fu_373_p2[10]),
        .O(\col_loc_fu_142[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \col_loc_fu_142[31]_i_21 
       (.I0(grp_fu_373_p2[9]),
        .I1(wlb_xsize_V[9]),
        .I2(wlb_xsize_V[8]),
        .I3(grp_fu_373_p2[8]),
        .O(\col_loc_fu_142[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \col_loc_fu_142[31]_i_22 
       (.I0(wlb_xsize_V[6]),
        .I1(grp_fu_373_p2[6]),
        .I2(grp_fu_373_p2[7]),
        .I3(wlb_xsize_V[7]),
        .O(\col_loc_fu_142[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \col_loc_fu_142[31]_i_23 
       (.I0(wlb_xsize_V[4]),
        .I1(grp_fu_373_p2[4]),
        .I2(grp_fu_373_p2[5]),
        .I3(wlb_xsize_V[5]),
        .O(\col_loc_fu_142[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \col_loc_fu_142[31]_i_24 
       (.I0(wlb_xsize_V[2]),
        .I1(grp_fu_373_p2[2]),
        .I2(grp_fu_373_p2[3]),
        .I3(wlb_xsize_V[3]),
        .O(\col_loc_fu_142[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \col_loc_fu_142[31]_i_25 
       (.I0(col_loc_fu_142[0]),
        .I1(wlb_xsize_V[0]),
        .I2(grp_fu_373_p2[1]),
        .I3(wlb_xsize_V[1]),
        .O(\col_loc_fu_142[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \col_loc_fu_142[31]_i_26 
       (.I0(grp_fu_373_p2[7]),
        .I1(wlb_xsize_V[7]),
        .I2(wlb_xsize_V[6]),
        .I3(grp_fu_373_p2[6]),
        .O(\col_loc_fu_142[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \col_loc_fu_142[31]_i_27 
       (.I0(grp_fu_373_p2[5]),
        .I1(wlb_xsize_V[5]),
        .I2(wlb_xsize_V[4]),
        .I3(grp_fu_373_p2[4]),
        .O(\col_loc_fu_142[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \col_loc_fu_142[31]_i_28 
       (.I0(grp_fu_373_p2[3]),
        .I1(wlb_xsize_V[3]),
        .I2(wlb_xsize_V[2]),
        .I3(grp_fu_373_p2[2]),
        .O(\col_loc_fu_142[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \col_loc_fu_142[31]_i_29 
       (.I0(grp_fu_373_p2[1]),
        .I1(wlb_xsize_V[1]),
        .I2(wlb_xsize_V[0]),
        .I3(col_loc_fu_142[0]),
        .O(\col_loc_fu_142[31]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_6 
       (.I0(grp_fu_373_p2[31]),
        .I1(grp_fu_373_p2[30]),
        .O(\col_loc_fu_142[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_7 
       (.I0(grp_fu_373_p2[29]),
        .I1(grp_fu_373_p2[28]),
        .O(\col_loc_fu_142[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_8 
       (.I0(grp_fu_373_p2[27]),
        .I1(grp_fu_373_p2[26]),
        .O(\col_loc_fu_142[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \col_loc_fu_142[31]_i_9 
       (.I0(grp_fu_373_p2[25]),
        .I1(grp_fu_373_p2[24]),
        .O(\col_loc_fu_142[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[3]_i_1 
       (.I0(col[3]),
        .I1(grp_fu_373_p2[3]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[4]_i_1 
       (.I0(col[4]),
        .I1(grp_fu_373_p2[4]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[5]_i_1 
       (.I0(col[5]),
        .I1(grp_fu_373_p2[5]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[6]_i_1 
       (.I0(col[6]),
        .I1(grp_fu_373_p2[6]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[7]_i_1 
       (.I0(col[7]),
        .I1(grp_fu_373_p2[7]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[8]_i_1 
       (.I0(col[8]),
        .I1(grp_fu_373_p2[8]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \col_loc_fu_142[9]_i_1 
       (.I0(col[9]),
        .I1(grp_fu_373_p2[9]),
        .I2(\col_loc_fu_142_reg[31]_i_4_n_0 ),
        .I3(wlb_lb_val_V_1_U_n_21),
        .O(p_1_in[9]));
  FDRE \col_loc_fu_142_reg[0] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(col_loc_fu_142[0]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[10] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(col_loc_fu_142[10]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[11] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\col_loc_fu_142_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[12] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\col_loc_fu_142_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[12]_i_2 
       (.CI(\col_loc_fu_142_reg[8]_i_2_n_0 ),
        .CO({\col_loc_fu_142_reg[12]_i_2_n_0 ,\col_loc_fu_142_reg[12]_i_2_n_1 ,\col_loc_fu_142_reg[12]_i_2_n_2 ,\col_loc_fu_142_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[12:9]),
        .S({\col_loc_fu_142_reg_n_0_[12] ,\col_loc_fu_142_reg_n_0_[11] ,col_loc_fu_142[10:9]}));
  FDRE \col_loc_fu_142_reg[13] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\col_loc_fu_142_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[14] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\col_loc_fu_142_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[15] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\col_loc_fu_142_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[16] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\col_loc_fu_142_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[16]_i_2 
       (.CI(\col_loc_fu_142_reg[12]_i_2_n_0 ),
        .CO({\col_loc_fu_142_reg[16]_i_2_n_0 ,\col_loc_fu_142_reg[16]_i_2_n_1 ,\col_loc_fu_142_reg[16]_i_2_n_2 ,\col_loc_fu_142_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[16:13]),
        .S({\col_loc_fu_142_reg_n_0_[16] ,\col_loc_fu_142_reg_n_0_[15] ,\col_loc_fu_142_reg_n_0_[14] ,\col_loc_fu_142_reg_n_0_[13] }));
  FDRE \col_loc_fu_142_reg[17] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\col_loc_fu_142_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[18] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\col_loc_fu_142_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[19] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\col_loc_fu_142_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[1] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(col_loc_fu_142[1]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[20] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\col_loc_fu_142_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[20]_i_2 
       (.CI(\col_loc_fu_142_reg[16]_i_2_n_0 ),
        .CO({\col_loc_fu_142_reg[20]_i_2_n_0 ,\col_loc_fu_142_reg[20]_i_2_n_1 ,\col_loc_fu_142_reg[20]_i_2_n_2 ,\col_loc_fu_142_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[20:17]),
        .S({\col_loc_fu_142_reg_n_0_[20] ,\col_loc_fu_142_reg_n_0_[19] ,\col_loc_fu_142_reg_n_0_[18] ,\col_loc_fu_142_reg_n_0_[17] }));
  FDRE \col_loc_fu_142_reg[21] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\col_loc_fu_142_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[22] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\col_loc_fu_142_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[23] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(\col_loc_fu_142_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[24] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\col_loc_fu_142_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[24]_i_2 
       (.CI(\col_loc_fu_142_reg[20]_i_2_n_0 ),
        .CO({\col_loc_fu_142_reg[24]_i_2_n_0 ,\col_loc_fu_142_reg[24]_i_2_n_1 ,\col_loc_fu_142_reg[24]_i_2_n_2 ,\col_loc_fu_142_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[24:21]),
        .S({\col_loc_fu_142_reg_n_0_[24] ,\col_loc_fu_142_reg_n_0_[23] ,\col_loc_fu_142_reg_n_0_[22] ,\col_loc_fu_142_reg_n_0_[21] }));
  FDRE \col_loc_fu_142_reg[25] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(\col_loc_fu_142_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[26] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(\col_loc_fu_142_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[27] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(\col_loc_fu_142_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[28] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(\col_loc_fu_142_reg_n_0_[28] ),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[28]_i_2 
       (.CI(\col_loc_fu_142_reg[24]_i_2_n_0 ),
        .CO({\col_loc_fu_142_reg[28]_i_2_n_0 ,\col_loc_fu_142_reg[28]_i_2_n_1 ,\col_loc_fu_142_reg[28]_i_2_n_2 ,\col_loc_fu_142_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[28:25]),
        .S({\col_loc_fu_142_reg_n_0_[28] ,\col_loc_fu_142_reg_n_0_[27] ,\col_loc_fu_142_reg_n_0_[26] ,\col_loc_fu_142_reg_n_0_[25] }));
  FDRE \col_loc_fu_142_reg[29] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(\col_loc_fu_142_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[2] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(col_loc_fu_142[2]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[30] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(\col_loc_fu_142_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[31] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(\col_loc_fu_142_reg_n_0_[31] ),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[31]_i_10 
       (.CI(\col_loc_fu_142_reg[31]_i_15_n_0 ),
        .CO({\col_loc_fu_142_reg[31]_i_10_n_0 ,\col_loc_fu_142_reg[31]_i_10_n_1 ,\col_loc_fu_142_reg[31]_i_10_n_2 ,\col_loc_fu_142_reg[31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\col_loc_fu_142[31]_i_16_n_0 ,\col_loc_fu_142[31]_i_17_n_0 }),
        .O(\NLW_col_loc_fu_142_reg[31]_i_10_O_UNCONNECTED [3:0]),
        .S({\col_loc_fu_142[31]_i_18_n_0 ,\col_loc_fu_142[31]_i_19_n_0 ,\col_loc_fu_142[31]_i_20_n_0 ,\col_loc_fu_142[31]_i_21_n_0 }));
  CARRY4 \col_loc_fu_142_reg[31]_i_15 
       (.CI(1'b0),
        .CO({\col_loc_fu_142_reg[31]_i_15_n_0 ,\col_loc_fu_142_reg[31]_i_15_n_1 ,\col_loc_fu_142_reg[31]_i_15_n_2 ,\col_loc_fu_142_reg[31]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\col_loc_fu_142[31]_i_22_n_0 ,\col_loc_fu_142[31]_i_23_n_0 ,\col_loc_fu_142[31]_i_24_n_0 ,\col_loc_fu_142[31]_i_25_n_0 }),
        .O(\NLW_col_loc_fu_142_reg[31]_i_15_O_UNCONNECTED [3:0]),
        .S({\col_loc_fu_142[31]_i_26_n_0 ,\col_loc_fu_142[31]_i_27_n_0 ,\col_loc_fu_142[31]_i_28_n_0 ,\col_loc_fu_142[31]_i_29_n_0 }));
  CARRY4 \col_loc_fu_142_reg[31]_i_3 
       (.CI(\col_loc_fu_142_reg[28]_i_2_n_0 ),
        .CO({\NLW_col_loc_fu_142_reg[31]_i_3_CO_UNCONNECTED [3:2],\col_loc_fu_142_reg[31]_i_3_n_2 ,\col_loc_fu_142_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_col_loc_fu_142_reg[31]_i_3_O_UNCONNECTED [3],grp_fu_373_p2[31:29]}),
        .S({1'b0,\col_loc_fu_142_reg_n_0_[31] ,\col_loc_fu_142_reg_n_0_[30] ,\col_loc_fu_142_reg_n_0_[29] }));
  CARRY4 \col_loc_fu_142_reg[31]_i_4 
       (.CI(\col_loc_fu_142_reg[31]_i_5_n_0 ),
        .CO({\col_loc_fu_142_reg[31]_i_4_n_0 ,\col_loc_fu_142_reg[31]_i_4_n_1 ,\col_loc_fu_142_reg[31]_i_4_n_2 ,\col_loc_fu_142_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({grp_fu_373_p2[31],1'b0,1'b0,1'b0}),
        .O(\NLW_col_loc_fu_142_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\col_loc_fu_142[31]_i_6_n_0 ,\col_loc_fu_142[31]_i_7_n_0 ,\col_loc_fu_142[31]_i_8_n_0 ,\col_loc_fu_142[31]_i_9_n_0 }));
  CARRY4 \col_loc_fu_142_reg[31]_i_5 
       (.CI(\col_loc_fu_142_reg[31]_i_10_n_0 ),
        .CO({\col_loc_fu_142_reg[31]_i_5_n_0 ,\col_loc_fu_142_reg[31]_i_5_n_1 ,\col_loc_fu_142_reg[31]_i_5_n_2 ,\col_loc_fu_142_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_col_loc_fu_142_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\col_loc_fu_142[31]_i_11_n_0 ,\col_loc_fu_142[31]_i_12_n_0 ,\col_loc_fu_142[31]_i_13_n_0 ,\col_loc_fu_142[31]_i_14_n_0 }));
  FDRE \col_loc_fu_142_reg[3] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(col_loc_fu_142[3]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[4] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(col_loc_fu_142[4]),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\col_loc_fu_142_reg[4]_i_2_n_0 ,\col_loc_fu_142_reg[4]_i_2_n_1 ,\col_loc_fu_142_reg[4]_i_2_n_2 ,\col_loc_fu_142_reg[4]_i_2_n_3 }),
        .CYINIT(col_loc_fu_142[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[4:1]),
        .S(col_loc_fu_142[4:1]));
  FDRE \col_loc_fu_142_reg[5] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(col_loc_fu_142[5]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[6] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(col_loc_fu_142[6]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[7] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(col_loc_fu_142[7]),
        .R(1'b0));
  FDRE \col_loc_fu_142_reg[8] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(col_loc_fu_142[8]),
        .R(1'b0));
  CARRY4 \col_loc_fu_142_reg[8]_i_2 
       (.CI(\col_loc_fu_142_reg[4]_i_2_n_0 ),
        .CO({\col_loc_fu_142_reg[8]_i_2_n_0 ,\col_loc_fu_142_reg[8]_i_2_n_1 ,\col_loc_fu_142_reg[8]_i_2_n_2 ,\col_loc_fu_142_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_373_p2[8:5]),
        .S(col_loc_fu_142[8:5]));
  FDRE \col_loc_fu_142_reg[9] 
       (.C(ap_clk),
        .CE(\col_loc_fu_142[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(col_loc_fu_142[9]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[0] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[0]),
        .Q(col_new_fu_146[0]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[10] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[10]),
        .Q(col_new_fu_146[10]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[11] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[11] ),
        .Q(col_new_fu_146[11]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[12] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[12] ),
        .Q(col_new_fu_146[12]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[13] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[13] ),
        .Q(col_new_fu_146[13]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[14] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[14] ),
        .Q(col_new_fu_146[14]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[15] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[15] ),
        .Q(col_new_fu_146[15]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[16] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[16] ),
        .Q(col_new_fu_146[16]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[17] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[17] ),
        .Q(col_new_fu_146[17]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[18] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[18] ),
        .Q(col_new_fu_146[18]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[19] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[19] ),
        .Q(col_new_fu_146[19]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[1] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[1]),
        .Q(col_new_fu_146[1]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[20] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[20] ),
        .Q(col_new_fu_146[20]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[21] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[21] ),
        .Q(col_new_fu_146[21]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[22] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[22] ),
        .Q(col_new_fu_146[22]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[23] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[23] ),
        .Q(col_new_fu_146[23]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[24] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[24] ),
        .Q(col_new_fu_146[24]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[25] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[25] ),
        .Q(col_new_fu_146[25]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[26] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[26] ),
        .Q(col_new_fu_146[26]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[27] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[27] ),
        .Q(col_new_fu_146[27]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[28] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[28] ),
        .Q(col_new_fu_146[28]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[29] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[29] ),
        .Q(col_new_fu_146[29]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[2] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[2]),
        .Q(col_new_fu_146[2]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[30] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[30] ),
        .Q(col_new_fu_146[30]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[31] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(\col_loc_fu_142_reg_n_0_[31] ),
        .Q(col_new_fu_146[31]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[3] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[3]),
        .Q(col_new_fu_146[3]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[4] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[4]),
        .Q(col_new_fu_146[4]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[5] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[5]),
        .Q(col_new_fu_146[5]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[6] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[6]),
        .Q(col_new_fu_146[6]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[7] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[7]),
        .Q(col_new_fu_146[7]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[8] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[8]),
        .Q(col_new_fu_146[8]),
        .R(1'b0));
  FDRE \col_new_fu_146_reg[9] 
       (.C(ap_clk),
        .CE(c_reg_3140),
        .D(col_loc_fu_142[9]),
        .Q(col_new_fu_146[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[0] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[0]),
        .Q(col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[10] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[10]),
        .Q(col[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[11] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[11]),
        .Q(col[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[12] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[12]),
        .Q(col[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[13] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[13]),
        .Q(col[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[14] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[14]),
        .Q(col[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[15] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[15]),
        .Q(col[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[16] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[16]),
        .Q(col[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[17] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[17]),
        .Q(col[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[18] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[18]),
        .Q(col[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[19] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[19]),
        .Q(col[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[1] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[1]),
        .Q(col[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[20] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[20]),
        .Q(col[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[21] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[21]),
        .Q(col[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[22] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[22]),
        .Q(col[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[23] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[23]),
        .Q(col[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[24] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[24]),
        .Q(col[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[25] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[25]),
        .Q(col[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[26] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[26]),
        .Q(col[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[27] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[27]),
        .Q(col[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[28] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[28]),
        .Q(col[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[29] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[29]),
        .Q(col[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[2] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[2]),
        .Q(col[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[30] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[30]),
        .Q(col[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[31] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[31]),
        .Q(col[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[3] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[3]),
        .Q(col[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[4] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[4]),
        .Q(col[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[5] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[5]),
        .Q(col[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[6] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[6]),
        .Q(col[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[7] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[7]),
        .Q(col[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[8] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[8]),
        .Q(col[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[9] 
       (.C(ap_clk),
        .CE(col0),
        .D(col_new_fu_146[9]),
        .Q(col[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[3]_i_10 
       (.I0(tmp5_cast_fu_936_p1[8]),
        .I1(\tmp1_reg_1142_reg_n_0_[8] ),
        .I2(tmp6_cast_fu_939_p1[8]),
        .I3(\dd_V_reg_1157[3]_i_6_n_0 ),
        .O(\dd_V_reg_1157[3]_i_10_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[3]_i_11 
       (.I0(tmp5_cast_fu_936_p1[6]),
        .I1(\tmp1_reg_1142_reg_n_0_[6] ),
        .I2(tmp6_cast_fu_939_p1[6]),
        .O(\dd_V_reg_1157[3]_i_11_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[3]_i_12 
       (.I0(tmp5_cast_fu_936_p1[5]),
        .I1(\tmp1_reg_1142_reg_n_0_[5] ),
        .I2(tmp6_cast_fu_939_p1[5]),
        .O(\dd_V_reg_1157[3]_i_12_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[3]_i_13 
       (.I0(tmp5_cast_fu_936_p1[7]),
        .I1(\tmp1_reg_1142_reg_n_0_[7] ),
        .I2(tmp6_cast_fu_939_p1[7]),
        .I3(\dd_V_reg_1157[3]_i_11_n_0 ),
        .O(\dd_V_reg_1157[3]_i_13_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[3]_i_14 
       (.I0(tmp5_cast_fu_936_p1[6]),
        .I1(\tmp1_reg_1142_reg_n_0_[6] ),
        .I2(tmp6_cast_fu_939_p1[6]),
        .I3(\dd_V_reg_1157[3]_i_12_n_0 ),
        .O(\dd_V_reg_1157[3]_i_14_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dd_V_reg_1157[3]_i_15 
       (.I0(tmp5_cast_fu_936_p1[5]),
        .I1(\tmp1_reg_1142_reg_n_0_[5] ),
        .I2(tmp6_cast_fu_939_p1[5]),
        .O(\dd_V_reg_1157[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dd_V_reg_1157[3]_i_16 
       (.I0(\tmp1_reg_1142_reg_n_0_[4] ),
        .I1(tmp6_cast_fu_939_p1[4]),
        .O(\dd_V_reg_1157[3]_i_16_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[3]_i_3 
       (.I0(tmp5_cast_fu_936_p1[10]),
        .I1(\tmp1_reg_1142_reg_n_0_[10] ),
        .I2(tmp6_cast_fu_939_p1[10]),
        .O(\dd_V_reg_1157[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[3]_i_4 
       (.I0(tmp5_cast_fu_936_p1[9]),
        .I1(\tmp1_reg_1142_reg_n_0_[9] ),
        .I2(tmp6_cast_fu_939_p1[9]),
        .O(\dd_V_reg_1157[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[3]_i_5 
       (.I0(tmp5_cast_fu_936_p1[8]),
        .I1(\tmp1_reg_1142_reg_n_0_[8] ),
        .I2(tmp6_cast_fu_939_p1[8]),
        .O(\dd_V_reg_1157[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[3]_i_6 
       (.I0(tmp5_cast_fu_936_p1[7]),
        .I1(\tmp1_reg_1142_reg_n_0_[7] ),
        .I2(tmp6_cast_fu_939_p1[7]),
        .O(\dd_V_reg_1157[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[3]_i_7 
       (.I0(tmp5_cast_fu_936_p1[11]),
        .I1(\tmp1_reg_1142_reg_n_0_[11] ),
        .I2(tmp6_cast_fu_939_p1[11]),
        .I3(\dd_V_reg_1157[3]_i_3_n_0 ),
        .O(\dd_V_reg_1157[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[3]_i_8 
       (.I0(tmp5_cast_fu_936_p1[10]),
        .I1(\tmp1_reg_1142_reg_n_0_[10] ),
        .I2(tmp6_cast_fu_939_p1[10]),
        .I3(\dd_V_reg_1157[3]_i_4_n_0 ),
        .O(\dd_V_reg_1157[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[3]_i_9 
       (.I0(tmp5_cast_fu_936_p1[9]),
        .I1(\tmp1_reg_1142_reg_n_0_[9] ),
        .I2(tmp6_cast_fu_939_p1[9]),
        .I3(\dd_V_reg_1157[3]_i_5_n_0 ),
        .O(\dd_V_reg_1157[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dd_V_reg_1157[7]_i_1 
       (.I0(exitcond_reg_1076_pp0_iter2_reg),
        .I1(ap_block_pp0_stage0_subdone),
        .O(dd_V_reg_11570));
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[7]_i_3 
       (.I0(tmp5_cast_fu_936_p1[13]),
        .I1(\tmp1_reg_1142_reg_n_0_[13] ),
        .I2(tmp6_cast_fu_939_p1[13]),
        .O(\dd_V_reg_1157[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[7]_i_4 
       (.I0(tmp5_cast_fu_936_p1[12]),
        .I1(\tmp1_reg_1142_reg_n_0_[12] ),
        .I2(tmp6_cast_fu_939_p1[12]),
        .O(\dd_V_reg_1157[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \dd_V_reg_1157[7]_i_5 
       (.I0(tmp5_cast_fu_936_p1[11]),
        .I1(\tmp1_reg_1142_reg_n_0_[11] ),
        .I2(tmp6_cast_fu_939_p1[11]),
        .O(\dd_V_reg_1157[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dd_V_reg_1157[7]_i_6 
       (.I0(tmp5_cast_fu_936_p1[14]),
        .I1(\tmp1_reg_1142_reg_n_0_[14] ),
        .O(\dd_V_reg_1157[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \dd_V_reg_1157[7]_i_7 
       (.I0(tmp6_cast_fu_939_p1[13]),
        .I1(\tmp1_reg_1142_reg_n_0_[13] ),
        .I2(tmp5_cast_fu_936_p1[13]),
        .I3(tmp5_cast_fu_936_p1[14]),
        .I4(\tmp1_reg_1142_reg_n_0_[14] ),
        .O(\dd_V_reg_1157[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[7]_i_8 
       (.I0(\dd_V_reg_1157[7]_i_4_n_0 ),
        .I1(\tmp1_reg_1142_reg_n_0_[13] ),
        .I2(tmp5_cast_fu_936_p1[13]),
        .I3(tmp6_cast_fu_939_p1[13]),
        .O(\dd_V_reg_1157[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dd_V_reg_1157[7]_i_9 
       (.I0(tmp5_cast_fu_936_p1[12]),
        .I1(\tmp1_reg_1142_reg_n_0_[12] ),
        .I2(tmp6_cast_fu_939_p1[12]),
        .I3(\dd_V_reg_1157[7]_i_5_n_0 ),
        .O(\dd_V_reg_1157[7]_i_9_n_0 ));
  FDRE \dd_V_reg_1157_reg[0] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[8]),
        .Q(dst_V_V_din[0]),
        .R(1'b0));
  FDRE \dd_V_reg_1157_reg[1] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[9]),
        .Q(dst_V_V_din[1]),
        .R(1'b0));
  FDRE \dd_V_reg_1157_reg[2] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[10]),
        .Q(dst_V_V_din[2]),
        .R(1'b0));
  FDRE \dd_V_reg_1157_reg[3] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[11]),
        .Q(dst_V_V_din[3]),
        .R(1'b0));
  CARRY4 \dd_V_reg_1157_reg[3]_i_1 
       (.CI(\dd_V_reg_1157_reg[3]_i_2_n_0 ),
        .CO({\dd_V_reg_1157_reg[3]_i_1_n_0 ,\dd_V_reg_1157_reg[3]_i_1_n_1 ,\dd_V_reg_1157_reg[3]_i_1_n_2 ,\dd_V_reg_1157_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dd_V_reg_1157[3]_i_3_n_0 ,\dd_V_reg_1157[3]_i_4_n_0 ,\dd_V_reg_1157[3]_i_5_n_0 ,\dd_V_reg_1157[3]_i_6_n_0 }),
        .O(d_V_2_2_fu_948_p2[11:8]),
        .S({\dd_V_reg_1157[3]_i_7_n_0 ,\dd_V_reg_1157[3]_i_8_n_0 ,\dd_V_reg_1157[3]_i_9_n_0 ,\dd_V_reg_1157[3]_i_10_n_0 }));
  CARRY4 \dd_V_reg_1157_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\dd_V_reg_1157_reg[3]_i_2_n_0 ,\dd_V_reg_1157_reg[3]_i_2_n_1 ,\dd_V_reg_1157_reg[3]_i_2_n_2 ,\dd_V_reg_1157_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dd_V_reg_1157[3]_i_11_n_0 ,\dd_V_reg_1157[3]_i_12_n_0 ,1'b0,\tmp1_reg_1142_reg_n_0_[4] }),
        .O(\NLW_dd_V_reg_1157_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({\dd_V_reg_1157[3]_i_13_n_0 ,\dd_V_reg_1157[3]_i_14_n_0 ,\dd_V_reg_1157[3]_i_15_n_0 ,\dd_V_reg_1157[3]_i_16_n_0 }));
  FDRE \dd_V_reg_1157_reg[4] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[12]),
        .Q(dst_V_V_din[4]),
        .R(1'b0));
  FDRE \dd_V_reg_1157_reg[5] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[13]),
        .Q(dst_V_V_din[5]),
        .R(1'b0));
  FDRE \dd_V_reg_1157_reg[6] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[14]),
        .Q(dst_V_V_din[6]),
        .R(1'b0));
  FDRE \dd_V_reg_1157_reg[7] 
       (.C(ap_clk),
        .CE(dd_V_reg_11570),
        .D(d_V_2_2_fu_948_p2[15]),
        .Q(dst_V_V_din[7]),
        .R(1'b0));
  CARRY4 \dd_V_reg_1157_reg[7]_i_2 
       (.CI(\dd_V_reg_1157_reg[3]_i_1_n_0 ),
        .CO({\NLW_dd_V_reg_1157_reg[7]_i_2_CO_UNCONNECTED [3],\dd_V_reg_1157_reg[7]_i_2_n_1 ,\dd_V_reg_1157_reg[7]_i_2_n_2 ,\dd_V_reg_1157_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\dd_V_reg_1157[7]_i_3_n_0 ,\dd_V_reg_1157[7]_i_4_n_0 ,\dd_V_reg_1157[7]_i_5_n_0 }),
        .O(d_V_2_2_fu_948_p2[15:12]),
        .S({\dd_V_reg_1157[7]_i_6_n_0 ,\dd_V_reg_1157[7]_i_7_n_0 ,\dd_V_reg_1157[7]_i_8_n_0 ,\dd_V_reg_1157[7]_i_9_n_0 }));
  LUT4 #(
    .INIT(16'h0008)) 
    dst_V_V_write_INST_0
       (.I0(ap_enable_reg_pp0_iter4_reg_n_0),
        .I1(or_cond_reg_1123_pp0_iter3_reg),
        .I2(exitcond_reg_1076_pp0_iter3_reg),
        .I3(ap_block_pp0_stage0_subdone),
        .O(dst_V_V_write));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \exitcond_reg_1076[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(\exitcond_reg_1076_reg_n_0_[0] ),
        .O(\exitcond_reg_1076[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \exitcond_reg_1076_pp0_iter1_reg[0]_i_1 
       (.I0(\exitcond_reg_1076_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(exitcond_reg_1076_pp0_iter1_reg),
        .O(\exitcond_reg_1076_pp0_iter1_reg[0]_i_1_n_0 ));
  FDRE \exitcond_reg_1076_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_1076_pp0_iter1_reg[0]_i_1_n_0 ),
        .Q(exitcond_reg_1076_pp0_iter1_reg),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \exitcond_reg_1076_pp0_iter2_reg[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone),
        .O(ap_block_pp0_stage0_subdone5_in));
  FDRE \exitcond_reg_1076_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone5_in),
        .D(exitcond_reg_1076_pp0_iter1_reg),
        .Q(exitcond_reg_1076_pp0_iter2_reg),
        .R(1'b0));
  FDRE \exitcond_reg_1076_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone5_in),
        .D(exitcond_reg_1076_pp0_iter2_reg),
        .Q(exitcond_reg_1076_pp0_iter3_reg),
        .R(1'b0));
  FDRE \exitcond_reg_1076_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_1076[0]_i_1_n_0 ),
        .Q(\exitcond_reg_1076_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \i_op_assign_1_reg_303[0]_i_1 
       (.I0(wlb_lb_val_V_1_U_n_21),
        .I1(ap_CS_fsm_state2),
        .I2(exitcond1_fu_524_p2),
        .O(i_op_assign_1_reg_303));
  LUT1 #(
    .INIT(2'h1)) 
    \i_op_assign_1_reg_303[0]_i_3 
       (.I0(i_op_assign_1_reg_303_reg[0]),
        .O(\i_op_assign_1_reg_303[0]_i_3_n_0 ));
  FDRE \i_op_assign_1_reg_303_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[0]_i_2_n_7 ),
        .Q(i_op_assign_1_reg_303_reg[0]),
        .R(i_op_assign_1_reg_303));
  CARRY4 \i_op_assign_1_reg_303_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\i_op_assign_1_reg_303_reg[0]_i_2_n_0 ,\i_op_assign_1_reg_303_reg[0]_i_2_n_1 ,\i_op_assign_1_reg_303_reg[0]_i_2_n_2 ,\i_op_assign_1_reg_303_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_op_assign_1_reg_303_reg[0]_i_2_n_4 ,\i_op_assign_1_reg_303_reg[0]_i_2_n_5 ,\i_op_assign_1_reg_303_reg[0]_i_2_n_6 ,\i_op_assign_1_reg_303_reg[0]_i_2_n_7 }),
        .S({i_op_assign_1_reg_303_reg[3:1],\i_op_assign_1_reg_303[0]_i_3_n_0 }));
  FDRE \i_op_assign_1_reg_303_reg[10] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[8]_i_1_n_5 ),
        .Q(i_op_assign_1_reg_303_reg[10]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[11] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[8]_i_1_n_4 ),
        .Q(i_op_assign_1_reg_303_reg[11]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[12] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[12]_i_1_n_7 ),
        .Q(i_op_assign_1_reg_303_reg[12]),
        .R(i_op_assign_1_reg_303));
  CARRY4 \i_op_assign_1_reg_303_reg[12]_i_1 
       (.CI(\i_op_assign_1_reg_303_reg[8]_i_1_n_0 ),
        .CO(\NLW_i_op_assign_1_reg_303_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_op_assign_1_reg_303_reg[12]_i_1_O_UNCONNECTED [3:1],\i_op_assign_1_reg_303_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,i_op_assign_1_reg_303_reg[12]}));
  FDRE \i_op_assign_1_reg_303_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[0]_i_2_n_6 ),
        .Q(i_op_assign_1_reg_303_reg[1]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[0]_i_2_n_5 ),
        .Q(i_op_assign_1_reg_303_reg[2]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[0]_i_2_n_4 ),
        .Q(i_op_assign_1_reg_303_reg[3]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[4]_i_1_n_7 ),
        .Q(i_op_assign_1_reg_303_reg[4]),
        .R(i_op_assign_1_reg_303));
  CARRY4 \i_op_assign_1_reg_303_reg[4]_i_1 
       (.CI(\i_op_assign_1_reg_303_reg[0]_i_2_n_0 ),
        .CO({\i_op_assign_1_reg_303_reg[4]_i_1_n_0 ,\i_op_assign_1_reg_303_reg[4]_i_1_n_1 ,\i_op_assign_1_reg_303_reg[4]_i_1_n_2 ,\i_op_assign_1_reg_303_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_op_assign_1_reg_303_reg[4]_i_1_n_4 ,\i_op_assign_1_reg_303_reg[4]_i_1_n_5 ,\i_op_assign_1_reg_303_reg[4]_i_1_n_6 ,\i_op_assign_1_reg_303_reg[4]_i_1_n_7 }),
        .S(i_op_assign_1_reg_303_reg[7:4]));
  FDRE \i_op_assign_1_reg_303_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[4]_i_1_n_6 ),
        .Q(i_op_assign_1_reg_303_reg[5]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[4]_i_1_n_5 ),
        .Q(i_op_assign_1_reg_303_reg[6]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[4]_i_1_n_4 ),
        .Q(i_op_assign_1_reg_303_reg[7]),
        .R(i_op_assign_1_reg_303));
  FDRE \i_op_assign_1_reg_303_reg[8] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[8]_i_1_n_7 ),
        .Q(i_op_assign_1_reg_303_reg[8]),
        .R(i_op_assign_1_reg_303));
  CARRY4 \i_op_assign_1_reg_303_reg[8]_i_1 
       (.CI(\i_op_assign_1_reg_303_reg[4]_i_1_n_0 ),
        .CO({\i_op_assign_1_reg_303_reg[8]_i_1_n_0 ,\i_op_assign_1_reg_303_reg[8]_i_1_n_1 ,\i_op_assign_1_reg_303_reg[8]_i_1_n_2 ,\i_op_assign_1_reg_303_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_op_assign_1_reg_303_reg[8]_i_1_n_4 ,\i_op_assign_1_reg_303_reg[8]_i_1_n_5 ,\i_op_assign_1_reg_303_reg[8]_i_1_n_6 ,\i_op_assign_1_reg_303_reg[8]_i_1_n_7 }),
        .S(i_op_assign_1_reg_303_reg[11:8]));
  FDRE \i_op_assign_1_reg_303_reg[9] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce0),
        .D(\i_op_assign_1_reg_303_reg[8]_i_1_n_6 ),
        .Q(i_op_assign_1_reg_303_reg[9]),
        .R(i_op_assign_1_reg_303));
  LUT3 #(
    .INIT(8'h08)) 
    \i_op_assign_reg_292[11]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state8),
        .O(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[0]),
        .Q(y_V[0]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[10]),
        .Q(y_V[10]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[11]),
        .Q(y_V[11]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[12]),
        .Q(\i_op_assign_reg_292_reg_n_0_[12] ),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[1]),
        .Q(y_V[1]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[2]),
        .Q(y_V[2]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[3]),
        .Q(y_V[3]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[4]),
        .Q(y_V[4]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[5]),
        .Q(y_V[5]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[6]),
        .Q(y_V[6]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[7]),
        .Q(y_V[7]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[8]),
        .Q(y_V[8]),
        .R(i_op_assign_reg_292));
  FDRE \i_op_assign_reg_292_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_reg_1058[9]),
        .Q(y_V[9]),
        .R(i_op_assign_reg_292));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_1058[0]_i_1 
       (.I0(y_V[0]),
        .O(i_fu_529_p2[0]));
  FDRE \i_reg_1058_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[0]),
        .Q(i_reg_1058[0]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[10]),
        .Q(i_reg_1058[10]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[11]),
        .Q(i_reg_1058[11]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[12]),
        .Q(i_reg_1058[12]),
        .R(1'b0));
  CARRY4 \i_reg_1058_reg[12]_i_1 
       (.CI(\i_reg_1058_reg[8]_i_1_n_0 ),
        .CO({\NLW_i_reg_1058_reg[12]_i_1_CO_UNCONNECTED [3],\i_reg_1058_reg[12]_i_1_n_1 ,\i_reg_1058_reg[12]_i_1_n_2 ,\i_reg_1058_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_fu_529_p2[12:9]),
        .S({\i_op_assign_reg_292_reg_n_0_[12] ,y_V[11:9]}));
  FDRE \i_reg_1058_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[1]),
        .Q(i_reg_1058[1]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[2]),
        .Q(i_reg_1058[2]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[3]),
        .Q(i_reg_1058[3]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[4]),
        .Q(i_reg_1058[4]),
        .R(1'b0));
  CARRY4 \i_reg_1058_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_reg_1058_reg[4]_i_1_n_0 ,\i_reg_1058_reg[4]_i_1_n_1 ,\i_reg_1058_reg[4]_i_1_n_2 ,\i_reg_1058_reg[4]_i_1_n_3 }),
        .CYINIT(y_V[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_fu_529_p2[4:1]),
        .S(y_V[4:1]));
  FDRE \i_reg_1058_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[5]),
        .Q(i_reg_1058[5]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[6]),
        .Q(i_reg_1058[6]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[7]),
        .Q(i_reg_1058[7]),
        .R(1'b0));
  FDRE \i_reg_1058_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[8]),
        .Q(i_reg_1058[8]),
        .R(1'b0));
  CARRY4 \i_reg_1058_reg[8]_i_1 
       (.CI(\i_reg_1058_reg[4]_i_1_n_0 ),
        .CO({\i_reg_1058_reg[8]_i_1_n_0 ,\i_reg_1058_reg[8]_i_1_n_1 ,\i_reg_1058_reg[8]_i_1_n_2 ,\i_reg_1058_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_fu_529_p2[8:5]),
        .S(y_V[8:5]));
  FDRE \i_reg_1058_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_529_p2[9]),
        .Q(i_reg_1058[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \or_cond1_reg_1085[0]_i_1 
       (.I0(tmp_5_fu_574_p2),
        .I1(tmp_3_reg_1063),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond1_reg_1085),
        .O(\or_cond1_reg_1085[0]_i_1_n_0 ));
  FDRE \or_cond1_reg_1085_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond1_reg_1085[0]_i_1_n_0 ),
        .Q(or_cond1_reg_1085),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \or_cond_reg_1123[0]_i_1 
       (.I0(p_40_in),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(ap_CS_fsm_pp0_stage017_in),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .I4(or_cond_reg_1123),
        .O(\or_cond_reg_1123[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_cond_reg_1123_pp0_iter1_reg[0]_i_1 
       (.I0(or_cond_reg_1123),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(or_cond_reg_1123_pp0_iter1_reg),
        .O(\or_cond_reg_1123_pp0_iter1_reg[0]_i_1_n_0 ));
  FDRE \or_cond_reg_1123_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_1123_pp0_iter1_reg[0]_i_1_n_0 ),
        .Q(or_cond_reg_1123_pp0_iter1_reg),
        .R(1'b0));
  FDRE \or_cond_reg_1123_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone5_in),
        .D(or_cond_reg_1123_pp0_iter1_reg),
        .Q(or_cond_reg_1123_pp0_iter2_reg),
        .R(1'b0));
  FDRE \or_cond_reg_1123_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone5_in),
        .D(or_cond_reg_1123_pp0_iter2_reg),
        .Q(or_cond_reg_1123_pp0_iter3_reg),
        .R(1'b0));
  FDRE \or_cond_reg_1123_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_1123[0]_i_1_n_0 ),
        .Q(or_cond_reg_1123),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    src_V_V_read_INST_0
       (.I0(or_cond1_reg_1085),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(ap_block_pp0_stage0_subdone),
        .O(src_V_V_read));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1_reg_1142[10]_i_10 
       (.I0(tmp_44_0_1_cast_fu_795_p1[9]),
        .I1(tmp_44_cast_fu_784_p1[9]),
        .I2(tmp_44_1_cast_fu_823_p1[9]),
        .O(\tmp1_reg_1142[10]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1_reg_1142[10]_i_11 
       (.I0(tmp_44_0_1_cast_fu_795_p1[8]),
        .I1(tmp_44_cast_fu_784_p1[8]),
        .I2(tmp_44_1_cast_fu_823_p1[8]),
        .O(\tmp1_reg_1142[10]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1_reg_1142[10]_i_12 
       (.I0(tmp_44_0_1_cast_fu_795_p1[6]),
        .I1(tmp_44_cast_fu_784_p1[6]),
        .I2(tmp_44_1_cast_fu_823_p1[6]),
        .O(\tmp1_reg_1142[10]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1_reg_1142[10]_i_13 
       (.I0(tmp_44_0_1_cast_fu_795_p1[7]),
        .I1(tmp_44_cast_fu_784_p1[7]),
        .I2(tmp_44_1_cast_fu_823_p1[7]),
        .O(\tmp1_reg_1142[10]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1_reg_1142[10]_i_14 
       (.I0(tmp_44_0_1_cast_fu_795_p1[8]),
        .I1(tmp_44_cast_fu_784_p1[8]),
        .I2(tmp_44_1_cast_fu_823_p1[8]),
        .O(\tmp1_reg_1142[10]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1_reg_1142[10]_i_15 
       (.I0(tmp_44_0_1_cast_fu_795_p1[7]),
        .I1(tmp_44_cast_fu_784_p1[7]),
        .I2(tmp_44_1_cast_fu_823_p1[7]),
        .O(\tmp1_reg_1142[10]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \tmp1_reg_1142[10]_i_2 
       (.I0(tmp_44_0_1_cast_fu_795_p1[8]),
        .I1(tmp_44_cast_fu_784_p1[8]),
        .I2(tmp_44_1_cast_fu_823_p1[8]),
        .I3(tmp_44_0_2_cast_fu_807_p1[9]),
        .I4(\tmp1_reg_1142[10]_i_10_n_0 ),
        .O(\tmp1_reg_1142[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \tmp1_reg_1142[10]_i_3 
       (.I0(tmp_44_0_1_cast_fu_795_p1[7]),
        .I1(tmp_44_cast_fu_784_p1[7]),
        .I2(tmp_44_1_cast_fu_823_p1[7]),
        .I3(tmp_44_0_2_cast_fu_807_p1[8]),
        .I4(\tmp1_reg_1142[10]_i_11_n_0 ),
        .O(\tmp1_reg_1142[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \tmp1_reg_1142[10]_i_4 
       (.I0(tmp_44_0_2_cast_fu_807_p1[7]),
        .I1(\tmp1_reg_1142[10]_i_12_n_0 ),
        .I2(tmp_44_0_1_cast_fu_795_p1[7]),
        .I3(tmp_44_cast_fu_784_p1[7]),
        .I4(tmp_44_1_cast_fu_823_p1[7]),
        .O(\tmp1_reg_1142[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tmp1_reg_1142[10]_i_5 
       (.I0(tmp_44_1_cast_fu_823_p1[6]),
        .I1(tmp_44_cast_fu_784_p1[6]),
        .I2(tmp_44_0_1_cast_fu_795_p1[6]),
        .I3(tmp_44_0_2_cast_fu_807_p1[7]),
        .I4(\tmp1_reg_1142[10]_i_13_n_0 ),
        .O(\tmp1_reg_1142[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \tmp1_reg_1142[10]_i_6 
       (.I0(\tmp1_reg_1142[10]_i_10_n_0 ),
        .I1(tmp_44_0_2_cast_fu_807_p1[9]),
        .I2(\tmp1_reg_1142[10]_i_14_n_0 ),
        .I3(\tmp1_reg_1142[14]_i_8_n_0 ),
        .I4(tmp_44_0_2_cast_fu_807_p1[10]),
        .I5(\tmp1_reg_1142[14]_i_11_n_0 ),
        .O(\tmp1_reg_1142[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \tmp1_reg_1142[10]_i_7 
       (.I0(\tmp1_reg_1142[10]_i_11_n_0 ),
        .I1(tmp_44_0_2_cast_fu_807_p1[8]),
        .I2(\tmp1_reg_1142[10]_i_15_n_0 ),
        .I3(\tmp1_reg_1142[10]_i_10_n_0 ),
        .I4(tmp_44_0_2_cast_fu_807_p1[9]),
        .I5(\tmp1_reg_1142[10]_i_14_n_0 ),
        .O(\tmp1_reg_1142[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \tmp1_reg_1142[10]_i_8 
       (.I0(\tmp1_reg_1142[10]_i_4_n_0 ),
        .I1(\tmp1_reg_1142[10]_i_11_n_0 ),
        .I2(tmp_44_0_2_cast_fu_807_p1[8]),
        .I3(tmp_44_0_1_cast_fu_795_p1[7]),
        .I4(tmp_44_cast_fu_784_p1[7]),
        .I5(tmp_44_1_cast_fu_823_p1[7]),
        .O(\tmp1_reg_1142[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \tmp1_reg_1142[10]_i_9 
       (.I0(\tmp1_reg_1142[10]_i_13_n_0 ),
        .I1(tmp_44_0_2_cast_fu_807_p1[7]),
        .I2(tmp_44_0_2_cast_fu_807_p1[6]),
        .I3(tmp_44_0_1_cast_fu_795_p1[6]),
        .I4(tmp_44_cast_fu_784_p1[6]),
        .I5(tmp_44_1_cast_fu_823_p1[6]),
        .O(\tmp1_reg_1142[10]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1_reg_1142[14]_i_10 
       (.I0(tmp_44_0_1_cast_fu_795_p1[11]),
        .I1(tmp_44_cast_fu_784_p1[11]),
        .I2(tmp_44_1_cast_fu_823_p1[11]),
        .O(\tmp1_reg_1142[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1_reg_1142[14]_i_11 
       (.I0(tmp_44_0_1_cast_fu_795_p1[9]),
        .I1(tmp_44_cast_fu_784_p1[9]),
        .I2(tmp_44_1_cast_fu_823_p1[9]),
        .O(\tmp1_reg_1142[14]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \tmp1_reg_1142[14]_i_2 
       (.I0(tmp_44_0_1_cast_fu_795_p1[10]),
        .I1(tmp_44_cast_fu_784_p1[10]),
        .I2(tmp_44_1_cast_fu_823_p1[10]),
        .I3(tmp_44_0_2_cast_fu_807_p1[11]),
        .I4(\tmp1_reg_1142[14]_i_7_n_0 ),
        .O(\tmp1_reg_1142[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \tmp1_reg_1142[14]_i_3 
       (.I0(tmp_44_0_1_cast_fu_795_p1[9]),
        .I1(tmp_44_cast_fu_784_p1[9]),
        .I2(tmp_44_1_cast_fu_823_p1[9]),
        .I3(tmp_44_0_2_cast_fu_807_p1[10]),
        .I4(\tmp1_reg_1142[14]_i_8_n_0 ),
        .O(\tmp1_reg_1142[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \tmp1_reg_1142[14]_i_4 
       (.I0(tmp_44_0_1_cast_fu_795_p1[11]),
        .I1(tmp_44_cast_fu_784_p1[11]),
        .I2(tmp_44_1_cast_fu_823_p1[11]),
        .I3(tmp_44_1_cast_fu_823_p1[12]),
        .I4(tmp_44_0_1_cast_fu_795_p1[12]),
        .O(\tmp1_reg_1142[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \tmp1_reg_1142[14]_i_5 
       (.I0(\tmp1_reg_1142[14]_i_7_n_0 ),
        .I1(tmp_44_0_2_cast_fu_807_p1[11]),
        .I2(\tmp1_reg_1142[14]_i_9_n_0 ),
        .I3(tmp_44_0_1_cast_fu_795_p1[12]),
        .I4(tmp_44_1_cast_fu_823_p1[12]),
        .I5(\tmp1_reg_1142[14]_i_10_n_0 ),
        .O(\tmp1_reg_1142[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \tmp1_reg_1142[14]_i_6 
       (.I0(\tmp1_reg_1142[14]_i_8_n_0 ),
        .I1(tmp_44_0_2_cast_fu_807_p1[10]),
        .I2(\tmp1_reg_1142[14]_i_11_n_0 ),
        .I3(\tmp1_reg_1142[14]_i_7_n_0 ),
        .I4(tmp_44_0_2_cast_fu_807_p1[11]),
        .I5(\tmp1_reg_1142[14]_i_9_n_0 ),
        .O(\tmp1_reg_1142[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1_reg_1142[14]_i_7 
       (.I0(tmp_44_0_1_cast_fu_795_p1[11]),
        .I1(tmp_44_cast_fu_784_p1[11]),
        .I2(tmp_44_1_cast_fu_823_p1[11]),
        .O(\tmp1_reg_1142[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1_reg_1142[14]_i_8 
       (.I0(tmp_44_0_1_cast_fu_795_p1[10]),
        .I1(tmp_44_cast_fu_784_p1[10]),
        .I2(tmp_44_1_cast_fu_823_p1[10]),
        .O(\tmp1_reg_1142[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1_reg_1142[14]_i_9 
       (.I0(tmp_44_0_1_cast_fu_795_p1[10]),
        .I1(tmp_44_cast_fu_784_p1[10]),
        .I2(tmp_44_1_cast_fu_823_p1[10]),
        .O(\tmp1_reg_1142[14]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp1_reg_1142[6]_i_2 
       (.I0(tmp_44_1_cast_fu_823_p1[6]),
        .I1(tmp_44_cast_fu_784_p1[6]),
        .I2(tmp_44_0_1_cast_fu_795_p1[6]),
        .I3(tmp_44_0_2_cast_fu_807_p1[6]),
        .O(\tmp1_reg_1142[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \tmp1_reg_1142[6]_i_3 
       (.I0(\tmp1_reg_1142[6]_i_2_n_0 ),
        .I1(tmp_44_cast_fu_784_p1[5]),
        .I2(tmp_44_1_cast_fu_823_p1[5]),
        .I3(tmp_44_0_1_cast_fu_795_p1[5]),
        .O(\tmp1_reg_1142[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp1_reg_1142[6]_i_4 
       (.I0(tmp_44_1_cast_fu_823_p1[5]),
        .I1(tmp_44_cast_fu_784_p1[5]),
        .I2(tmp_44_0_1_cast_fu_795_p1[5]),
        .I3(tmp_44_0_2_cast_fu_807_p1[5]),
        .O(\tmp1_reg_1142[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp1_reg_1142[6]_i_5 
       (.I0(tmp_44_0_2_cast_fu_807_p1[4]),
        .I1(tmp_44_cast_fu_784_p1[4]),
        .O(\tmp1_reg_1142[6]_i_5_n_0 ));
  FDRE \tmp1_reg_1142_reg[10] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[10]),
        .Q(\tmp1_reg_1142_reg_n_0_[10] ),
        .R(1'b0));
  CARRY4 \tmp1_reg_1142_reg[10]_i_1 
       (.CI(\tmp1_reg_1142_reg[6]_i_1_n_0 ),
        .CO({\tmp1_reg_1142_reg[10]_i_1_n_0 ,\tmp1_reg_1142_reg[10]_i_1_n_1 ,\tmp1_reg_1142_reg[10]_i_1_n_2 ,\tmp1_reg_1142_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp1_reg_1142[10]_i_2_n_0 ,\tmp1_reg_1142[10]_i_3_n_0 ,\tmp1_reg_1142[10]_i_4_n_0 ,\tmp1_reg_1142[10]_i_5_n_0 }),
        .O(tmp1_fu_909_p2[10:7]),
        .S({\tmp1_reg_1142[10]_i_6_n_0 ,\tmp1_reg_1142[10]_i_7_n_0 ,\tmp1_reg_1142[10]_i_8_n_0 ,\tmp1_reg_1142[10]_i_9_n_0 }));
  FDRE \tmp1_reg_1142_reg[11] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[11]),
        .Q(\tmp1_reg_1142_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[12] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[12]),
        .Q(\tmp1_reg_1142_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[13] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[13]),
        .Q(\tmp1_reg_1142_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[14] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[14]),
        .Q(\tmp1_reg_1142_reg_n_0_[14] ),
        .R(1'b0));
  CARRY4 \tmp1_reg_1142_reg[14]_i_1 
       (.CI(\tmp1_reg_1142_reg[10]_i_1_n_0 ),
        .CO({tmp1_fu_909_p2[14],\NLW_tmp1_reg_1142_reg[14]_i_1_CO_UNCONNECTED [2],\tmp1_reg_1142_reg[14]_i_1_n_2 ,\tmp1_reg_1142_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\tmp1_reg_1142[14]_i_2_n_0 ,\tmp1_reg_1142[14]_i_3_n_0 }),
        .O({\NLW_tmp1_reg_1142_reg[14]_i_1_O_UNCONNECTED [3],tmp1_fu_909_p2[13:11]}),
        .S({1'b1,\tmp1_reg_1142[14]_i_4_n_0 ,\tmp1_reg_1142[14]_i_5_n_0 ,\tmp1_reg_1142[14]_i_6_n_0 }));
  FDRE \tmp1_reg_1142_reg[4] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[4]),
        .Q(\tmp1_reg_1142_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[5] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[5]),
        .Q(\tmp1_reg_1142_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[6] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[6]),
        .Q(\tmp1_reg_1142_reg_n_0_[6] ),
        .R(1'b0));
  CARRY4 \tmp1_reg_1142_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\tmp1_reg_1142_reg[6]_i_1_n_0 ,\tmp1_reg_1142_reg[6]_i_1_n_1 ,\tmp1_reg_1142_reg[6]_i_1_n_2 ,\tmp1_reg_1142_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp1_reg_1142[6]_i_2_n_0 ,tmp_44_0_2_cast_fu_807_p1[5:4],1'b0}),
        .O({tmp1_fu_909_p2[6:4],\NLW_tmp1_reg_1142_reg[6]_i_1_O_UNCONNECTED [0]}),
        .S({\tmp1_reg_1142[6]_i_3_n_0 ,\tmp1_reg_1142[6]_i_4_n_0 ,\tmp1_reg_1142[6]_i_5_n_0 ,1'b0}));
  FDRE \tmp1_reg_1142_reg[7] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[7]),
        .Q(\tmp1_reg_1142_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[8] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[8]),
        .Q(\tmp1_reg_1142_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tmp1_reg_1142_reg[9] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp1_fu_909_p2[9]),
        .Q(\tmp1_reg_1142_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[12]_i_2 
       (.I0(tmp_44_1_1_cast_fu_834_p1[12]),
        .I1(tmp_44_1_2_cast_fu_846_p1[12]),
        .O(\tmp5_reg_1147[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[12]_i_3 
       (.I0(tmp_44_1_1_cast_fu_834_p1[11]),
        .I1(tmp_44_1_2_cast_fu_846_p1[11]),
        .O(\tmp5_reg_1147[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[12]_i_4 
       (.I0(tmp_44_1_1_cast_fu_834_p1[10]),
        .I1(tmp_44_1_2_cast_fu_846_p1[10]),
        .O(\tmp5_reg_1147[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[12]_i_5 
       (.I0(tmp_44_1_1_cast_fu_834_p1[9]),
        .I1(tmp_44_1_2_cast_fu_846_p1[9]),
        .O(\tmp5_reg_1147[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp5_reg_1147[14]_i_1 
       (.I0(exitcond_reg_1076_pp0_iter1_reg),
        .I1(ap_block_pp0_stage0_subdone),
        .O(tmp1_reg_1142_reg0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[8]_i_2 
       (.I0(tmp_44_1_1_cast_fu_834_p1[8]),
        .I1(tmp_44_1_2_cast_fu_846_p1[8]),
        .O(\tmp5_reg_1147[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[8]_i_3 
       (.I0(tmp_44_1_1_cast_fu_834_p1[7]),
        .I1(tmp_44_1_2_cast_fu_846_p1[7]),
        .O(\tmp5_reg_1147[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp5_reg_1147[8]_i_4 
       (.I0(tmp_44_1_1_cast_fu_834_p1[6]),
        .I1(tmp_44_1_2_cast_fu_846_p1[6]),
        .O(\tmp5_reg_1147[8]_i_4_n_0 ));
  FDRE \tmp5_reg_1147_reg[10] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[5]),
        .Q(tmp5_cast_fu_936_p1[10]),
        .R(1'b0));
  FDRE \tmp5_reg_1147_reg[11] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[6]),
        .Q(tmp5_cast_fu_936_p1[11]),
        .R(1'b0));
  FDRE \tmp5_reg_1147_reg[12] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[7]),
        .Q(tmp5_cast_fu_936_p1[12]),
        .R(1'b0));
  CARRY4 \tmp5_reg_1147_reg[12]_i_1 
       (.CI(\tmp5_reg_1147_reg[8]_i_1_n_0 ),
        .CO({\tmp5_reg_1147_reg[12]_i_1_n_0 ,\tmp5_reg_1147_reg[12]_i_1_n_1 ,\tmp5_reg_1147_reg[12]_i_1_n_2 ,\tmp5_reg_1147_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(tmp_44_1_1_cast_fu_834_p1[12:9]),
        .O(p_0_in[7:4]),
        .S({\tmp5_reg_1147[12]_i_2_n_0 ,\tmp5_reg_1147[12]_i_3_n_0 ,\tmp5_reg_1147[12]_i_4_n_0 ,\tmp5_reg_1147[12]_i_5_n_0 }));
  FDRE \tmp5_reg_1147_reg[13] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[8]),
        .Q(tmp5_cast_fu_936_p1[13]),
        .R(1'b0));
  FDRE \tmp5_reg_1147_reg[14] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[9]),
        .Q(tmp5_cast_fu_936_p1[14]),
        .R(1'b0));
  CARRY4 \tmp5_reg_1147_reg[14]_i_2 
       (.CI(\tmp5_reg_1147_reg[12]_i_1_n_0 ),
        .CO({\NLW_tmp5_reg_1147_reg[14]_i_2_CO_UNCONNECTED [3:2],p_0_in[9],\NLW_tmp5_reg_1147_reg[14]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp5_reg_1147_reg[14]_i_2_O_UNCONNECTED [3:1],p_0_in[8]}),
        .S({1'b0,1'b0,1'b1,tmp_44_1_1_cast_fu_834_p1[13]}));
  FDRE \tmp5_reg_1147_reg[5] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[0]),
        .Q(tmp5_cast_fu_936_p1[5]),
        .R(1'b0));
  FDRE \tmp5_reg_1147_reg[6] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[1]),
        .Q(tmp5_cast_fu_936_p1[6]),
        .R(1'b0));
  FDRE \tmp5_reg_1147_reg[7] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[2]),
        .Q(tmp5_cast_fu_936_p1[7]),
        .R(1'b0));
  FDRE \tmp5_reg_1147_reg[8] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[3]),
        .Q(tmp5_cast_fu_936_p1[8]),
        .R(1'b0));
  CARRY4 \tmp5_reg_1147_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\tmp5_reg_1147_reg[8]_i_1_n_0 ,\tmp5_reg_1147_reg[8]_i_1_n_1 ,\tmp5_reg_1147_reg[8]_i_1_n_2 ,\tmp5_reg_1147_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_44_1_1_cast_fu_834_p1[8:6],1'b0}),
        .O(p_0_in[3:0]),
        .S({\tmp5_reg_1147[8]_i_2_n_0 ,\tmp5_reg_1147[8]_i_3_n_0 ,\tmp5_reg_1147[8]_i_4_n_0 ,tmp_44_1_2_cast_fu_846_p1[5]}));
  FDRE \tmp5_reg_1147_reg[9] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(p_0_in[4]),
        .Q(tmp5_cast_fu_936_p1[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_1152[10]_i_2 
       (.I0(tmp_44_2_2_cast_fu_885_p1[9]),
        .I1(tmp_44_2_cast_fu_862_p1[9]),
        .I2(tmp_44_2_1_cast_fu_873_p1[9]),
        .O(\tmp6_reg_1152[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_1152[10]_i_3 
       (.I0(tmp_44_2_2_cast_fu_885_p1[8]),
        .I1(tmp_44_2_cast_fu_862_p1[8]),
        .I2(tmp_44_2_1_cast_fu_873_p1[8]),
        .O(\tmp6_reg_1152[10]_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_1152[10]_i_4 
       (.I0(tmp_44_2_2_cast_fu_885_p1[7]),
        .I1(tmp_44_2_cast_fu_862_p1[7]),
        .I2(tmp_44_2_1_cast_fu_873_p1[7]),
        .O(\tmp6_reg_1152[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_1152[10]_i_5 
       (.I0(tmp_44_2_2_cast_fu_885_p1[6]),
        .I1(tmp_44_2_cast_fu_862_p1[6]),
        .I2(tmp_44_2_1_cast_fu_873_p1[6]),
        .O(\tmp6_reg_1152[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_1152[10]_i_6 
       (.I0(tmp_44_2_2_cast_fu_885_p1[10]),
        .I1(tmp_44_2_cast_fu_862_p1[10]),
        .I2(tmp_44_2_1_cast_fu_873_p1[10]),
        .I3(\tmp6_reg_1152[10]_i_2_n_0 ),
        .O(\tmp6_reg_1152[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_1152[10]_i_7 
       (.I0(tmp_44_2_2_cast_fu_885_p1[9]),
        .I1(tmp_44_2_cast_fu_862_p1[9]),
        .I2(tmp_44_2_1_cast_fu_873_p1[9]),
        .I3(\tmp6_reg_1152[10]_i_3_n_0 ),
        .O(\tmp6_reg_1152[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_1152[10]_i_8 
       (.I0(tmp_44_2_2_cast_fu_885_p1[8]),
        .I1(tmp_44_2_cast_fu_862_p1[8]),
        .I2(tmp_44_2_1_cast_fu_873_p1[8]),
        .I3(\tmp6_reg_1152[10]_i_4_n_0 ),
        .O(\tmp6_reg_1152[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_1152[10]_i_9 
       (.I0(tmp_44_2_2_cast_fu_885_p1[7]),
        .I1(tmp_44_2_cast_fu_862_p1[7]),
        .I2(tmp_44_2_1_cast_fu_873_p1[7]),
        .I3(\tmp6_reg_1152[10]_i_5_n_0 ),
        .O(\tmp6_reg_1152[10]_i_9_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_1152[13]_i_2 
       (.I0(tmp_44_2_2_cast_fu_885_p1[10]),
        .I1(tmp_44_2_cast_fu_862_p1[10]),
        .I2(tmp_44_2_1_cast_fu_873_p1[10]),
        .O(\tmp6_reg_1152[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \tmp6_reg_1152[13]_i_3 
       (.I0(tmp_44_2_1_cast_fu_873_p1[11]),
        .I1(tmp_44_2_cast_fu_862_p1[11]),
        .I2(tmp_44_2_2_cast_fu_885_p1[11]),
        .I3(tmp_44_2_1_cast_fu_873_p1[12]),
        .O(\tmp6_reg_1152[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_1152[13]_i_4 
       (.I0(\tmp6_reg_1152[13]_i_2_n_0 ),
        .I1(tmp_44_2_cast_fu_862_p1[11]),
        .I2(tmp_44_2_2_cast_fu_885_p1[11]),
        .I3(tmp_44_2_1_cast_fu_873_p1[11]),
        .O(\tmp6_reg_1152[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp6_reg_1152[6]_i_2 
       (.I0(tmp_44_2_1_cast_fu_873_p1[6]),
        .I1(tmp_44_2_2_cast_fu_885_p1[6]),
        .I2(tmp_44_2_cast_fu_862_p1[6]),
        .O(\tmp6_reg_1152[6]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \tmp6_reg_1152[6]_i_3 
       (.I0(tmp_44_2_2_cast_fu_885_p1[6]),
        .I1(tmp_44_2_cast_fu_862_p1[6]),
        .I2(tmp_44_2_1_cast_fu_873_p1[6]),
        .I3(tmp_44_2_cast_fu_862_p1[5]),
        .I4(tmp_44_2_2_cast_fu_885_p1[5]),
        .O(\tmp6_reg_1152[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp6_reg_1152[6]_i_4 
       (.I0(tmp_44_2_2_cast_fu_885_p1[5]),
        .I1(tmp_44_2_cast_fu_862_p1[5]),
        .I2(tmp_44_2_1_cast_fu_873_p1[5]),
        .O(\tmp6_reg_1152[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp6_reg_1152[6]_i_5 
       (.I0(tmp_44_2_cast_fu_862_p1[4]),
        .I1(tmp_44_2_2_cast_fu_885_p1[4]),
        .O(\tmp6_reg_1152[6]_i_5_n_0 ));
  FDRE \tmp6_reg_1152_reg[10] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[10]),
        .Q(tmp6_cast_fu_939_p1[10]),
        .R(1'b0));
  CARRY4 \tmp6_reg_1152_reg[10]_i_1 
       (.CI(\tmp6_reg_1152_reg[6]_i_1_n_0 ),
        .CO({\tmp6_reg_1152_reg[10]_i_1_n_0 ,\tmp6_reg_1152_reg[10]_i_1_n_1 ,\tmp6_reg_1152_reg[10]_i_1_n_2 ,\tmp6_reg_1152_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp6_reg_1152[10]_i_2_n_0 ,\tmp6_reg_1152[10]_i_3_n_0 ,\tmp6_reg_1152[10]_i_4_n_0 ,\tmp6_reg_1152[10]_i_5_n_0 }),
        .O(tmp6_fu_927_p2[10:7]),
        .S({\tmp6_reg_1152[10]_i_6_n_0 ,\tmp6_reg_1152[10]_i_7_n_0 ,\tmp6_reg_1152[10]_i_8_n_0 ,\tmp6_reg_1152[10]_i_9_n_0 }));
  FDRE \tmp6_reg_1152_reg[11] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[11]),
        .Q(tmp6_cast_fu_939_p1[11]),
        .R(1'b0));
  FDRE \tmp6_reg_1152_reg[12] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[12]),
        .Q(tmp6_cast_fu_939_p1[12]),
        .R(1'b0));
  FDRE \tmp6_reg_1152_reg[13] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[13]),
        .Q(tmp6_cast_fu_939_p1[13]),
        .R(1'b0));
  CARRY4 \tmp6_reg_1152_reg[13]_i_1 
       (.CI(\tmp6_reg_1152_reg[10]_i_1_n_0 ),
        .CO({\NLW_tmp6_reg_1152_reg[13]_i_1_CO_UNCONNECTED [3],tmp6_fu_927_p2[13],\NLW_tmp6_reg_1152_reg[13]_i_1_CO_UNCONNECTED [1],\tmp6_reg_1152_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_44_2_1_cast_fu_873_p1[12],\tmp6_reg_1152[13]_i_2_n_0 }),
        .O({\NLW_tmp6_reg_1152_reg[13]_i_1_O_UNCONNECTED [3:2],tmp6_fu_927_p2[12:11]}),
        .S({1'b0,1'b1,\tmp6_reg_1152[13]_i_3_n_0 ,\tmp6_reg_1152[13]_i_4_n_0 }));
  FDRE \tmp6_reg_1152_reg[4] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[4]),
        .Q(tmp6_cast_fu_939_p1[4]),
        .R(1'b0));
  FDRE \tmp6_reg_1152_reg[5] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[5]),
        .Q(tmp6_cast_fu_939_p1[5]),
        .R(1'b0));
  FDRE \tmp6_reg_1152_reg[6] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[6]),
        .Q(tmp6_cast_fu_939_p1[6]),
        .R(1'b0));
  CARRY4 \tmp6_reg_1152_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\tmp6_reg_1152_reg[6]_i_1_n_0 ,\tmp6_reg_1152_reg[6]_i_1_n_1 ,\tmp6_reg_1152_reg[6]_i_1_n_2 ,\tmp6_reg_1152_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp6_reg_1152[6]_i_2_n_0 ,tmp_44_2_1_cast_fu_873_p1[5],tmp_44_2_cast_fu_862_p1[4],1'b0}),
        .O({tmp6_fu_927_p2[6:4],\NLW_tmp6_reg_1152_reg[6]_i_1_O_UNCONNECTED [0]}),
        .S({\tmp6_reg_1152[6]_i_3_n_0 ,\tmp6_reg_1152[6]_i_4_n_0 ,\tmp6_reg_1152[6]_i_5_n_0 ,1'b0}));
  FDRE \tmp6_reg_1152_reg[7] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[7]),
        .Q(tmp6_cast_fu_939_p1[7]),
        .R(1'b0));
  FDRE \tmp6_reg_1152_reg[8] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[8]),
        .Q(tmp6_cast_fu_939_p1[8]),
        .R(1'b0));
  FDRE \tmp6_reg_1152_reg[9] 
       (.C(ap_clk),
        .CE(tmp1_reg_1142_reg0),
        .D(tmp6_fu_927_p2[9]),
        .Q(tmp6_cast_fu_939_p1[9]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[0]),
        .Q(tmp_1_cast_cast_reg_1034[0]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[10]),
        .Q(tmp_1_cast_cast_reg_1034[10]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[11]),
        .Q(tmp_1_cast_cast_reg_1034[11]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[1]),
        .Q(tmp_1_cast_cast_reg_1034[1]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[2]),
        .Q(tmp_1_cast_cast_reg_1034[2]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[3]),
        .Q(tmp_1_cast_cast_reg_1034[3]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[4]),
        .Q(tmp_1_cast_cast_reg_1034[4]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[5]),
        .Q(tmp_1_cast_cast_reg_1034[5]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[6]),
        .Q(tmp_1_cast_cast_reg_1034[6]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[7]),
        .Q(tmp_1_cast_cast_reg_1034[7]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[8]),
        .Q(tmp_1_cast_cast_reg_1034[8]),
        .R(1'b0));
  FDRE \tmp_1_cast_cast_reg_1034_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(w_V[9]),
        .Q(tmp_1_cast_cast_reg_1034[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \tmp_3_reg_1063[0]_i_1 
       (.I0(tmp_3_fu_540_p2),
        .I1(ap_CS_fsm_state2),
        .I2(exitcond1_fu_524_p2),
        .I3(tmp_3_reg_1063),
        .O(\tmp_3_reg_1063[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \tmp_3_reg_1063[0]_i_10 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[4]),
        .I1(y_V[4]),
        .I2(y_V[5]),
        .I3(tmp_7_cast_cast_reg_1039_reg__0[5]),
        .O(\tmp_3_reg_1063[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \tmp_3_reg_1063[0]_i_11 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[2]),
        .I1(y_V[2]),
        .I2(y_V[3]),
        .I3(tmp_7_cast_cast_reg_1039_reg__0[3]),
        .O(\tmp_3_reg_1063[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \tmp_3_reg_1063[0]_i_12 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[0]),
        .I1(y_V[0]),
        .I2(y_V[1]),
        .I3(tmp_7_cast_cast_reg_1039_reg__0[1]),
        .O(\tmp_3_reg_1063[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \tmp_3_reg_1063[0]_i_13 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[7]),
        .I1(y_V[7]),
        .I2(tmp_7_cast_cast_reg_1039_reg__0[6]),
        .I3(y_V[6]),
        .O(\tmp_3_reg_1063[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \tmp_3_reg_1063[0]_i_14 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[4]),
        .I1(y_V[4]),
        .I2(tmp_7_cast_cast_reg_1039_reg__0[5]),
        .I3(y_V[5]),
        .O(\tmp_3_reg_1063[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \tmp_3_reg_1063[0]_i_15 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[3]),
        .I1(y_V[3]),
        .I2(tmp_7_cast_cast_reg_1039_reg__0[2]),
        .I3(y_V[2]),
        .O(\tmp_3_reg_1063[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \tmp_3_reg_1063[0]_i_16 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[1]),
        .I1(y_V[1]),
        .I2(tmp_7_cast_cast_reg_1039_reg__0[0]),
        .I3(y_V[0]),
        .O(\tmp_3_reg_1063[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \tmp_3_reg_1063[0]_i_4 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[10]),
        .I1(y_V[10]),
        .I2(y_V[11]),
        .I3(tmp_7_cast_cast_reg_1039_reg__0[11]),
        .O(\tmp_3_reg_1063[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \tmp_3_reg_1063[0]_i_5 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[8]),
        .I1(y_V[8]),
        .I2(y_V[9]),
        .I3(tmp_7_cast_cast_reg_1039_reg__0[9]),
        .O(\tmp_3_reg_1063[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_3_reg_1063[0]_i_6 
       (.I0(\i_op_assign_reg_292_reg_n_0_[12] ),
        .O(\tmp_3_reg_1063[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \tmp_3_reg_1063[0]_i_7 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[10]),
        .I1(y_V[10]),
        .I2(tmp_7_cast_cast_reg_1039_reg__0[11]),
        .I3(y_V[11]),
        .O(\tmp_3_reg_1063[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \tmp_3_reg_1063[0]_i_8 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[9]),
        .I1(y_V[9]),
        .I2(tmp_7_cast_cast_reg_1039_reg__0[8]),
        .I3(y_V[8]),
        .O(\tmp_3_reg_1063[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \tmp_3_reg_1063[0]_i_9 
       (.I0(tmp_7_cast_cast_reg_1039_reg__0[6]),
        .I1(y_V[6]),
        .I2(y_V[7]),
        .I3(tmp_7_cast_cast_reg_1039_reg__0[7]),
        .O(\tmp_3_reg_1063[0]_i_9_n_0 ));
  FDRE \tmp_3_reg_1063_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_3_reg_1063[0]_i_1_n_0 ),
        .Q(tmp_3_reg_1063),
        .R(1'b0));
  CARRY4 \tmp_3_reg_1063_reg[0]_i_2 
       (.CI(\tmp_3_reg_1063_reg[0]_i_3_n_0 ),
        .CO({\NLW_tmp_3_reg_1063_reg[0]_i_2_CO_UNCONNECTED [3],tmp_3_fu_540_p2,\tmp_3_reg_1063_reg[0]_i_2_n_2 ,\tmp_3_reg_1063_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\tmp_3_reg_1063[0]_i_4_n_0 ,\tmp_3_reg_1063[0]_i_5_n_0 }),
        .O(\NLW_tmp_3_reg_1063_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\tmp_3_reg_1063[0]_i_6_n_0 ,\tmp_3_reg_1063[0]_i_7_n_0 ,\tmp_3_reg_1063[0]_i_8_n_0 }));
  CARRY4 \tmp_3_reg_1063_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\tmp_3_reg_1063_reg[0]_i_3_n_0 ,\tmp_3_reg_1063_reg[0]_i_3_n_1 ,\tmp_3_reg_1063_reg[0]_i_3_n_2 ,\tmp_3_reg_1063_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_3_reg_1063[0]_i_9_n_0 ,\tmp_3_reg_1063[0]_i_10_n_0 ,\tmp_3_reg_1063[0]_i_11_n_0 ,\tmp_3_reg_1063[0]_i_12_n_0 }),
        .O(\NLW_tmp_3_reg_1063_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\tmp_3_reg_1063[0]_i_13_n_0 ,\tmp_3_reg_1063[0]_i_14_n_0 ,\tmp_3_reg_1063[0]_i_15_n_0 ,\tmp_3_reg_1063[0]_i_16_n_0 }));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tmp_4_reg_1068[0]_i_1 
       (.I0(tmp_4_fu_545_p2),
        .I1(ap_CS_fsm_state2),
        .I2(exitcond1_fu_524_p2),
        .I3(tmp_4_reg_1068),
        .O(\tmp_4_reg_1068[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tmp_4_reg_1068[0]_i_2 
       (.I0(\tmp_4_reg_1068[0]_i_3_n_0 ),
        .I1(y_V[5]),
        .I2(y_V[4]),
        .I3(y_V[6]),
        .I4(y_V[1]),
        .I5(\tmp_4_reg_1068[0]_i_4_n_0 ),
        .O(tmp_4_fu_545_p2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_4_reg_1068[0]_i_3 
       (.I0(y_V[0]),
        .I1(y_V[3]),
        .I2(y_V[2]),
        .I3(\i_op_assign_reg_292_reg_n_0_[12] ),
        .O(\tmp_4_reg_1068[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tmp_4_reg_1068[0]_i_4 
       (.I0(y_V[7]),
        .I1(y_V[11]),
        .I2(y_V[10]),
        .I3(y_V[9]),
        .I4(y_V[8]),
        .O(\tmp_4_reg_1068[0]_i_4_n_0 ));
  FDRE \tmp_4_reg_1068_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_4_reg_1068[0]_i_1_n_0 ),
        .Q(tmp_4_reg_1068),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[0]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[0]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[10]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[10]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[11]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[11]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[1]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[1]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[2]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[2]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[3]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[3]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[4]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[4]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[5]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[5]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[6]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[6]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[7]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[7]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[8]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[8]),
        .R(1'b0));
  FDRE \tmp_7_cast_cast_reg_1039_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(h_V[9]),
        .Q(tmp_7_cast_cast_reg_1039_reg__0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_9_reg_1044[0]_i_1 
       (.I0(w_V[0]),
        .O(tmp_9_fu_472_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_9_reg_1044[1]_i_1 
       (.I0(w_V[0]),
        .I1(w_V[1]),
        .O(tmp_9_fu_472_p2[1]));
  FDRE \tmp_9_reg_1044_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[0]),
        .Q(tmp_9_reg_1044[0]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[10]),
        .Q(tmp_9_reg_1044[10]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[11]),
        .Q(tmp_9_reg_1044[11]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[12]),
        .Q(tmp_9_reg_1044[12]),
        .R(1'b0));
  CARRY4 \tmp_9_reg_1044_reg[12]_i_1 
       (.CI(\tmp_9_reg_1044_reg[8]_i_1_n_0 ),
        .CO({tmp_9_fu_472_p2[12],\NLW_tmp_9_reg_1044_reg[12]_i_1_CO_UNCONNECTED [2],\tmp_9_reg_1044_reg[12]_i_1_n_2 ,\tmp_9_reg_1044_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_9_reg_1044_reg[12]_i_1_O_UNCONNECTED [3],tmp_9_fu_472_p2[11:9]}),
        .S({1'b1,w_V[11:9]}));
  FDRE \tmp_9_reg_1044_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[1]),
        .Q(tmp_9_reg_1044[1]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[2]),
        .Q(tmp_9_reg_1044[2]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[3]),
        .Q(tmp_9_reg_1044[3]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[4]),
        .Q(tmp_9_reg_1044[4]),
        .R(1'b0));
  CARRY4 \tmp_9_reg_1044_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\tmp_9_reg_1044_reg[4]_i_1_n_0 ,\tmp_9_reg_1044_reg[4]_i_1_n_1 ,\tmp_9_reg_1044_reg[4]_i_1_n_2 ,\tmp_9_reg_1044_reg[4]_i_1_n_3 }),
        .CYINIT(w_V[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tmp_9_fu_472_p2[4:2],tmp_2_fu_428_p2[1]}),
        .S(w_V[4:1]));
  FDRE \tmp_9_reg_1044_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[5]),
        .Q(tmp_9_reg_1044[5]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[6]),
        .Q(tmp_9_reg_1044[6]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[7]),
        .Q(tmp_9_reg_1044[7]),
        .R(1'b0));
  FDRE \tmp_9_reg_1044_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[8]),
        .Q(tmp_9_reg_1044[8]),
        .R(1'b0));
  CARRY4 \tmp_9_reg_1044_reg[8]_i_1 
       (.CI(\tmp_9_reg_1044_reg[4]_i_1_n_0 ),
        .CO({\tmp_9_reg_1044_reg[8]_i_1_n_0 ,\tmp_9_reg_1044_reg[8]_i_1_n_1 ,\tmp_9_reg_1044_reg[8]_i_1_n_2 ,\tmp_9_reg_1044_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_9_fu_472_p2[8:5]),
        .S(w_V[8:5]));
  FDRE \tmp_9_reg_1044_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[9]),
        .Q(tmp_9_reg_1044[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[0] ),
        .I5(wlb_w_val_V_0_1[0]),
        .O(\tmp_V_1_fu_174[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[1] ),
        .I5(wlb_w_val_V_0_1[1]),
        .O(\tmp_V_1_fu_174[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[2] ),
        .I5(wlb_w_val_V_0_1[2]),
        .O(\tmp_V_1_fu_174[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[3]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[3] ),
        .I5(wlb_w_val_V_0_1[3]),
        .O(\tmp_V_1_fu_174[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[4] ),
        .I5(wlb_w_val_V_0_1[4]),
        .O(\tmp_V_1_fu_174[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[5]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[5] ),
        .I5(wlb_w_val_V_0_1[5]),
        .O(\tmp_V_1_fu_174[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[6]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[6] ),
        .I5(wlb_w_val_V_0_1[6]),
        .O(\tmp_V_1_fu_174[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_1_fu_174[7]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(\tmp_V_fu_170_reg_n_0_[7] ),
        .I5(wlb_w_val_V_0_1[7]),
        .O(\tmp_V_1_fu_174[7]_i_1_n_0 ));
  FDRE \tmp_V_1_fu_174_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[0]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[0]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[1]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[1]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[2]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[2]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[3]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[3]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[4]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[4]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[5]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[5]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[6]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[6]),
        .R(1'b0));
  FDRE \tmp_V_1_fu_174_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_1_fu_174[7]_i_1_n_0 ),
        .Q(tmp_V_1_fu_174[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[0]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[0] ),
        .O(\tmp_V_fu_170[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[1]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[1] ),
        .O(\tmp_V_fu_170[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[2]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[2] ),
        .O(\tmp_V_fu_170[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[3]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[3]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[3] ),
        .O(\tmp_V_fu_170[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[4]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[4] ),
        .O(\tmp_V_fu_170[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[5]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[5]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[5] ),
        .O(\tmp_V_fu_170[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[6]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[6]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[6] ),
        .O(\tmp_V_fu_170[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \tmp_V_fu_170[7]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(or_cond1_reg_1085),
        .O(tmp_V_fu_170));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \tmp_V_fu_170[7]_i_2 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(src_V_V_dout[7]),
        .I5(\wlb_w_val_V_0_0_reg_n_0_[7] ),
        .O(\tmp_V_fu_170[7]_i_2_n_0 ));
  FDRE \tmp_V_fu_170_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[0]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[0] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[1]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[1] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[2]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[2] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[3]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[3] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[4]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[4] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[5]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[5] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[6]_i_1_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[6] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_fu_170_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\tmp_V_fu_170[7]_i_2_n_0 ),
        .Q(\tmp_V_fu_170_reg_n_0_[7] ),
        .R(tmp_V_fu_170));
  FDRE \tmp_V_load_1_reg_1137_reg[0] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[0] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[5]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[1] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[1] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[6]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[2] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[2] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[7]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[3] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[3] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[8]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[4] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[4] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[9]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[5] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[5] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[10]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[6] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[6] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[11]),
        .R(1'b0));
  FDRE \tmp_V_load_1_reg_1137_reg[7] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(\tmp_V_fu_170_reg_n_0_[7] ),
        .Q(tmp_44_2_1_cast_fu_873_p1[12]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_s_reg_1049[0]_i_1 
       (.I0(h_V[0]),
        .O(tmp_s_fu_478_p2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_s_reg_1049[12]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_NS_fsm1));
  FDRE \tmp_s_reg_1049_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[0]),
        .Q(tmp_s_reg_1049[0]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[10]),
        .Q(tmp_s_reg_1049[10]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[11]),
        .Q(tmp_s_reg_1049[11]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[12]),
        .Q(tmp_s_reg_1049[12]),
        .R(1'b0));
  CARRY4 \tmp_s_reg_1049_reg[12]_i_2 
       (.CI(\tmp_s_reg_1049_reg[8]_i_1_n_0 ),
        .CO({tmp_s_fu_478_p2[12],\NLW_tmp_s_reg_1049_reg[12]_i_2_CO_UNCONNECTED [2],\tmp_s_reg_1049_reg[12]_i_2_n_2 ,\tmp_s_reg_1049_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_s_reg_1049_reg[12]_i_2_O_UNCONNECTED [3],tmp_s_fu_478_p2[11:9]}),
        .S({1'b1,h_V[11:9]}));
  FDRE \tmp_s_reg_1049_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[1]),
        .Q(tmp_s_reg_1049[1]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[2]),
        .Q(tmp_s_reg_1049[2]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[3]),
        .Q(tmp_s_reg_1049[3]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[4]),
        .Q(tmp_s_reg_1049[4]),
        .R(1'b0));
  CARRY4 \tmp_s_reg_1049_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\tmp_s_reg_1049_reg[4]_i_1_n_0 ,\tmp_s_reg_1049_reg[4]_i_1_n_1 ,\tmp_s_reg_1049_reg[4]_i_1_n_2 ,\tmp_s_reg_1049_reg[4]_i_1_n_3 }),
        .CYINIT(h_V[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_s_fu_478_p2[4:1]),
        .S(h_V[4:1]));
  FDRE \tmp_s_reg_1049_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[5]),
        .Q(tmp_s_reg_1049[5]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[6]),
        .Q(tmp_s_reg_1049[6]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[7]),
        .Q(tmp_s_reg_1049[7]),
        .R(1'b0));
  FDRE \tmp_s_reg_1049_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[8]),
        .Q(tmp_s_reg_1049[8]),
        .R(1'b0));
  CARRY4 \tmp_s_reg_1049_reg[8]_i_1 
       (.CI(\tmp_s_reg_1049_reg[4]_i_1_n_0 ),
        .CO({\tmp_s_reg_1049_reg[8]_i_1_n_0 ,\tmp_s_reg_1049_reg[8]_i_1_n_1 ,\tmp_s_reg_1049_reg[8]_i_1_n_2 ,\tmp_s_reg_1049_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_s_fu_478_p2[8:5]),
        .S(h_V[8:5]));
  FDRE \tmp_s_reg_1049_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_s_fu_478_p2[9]),
        .Q(tmp_s_reg_1049[9]),
        .R(1'b0));
  gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb wlb_lb_val_V_0_U
       (.ADDRARDADDR(wlb_lb_val_V_1_address1),
        .D(wlb_lb_val_V_0_q0),
        .Q(col_loc_fu_142),
        .WEA(wlb_lb_val_V_0_ce1),
        .\ap_CS_fsm_reg[2] ({wlb_lb_val_V_0_U_n_8,wlb_lb_val_V_0_U_n_9,wlb_lb_val_V_0_U_n_10,wlb_lb_val_V_0_U_n_11,wlb_lb_val_V_0_U_n_12,wlb_lb_val_V_0_U_n_13,wlb_lb_val_V_0_U_n_14,wlb_lb_val_V_0_U_n_15}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .or_cond1_reg_1085(or_cond1_reg_1085),
        .src_V_V_dout(src_V_V_dout),
        .wlb_lb_val_V_0_ce0(wlb_lb_val_V_0_ce0),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7] (ap_CS_fsm_pp0_stage017_in),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 (ap_enable_reg_pp0_iter1_reg_n_0),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 (\exitcond_reg_1076_reg_n_0_[0] ),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 (tmp_44_1_2_cast_fu_846_p1));
  LUT5 #(
    .INIT(32'h00000700)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_1 
       (.I0(tmp_5_fu_574_p2),
        .I1(tmp_3_reg_1063),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .O(tmp_11_reg_10890));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_10 
       (.I0(tmp_1_cast_cast_reg_1034[4]),
        .I1(i_op_assign_1_reg_303_reg[4]),
        .I2(i_op_assign_1_reg_303_reg[5]),
        .I3(tmp_1_cast_cast_reg_1034[5]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_11 
       (.I0(tmp_1_cast_cast_reg_1034[2]),
        .I1(i_op_assign_1_reg_303_reg[2]),
        .I2(i_op_assign_1_reg_303_reg[3]),
        .I3(tmp_1_cast_cast_reg_1034[3]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_12 
       (.I0(tmp_1_cast_cast_reg_1034[0]),
        .I1(i_op_assign_1_reg_303_reg[0]),
        .I2(i_op_assign_1_reg_303_reg[1]),
        .I3(tmp_1_cast_cast_reg_1034[1]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_13 
       (.I0(tmp_1_cast_cast_reg_1034[7]),
        .I1(i_op_assign_1_reg_303_reg[7]),
        .I2(tmp_1_cast_cast_reg_1034[6]),
        .I3(i_op_assign_1_reg_303_reg[6]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_14 
       (.I0(tmp_1_cast_cast_reg_1034[5]),
        .I1(i_op_assign_1_reg_303_reg[5]),
        .I2(tmp_1_cast_cast_reg_1034[4]),
        .I3(i_op_assign_1_reg_303_reg[4]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_15 
       (.I0(tmp_1_cast_cast_reg_1034[2]),
        .I1(i_op_assign_1_reg_303_reg[2]),
        .I2(tmp_1_cast_cast_reg_1034[3]),
        .I3(i_op_assign_1_reg_303_reg[3]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_16 
       (.I0(tmp_1_cast_cast_reg_1034[1]),
        .I1(i_op_assign_1_reg_303_reg[1]),
        .I2(tmp_1_cast_cast_reg_1034[0]),
        .I3(i_op_assign_1_reg_303_reg[0]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_4 
       (.I0(tmp_1_cast_cast_reg_1034[10]),
        .I1(i_op_assign_1_reg_303_reg[10]),
        .I2(i_op_assign_1_reg_303_reg[11]),
        .I3(tmp_1_cast_cast_reg_1034[11]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_5 
       (.I0(tmp_1_cast_cast_reg_1034[8]),
        .I1(i_op_assign_1_reg_303_reg[8]),
        .I2(i_op_assign_1_reg_303_reg[9]),
        .I3(tmp_1_cast_cast_reg_1034[9]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_6 
       (.I0(i_op_assign_1_reg_303_reg[12]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_7 
       (.I0(tmp_1_cast_cast_reg_1034[11]),
        .I1(i_op_assign_1_reg_303_reg[11]),
        .I2(tmp_1_cast_cast_reg_1034[10]),
        .I3(i_op_assign_1_reg_303_reg[10]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_8 
       (.I0(tmp_1_cast_cast_reg_1034[8]),
        .I1(i_op_assign_1_reg_303_reg[8]),
        .I2(tmp_1_cast_cast_reg_1034[9]),
        .I3(i_op_assign_1_reg_303_reg[9]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wlb_lb_val_V_0_addr_1_reg_1094[10]_i_9 
       (.I0(tmp_1_cast_cast_reg_1034[6]),
        .I1(i_op_assign_1_reg_303_reg[6]),
        .I2(i_op_assign_1_reg_303_reg[7]),
        .I3(tmp_1_cast_cast_reg_1034[7]),
        .O(\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_9_n_0 ));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[0] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[0]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[0]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[10] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[10]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[10]),
        .R(1'b0));
  CARRY4 \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2 
       (.CI(\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_0 ),
        .CO({\NLW_wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_CO_UNCONNECTED [3],tmp_5_fu_574_p2,\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_n_2 ,\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_4_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_5_n_0 }),
        .O(\NLW_wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_6_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_7_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_8_n_0 }));
  CARRY4 \wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3 
       (.CI(1'b0),
        .CO({\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_1 ,\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_2 ,\wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_9_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_10_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_11_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_12_n_0 }),
        .O(\NLW_wlb_lb_val_V_0_addr_1_reg_1094_reg[10]_i_3_O_UNCONNECTED [3:0]),
        .S({\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_13_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_14_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_15_n_0 ,\wlb_lb_val_V_0_addr_1_reg_1094[10]_i_16_n_0 }));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[1] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[1]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[1]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[2] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[2]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[2]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[3] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[3]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[3]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[4] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[4]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[4]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[5] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[5]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[5]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[6] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[6]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[6]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[7] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[7]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[7]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[8] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[8]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[8]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_1_reg_1094_reg[9] 
       (.C(ap_clk),
        .CE(tmp_11_reg_10890),
        .D(col_loc_fu_142[9]),
        .Q(wlb_lb_val_V_1_addr_1_reg_1100[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04000000)) 
    \wlb_lb_val_V_0_addr_reg_1111[10]_i_1 
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(tmp_5_fu_574_p2),
        .I4(tmp_3_reg_1063),
        .O(tmp_7_reg_11060));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[0] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[0]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[0]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[10] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[10]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[10]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[1] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[1]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[1]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[2] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[2]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[2]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[3] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[3]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[3]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[4] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[4]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[4]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[5] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[5]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[5]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[6] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[6]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[6]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[7] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[7]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[7]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[8] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[8]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[8]),
        .R(1'b0));
  FDRE \wlb_lb_val_V_0_addr_reg_1111_reg[9] 
       (.C(ap_clk),
        .CE(tmp_7_reg_11060),
        .D(col_loc_fu_142[9]),
        .Q(wlb_lb_val_V_1_addr_reg_1117[9]),
        .R(1'b0));
  gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb_0 wlb_lb_val_V_1_U
       (.ADDRARDADDR(wlb_lb_val_V_1_address1),
        .CO(ap_condition_pp0_exit_iter0_state3),
        .D(wlb_lb_val_V_1_q0),
        .Q(col_loc_fu_142),
        .WEA(wlb_lb_val_V_0_ce1),
        .\ap_CS_fsm_reg[2] (wlb_lb_val_V_1_U_n_21),
        .\ap_CS_fsm_reg[2]_0 ({wlb_lb_val_V_1_U_n_23,wlb_lb_val_V_1_U_n_24,wlb_lb_val_V_1_U_n_25,wlb_lb_val_V_1_U_n_26,wlb_lb_val_V_1_U_n_27,wlb_lb_val_V_1_U_n_28,wlb_lb_val_V_1_U_n_29,wlb_lb_val_V_1_U_n_30}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .dst_V_V_full_n(dst_V_V_full_n),
        .exitcond_reg_1076_pp0_iter3_reg(exitcond_reg_1076_pp0_iter3_reg),
        .or_cond1_reg_1085(or_cond1_reg_1085),
        .or_cond_reg_1123_pp0_iter3_reg(or_cond_reg_1123_pp0_iter3_reg),
        .ram_reg(wlb_lb_val_V_0_q0),
        .ram_reg_0(wlb_lb_val_V_1_addr_reg_1117),
        .ram_reg_1(wlb_lb_val_V_1_addr_1_reg_1100),
        .src_V_V_empty_n(src_V_V_empty_n),
        .wlb_lb_val_V_0_ce0(wlb_lb_val_V_0_ce0),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7] (ap_CS_fsm_pp0_stage017_in),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 (ap_enable_reg_pp0_iter4_reg_n_0),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 (\exitcond_reg_1076_reg_n_0_[0] ),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 (ap_enable_reg_pp0_iter1_reg_n_0),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 (tmp_44_0_2_cast_fu_807_p1));
  LUT5 #(
    .INIT(32'h22220222)) 
    \wlb_w_val_V_0_0[7]_i_1 
       (.I0(\wlb_w_val_V_0_0[7]_i_3_n_0 ),
        .I1(wlb_lb_val_V_1_U_n_21),
        .I2(or_cond1_reg_1085),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(\exitcond_reg_1076_reg_n_0_[0] ),
        .O(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \wlb_w_val_V_0_0[7]_i_2 
       (.I0(\ap_CS_fsm[3]_i_2_n_0 ),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(or_cond1_reg_1085),
        .I4(wlb_lb_val_V_1_U_n_21),
        .I5(\wlb_w_val_V_0_0[7]_i_3_n_0 ),
        .O(wlb_w_val_V_0_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wlb_w_val_V_0_0[7]_i_3 
       (.I0(tmp_3_reg_1063),
        .I1(tmp_5_fu_574_p2),
        .O(\wlb_w_val_V_0_0[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \wlb_w_val_V_0_0_loc_2_reg_337[7]_i_1 
       (.I0(or_cond1_reg_1085),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(ap_block_pp0_stage0_subdone),
        .O(wlb_w_val_V_0_0_loc_2_reg_337));
  LUT3 #(
    .INIT(8'h08)) 
    \wlb_w_val_V_0_0_loc_2_reg_337[7]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_block_pp0_stage0_subdone),
        .O(ap_condition_254));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[0]),
        .Q(tmp_44_2_2_cast_fu_885_p1[4]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[1]),
        .Q(tmp_44_2_2_cast_fu_885_p1[5]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[2]),
        .Q(tmp_44_2_2_cast_fu_885_p1[6]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[3]),
        .Q(tmp_44_2_2_cast_fu_885_p1[7]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[4]),
        .Q(tmp_44_2_2_cast_fu_885_p1[8]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[5]),
        .Q(tmp_44_2_2_cast_fu_885_p1[9]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[6]),
        .Q(tmp_44_2_2_cast_fu_885_p1[10]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE \wlb_w_val_V_0_0_loc_2_reg_337_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_254),
        .D(src_V_V_dout[7]),
        .Q(tmp_44_2_2_cast_fu_885_p1[11]),
        .R(wlb_w_val_V_0_0_loc_2_reg_337));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[0]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[0] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[1]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[1] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[2]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[2] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[3]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[3] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[4]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[4] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[5]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[5] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[6]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[6] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_0_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_0_0),
        .D(src_V_V_dout[7]),
        .Q(\wlb_w_val_V_0_0_reg_n_0_[7] ),
        .R(\wlb_w_val_V_0_0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[0] ),
        .Q(wlb_w_val_V_0_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[1] ),
        .Q(wlb_w_val_V_0_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[2] ),
        .Q(wlb_w_val_V_0_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[3] ),
        .Q(wlb_w_val_V_0_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[4] ),
        .Q(wlb_w_val_V_0_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[5] ),
        .Q(wlb_w_val_V_0_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[6] ),
        .Q(wlb_w_val_V_0_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_1_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\tmp_V_fu_170_reg_n_0_[7] ),
        .Q(wlb_w_val_V_0_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[0]),
        .Q(tmp_44_2_cast_fu_862_p1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[1]),
        .Q(tmp_44_2_cast_fu_862_p1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[2]),
        .Q(tmp_44_2_cast_fu_862_p1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[3]),
        .Q(tmp_44_2_cast_fu_862_p1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[4]),
        .Q(tmp_44_2_cast_fu_862_p1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[5]),
        .Q(tmp_44_2_cast_fu_862_p1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[6]),
        .Q(tmp_44_2_cast_fu_862_p1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_0_2_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(tmp_V_1_fu_174[7]),
        .Q(tmp_44_2_cast_fu_862_p1[11]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \wlb_w_val_V_1_0_loc_1_reg_1132[7]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .O(tmp_V_load_1_reg_11370));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[0] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[0]),
        .Q(tmp_44_1_1_cast_fu_834_p1[6]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[1] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[1]),
        .Q(tmp_44_1_1_cast_fu_834_p1[7]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[2] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[2]),
        .Q(tmp_44_1_1_cast_fu_834_p1[8]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[3] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[3]),
        .Q(tmp_44_1_1_cast_fu_834_p1[9]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[4] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[4]),
        .Q(tmp_44_1_1_cast_fu_834_p1[10]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[5] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[5]),
        .Q(tmp_44_1_1_cast_fu_834_p1[11]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[6] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[6]),
        .Q(tmp_44_1_1_cast_fu_834_p1[12]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_1_reg_1132_reg[7] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_1_0_loc_fu_162[7]),
        .Q(tmp_44_1_1_cast_fu_834_p1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[0]),
        .Q(tmp_44_1_2_cast_fu_846_p1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[1]),
        .Q(tmp_44_1_2_cast_fu_846_p1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[2]),
        .Q(tmp_44_1_2_cast_fu_846_p1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[3]),
        .Q(tmp_44_1_2_cast_fu_846_p1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[4]),
        .Q(tmp_44_1_2_cast_fu_846_p1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[5]),
        .Q(tmp_44_1_2_cast_fu_846_p1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[6]),
        .Q(tmp_44_1_2_cast_fu_846_p1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_0_loc_2_reg_349_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_0_q0[7]),
        .Q(tmp_44_1_2_cast_fu_846_p1[12]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF000800080008)) 
    \wlb_w_val_V_1_0_loc_fu_162[7]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_start),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(wlb_w_val_V_2_1_loc_fu_158));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_15),
        .Q(wlb_w_val_V_1_0_loc_fu_162[0]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_14),
        .Q(wlb_w_val_V_1_0_loc_fu_162[1]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_13),
        .Q(wlb_w_val_V_1_0_loc_fu_162[2]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_12),
        .Q(wlb_w_val_V_1_0_loc_fu_162[3]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_11),
        .Q(wlb_w_val_V_1_0_loc_fu_162[4]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_10),
        .Q(wlb_w_val_V_1_0_loc_fu_162[5]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_9),
        .Q(wlb_w_val_V_1_0_loc_fu_162[6]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_0_loc_fu_162_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_0_U_n_8),
        .Q(wlb_w_val_V_1_0_loc_fu_162[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[0]),
        .I5(wlb_w_val_V_1_1[0]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[1]),
        .I5(wlb_w_val_V_1_1[1]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[2]),
        .I5(wlb_w_val_V_1_1[2]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[3]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[3]),
        .I5(wlb_w_val_V_1_1[3]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[4]),
        .I5(wlb_w_val_V_1_1[4]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[5]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[5]),
        .I5(wlb_w_val_V_1_1[5]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[6]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[6]),
        .I5(wlb_w_val_V_1_1[6]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_1_loc_fu_166[7]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_1_0_loc_fu_162[7]),
        .I5(wlb_w_val_V_1_1[7]),
        .O(\wlb_w_val_V_1_1_loc_fu_166[7]_i_1_n_0 ));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[0]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[0]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[1]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[1]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[2]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[2]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[3]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[3]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[4]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[4]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[5]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[5]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[6]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[6]),
        .R(1'b0));
  FDRE \wlb_w_val_V_1_1_loc_fu_166_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_1_1_loc_fu_166[7]_i_1_n_0 ),
        .Q(wlb_w_val_V_1_1_loc_fu_166[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[0]),
        .Q(wlb_w_val_V_1_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[1]),
        .Q(wlb_w_val_V_1_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[2]),
        .Q(wlb_w_val_V_1_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[3]),
        .Q(wlb_w_val_V_1_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[4]),
        .Q(wlb_w_val_V_1_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[5]),
        .Q(wlb_w_val_V_1_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[6]),
        .Q(wlb_w_val_V_1_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_1_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_0_loc_fu_162[7]),
        .Q(wlb_w_val_V_1_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[0]),
        .Q(tmp_44_1_cast_fu_823_p1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[1]),
        .Q(tmp_44_1_cast_fu_823_p1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[2]),
        .Q(tmp_44_1_cast_fu_823_p1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[3]),
        .Q(tmp_44_1_cast_fu_823_p1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[4]),
        .Q(tmp_44_1_cast_fu_823_p1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[5]),
        .Q(tmp_44_1_cast_fu_823_p1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[6]),
        .Q(tmp_44_1_cast_fu_823_p1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_1_2_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_1_1_loc_fu_166[7]),
        .Q(tmp_44_1_cast_fu_823_p1[12]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[0] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[0]),
        .Q(tmp_44_0_1_cast_fu_795_p1[5]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[1] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[1]),
        .Q(tmp_44_0_1_cast_fu_795_p1[6]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[2] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[2]),
        .Q(tmp_44_0_1_cast_fu_795_p1[7]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[3] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[3]),
        .Q(tmp_44_0_1_cast_fu_795_p1[8]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[4] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[4]),
        .Q(tmp_44_0_1_cast_fu_795_p1[9]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[5] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[5]),
        .Q(tmp_44_0_1_cast_fu_795_p1[10]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[6] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[6]),
        .Q(tmp_44_0_1_cast_fu_795_p1[11]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_1_reg_1127_reg[7] 
       (.C(ap_clk),
        .CE(tmp_V_load_1_reg_11370),
        .D(wlb_w_val_V_2_0_loc_fu_154[7]),
        .Q(tmp_44_0_1_cast_fu_795_p1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[0]),
        .Q(tmp_44_0_2_cast_fu_807_p1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[1]),
        .Q(tmp_44_0_2_cast_fu_807_p1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[2]),
        .Q(tmp_44_0_2_cast_fu_807_p1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[3]),
        .Q(tmp_44_0_2_cast_fu_807_p1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[4]),
        .Q(tmp_44_0_2_cast_fu_807_p1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[5]),
        .Q(tmp_44_0_2_cast_fu_807_p1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[6]),
        .Q(tmp_44_0_2_cast_fu_807_p1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_0_loc_2_reg_361_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_lb_val_V_1_q0[7]),
        .Q(tmp_44_0_2_cast_fu_807_p1[11]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_30),
        .Q(wlb_w_val_V_2_0_loc_fu_154[0]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_29),
        .Q(wlb_w_val_V_2_0_loc_fu_154[1]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_28),
        .Q(wlb_w_val_V_2_0_loc_fu_154[2]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_27),
        .Q(wlb_w_val_V_2_0_loc_fu_154[3]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_26),
        .Q(wlb_w_val_V_2_0_loc_fu_154[4]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_25),
        .Q(wlb_w_val_V_2_0_loc_fu_154[5]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_24),
        .Q(wlb_w_val_V_2_0_loc_fu_154[6]),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_0_loc_fu_154_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(wlb_lb_val_V_1_U_n_23),
        .Q(wlb_w_val_V_2_0_loc_fu_154[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[0]),
        .I5(wlb_w_val_V_2_1[0]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[1]),
        .I5(wlb_w_val_V_2_1[1]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[2]),
        .I5(wlb_w_val_V_2_1[2]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[3]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[3]),
        .I5(wlb_w_val_V_2_1[3]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[4]),
        .I5(wlb_w_val_V_2_1[4]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[5]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[5]),
        .I5(wlb_w_val_V_2_1[5]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[6]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[6]),
        .I5(wlb_w_val_V_2_1[6]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_1_loc_fu_158[7]_i_1 
       (.I0(ap_CS_fsm_pp0_stage017_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_reg_1076_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(wlb_w_val_V_2_0_loc_fu_154[7]),
        .I5(wlb_w_val_V_2_1[7]),
        .O(\wlb_w_val_V_2_1_loc_fu_158[7]_i_1_n_0 ));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[0] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[0]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[1] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[1]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[2] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[2]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[3] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[3]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[4] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[4]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[5] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[5]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[6] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[6]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \wlb_w_val_V_2_1_loc_fu_158_reg[7] 
       (.C(ap_clk),
        .CE(wlb_w_val_V_2_1_loc_fu_158),
        .D(\wlb_w_val_V_2_1_loc_fu_158[7]_i_1_n_0 ),
        .Q(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[0]),
        .Q(wlb_w_val_V_2_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[1]),
        .Q(wlb_w_val_V_2_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[2]),
        .Q(wlb_w_val_V_2_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[3]),
        .Q(wlb_w_val_V_2_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[4]),
        .Q(wlb_w_val_V_2_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[5]),
        .Q(wlb_w_val_V_2_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[6]),
        .Q(wlb_w_val_V_2_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_1_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(wlb_w_val_V_2_0_loc_fu_154[7]),
        .Q(wlb_w_val_V_2_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[0] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[0] ),
        .Q(tmp_44_cast_fu_784_p1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[1] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[1] ),
        .Q(tmp_44_cast_fu_784_p1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[2] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[2] ),
        .Q(tmp_44_cast_fu_784_p1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[3] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[3] ),
        .Q(tmp_44_cast_fu_784_p1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[4] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[4] ),
        .Q(tmp_44_cast_fu_784_p1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[5] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[5] ),
        .Q(tmp_44_cast_fu_784_p1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[6] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[6] ),
        .Q(tmp_44_cast_fu_784_p1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_w_val_V_2_2_reg[7] 
       (.C(ap_clk),
        .CE(wlb_lb_val_V_0_ce1),
        .D(\wlb_w_val_V_2_1_loc_fu_158_reg_n_0_[7] ),
        .Q(tmp_44_cast_fu_784_p1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_9_fu_472_p2[0]),
        .Q(wlb_xsize_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[10]),
        .Q(wlb_xsize_V[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[11]),
        .Q(wlb_xsize_V[11]),
        .R(1'b0));
  CARRY4 \wlb_xsize_V_reg[11]_i_1 
       (.CI(\wlb_xsize_V_reg[8]_i_1_n_0 ),
        .CO({\NLW_wlb_xsize_V_reg[11]_i_1_CO_UNCONNECTED [3:2],\wlb_xsize_V_reg[11]_i_1_n_2 ,\wlb_xsize_V_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wlb_xsize_V_reg[11]_i_1_O_UNCONNECTED [3],tmp_2_fu_428_p2[11:9]}),
        .S({1'b0,w_V[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[1]),
        .Q(wlb_xsize_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[2]),
        .Q(wlb_xsize_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[3]),
        .Q(wlb_xsize_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[4]),
        .Q(wlb_xsize_V[4]),
        .R(1'b0));
  CARRY4 \wlb_xsize_V_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\wlb_xsize_V_reg[4]_i_1_n_0 ,\wlb_xsize_V_reg[4]_i_1_n_1 ,\wlb_xsize_V_reg[4]_i_1_n_2 ,\wlb_xsize_V_reg[4]_i_1_n_3 }),
        .CYINIT(w_V[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tmp_2_fu_428_p2[4:2],\NLW_wlb_xsize_V_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S(w_V[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[5]),
        .Q(wlb_xsize_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[6]),
        .Q(wlb_xsize_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[7]),
        .Q(wlb_xsize_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[8]),
        .Q(wlb_xsize_V[8]),
        .R(1'b0));
  CARRY4 \wlb_xsize_V_reg[8]_i_1 
       (.CI(\wlb_xsize_V_reg[4]_i_1_n_0 ),
        .CO({\wlb_xsize_V_reg[8]_i_1_n_0 ,\wlb_xsize_V_reg[8]_i_1_n_1 ,\wlb_xsize_V_reg[8]_i_1_n_2 ,\wlb_xsize_V_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_2_fu_428_p2[8:5]),
        .S(w_V[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wlb_xsize_V_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(tmp_2_fu_428_p2[9]),
        .Q(wlb_xsize_V[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1000DFFF)) 
    \x_V[0]_INST_0 
       (.I0(c_1_reg_325_reg[0]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[0] ),
        .O(x_V[0]));
  CARRY4 \x_V[1]_INST_0 
       (.CI(1'b0),
        .CO({\x_V[1]_INST_0_n_0 ,\x_V[1]_INST_0_n_1 ,\x_V[1]_INST_0_n_2 ,\x_V[1]_INST_0_n_3 }),
        .CYINIT(tmp_16_fu_663_p1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(x_V[4:1]),
        .S(tmp_16_fu_663_p1[4:1]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \x_V[1]_INST_0_i_1 
       (.I0(\c_reg_314_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage017_in),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(\exitcond_reg_1076_reg_n_0_[0] ),
        .I4(c_1_reg_325_reg[0]),
        .O(tmp_16_fu_663_p1[0]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[1]_INST_0_i_2 
       (.I0(c_1_reg_325_reg[4]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[4] ),
        .O(tmp_16_fu_663_p1[4]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[1]_INST_0_i_3 
       (.I0(c_1_reg_325_reg[3]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[3] ),
        .O(tmp_16_fu_663_p1[3]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[1]_INST_0_i_4 
       (.I0(c_1_reg_325_reg[2]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[2] ),
        .O(tmp_16_fu_663_p1[2]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[1]_INST_0_i_5 
       (.I0(c_1_reg_325_reg[1]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[1] ),
        .O(tmp_16_fu_663_p1[1]));
  CARRY4 \x_V[5]_INST_0 
       (.CI(\x_V[1]_INST_0_n_0 ),
        .CO({\x_V[5]_INST_0_n_0 ,\x_V[5]_INST_0_n_1 ,\x_V[5]_INST_0_n_2 ,\x_V[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(x_V[8:5]),
        .S(tmp_16_fu_663_p1[8:5]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[5]_INST_0_i_1 
       (.I0(c_1_reg_325_reg[8]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[8] ),
        .O(tmp_16_fu_663_p1[8]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[5]_INST_0_i_2 
       (.I0(c_1_reg_325_reg[7]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[7] ),
        .O(tmp_16_fu_663_p1[7]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[5]_INST_0_i_3 
       (.I0(c_1_reg_325_reg[6]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[6] ),
        .O(tmp_16_fu_663_p1[6]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[5]_INST_0_i_4 
       (.I0(c_1_reg_325_reg[5]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[5] ),
        .O(tmp_16_fu_663_p1[5]));
  CARRY4 \x_V[9]_INST_0 
       (.CI(\x_V[5]_INST_0_n_0 ),
        .CO({\NLW_x_V[9]_INST_0_CO_UNCONNECTED [3:2],\x_V[9]_INST_0_n_2 ,\x_V[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_V[9]_INST_0_O_UNCONNECTED [3],x_V[11:9]}),
        .S({1'b0,tmp_16_fu_663_p1[11:9]}));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[9]_INST_0_i_1 
       (.I0(c_1_reg_325_reg[11]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[11] ),
        .O(tmp_16_fu_663_p1[11]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[9]_INST_0_i_2 
       (.I0(c_1_reg_325_reg[10]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[10] ),
        .O(tmp_16_fu_663_p1[10]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \x_V[9]_INST_0_i_3 
       (.I0(c_1_reg_325_reg[9]),
        .I1(\exitcond_reg_1076_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage017_in),
        .I4(\c_reg_314_reg_n_0_[9] ),
        .O(tmp_16_fu_663_p1[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    x_V_ap_vld_INST_0
       (.I0(p_40_in),
        .I1(wlb_lb_val_V_1_U_n_21),
        .O(x_V_ap_vld));
  LUT4 #(
    .INIT(16'hFE00)) 
    x_V_ap_vld_INST_0_i_1
       (.I0(x_V_ap_vld_INST_0_i_3_n_0),
        .I1(x_V_ap_vld_INST_0_i_4_n_0),
        .I2(x_V_ap_vld_INST_0_i_5_n_0),
        .I3(tmp_4_reg_1068),
        .O(p_40_in));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    x_V_ap_vld_INST_0_i_10
       (.I0(tmp_9_reg_1044[6]),
        .I1(i_op_assign_1_reg_303_reg[6]),
        .I2(tmp_9_reg_1044[8]),
        .I3(i_op_assign_1_reg_303_reg[8]),
        .I4(tmp_9_reg_1044[7]),
        .I5(i_op_assign_1_reg_303_reg[7]),
        .O(x_V_ap_vld_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    x_V_ap_vld_INST_0_i_11
       (.I0(tmp_9_reg_1044[4]),
        .I1(i_op_assign_1_reg_303_reg[4]),
        .I2(tmp_9_reg_1044[3]),
        .I3(i_op_assign_1_reg_303_reg[3]),
        .I4(tmp_9_reg_1044[5]),
        .I5(i_op_assign_1_reg_303_reg[5]),
        .O(x_V_ap_vld_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    x_V_ap_vld_INST_0_i_12
       (.I0(tmp_9_reg_1044[2]),
        .I1(i_op_assign_1_reg_303_reg[2]),
        .I2(tmp_9_reg_1044[0]),
        .I3(i_op_assign_1_reg_303_reg[0]),
        .I4(tmp_9_reg_1044[1]),
        .I5(i_op_assign_1_reg_303_reg[1]),
        .O(x_V_ap_vld_INST_0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    x_V_ap_vld_INST_0_i_3
       (.I0(i_op_assign_1_reg_303_reg[0]),
        .I1(i_op_assign_1_reg_303_reg[2]),
        .I2(i_op_assign_1_reg_303_reg[5]),
        .I3(i_op_assign_1_reg_303_reg[1]),
        .I4(i_op_assign_1_reg_303_reg[3]),
        .O(x_V_ap_vld_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    x_V_ap_vld_INST_0_i_4
       (.I0(i_op_assign_1_reg_303_reg[10]),
        .I1(i_op_assign_1_reg_303_reg[12]),
        .I2(i_op_assign_1_reg_303_reg[8]),
        .I3(i_op_assign_1_reg_303_reg[9]),
        .O(x_V_ap_vld_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    x_V_ap_vld_INST_0_i_5
       (.I0(i_op_assign_1_reg_303_reg[11]),
        .I1(i_op_assign_1_reg_303_reg[6]),
        .I2(i_op_assign_1_reg_303_reg[7]),
        .I3(i_op_assign_1_reg_303_reg[4]),
        .O(x_V_ap_vld_INST_0_i_5_n_0));
  CARRY4 x_V_ap_vld_INST_0_i_6
       (.CI(x_V_ap_vld_INST_0_i_7_n_0),
        .CO({NLW_x_V_ap_vld_INST_0_i_6_CO_UNCONNECTED[3:1],ap_condition_pp0_exit_iter0_state3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_x_V_ap_vld_INST_0_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,x_V_ap_vld_INST_0_i_8_n_0}));
  CARRY4 x_V_ap_vld_INST_0_i_7
       (.CI(1'b0),
        .CO({x_V_ap_vld_INST_0_i_7_n_0,x_V_ap_vld_INST_0_i_7_n_1,x_V_ap_vld_INST_0_i_7_n_2,x_V_ap_vld_INST_0_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_x_V_ap_vld_INST_0_i_7_O_UNCONNECTED[3:0]),
        .S({x_V_ap_vld_INST_0_i_9_n_0,x_V_ap_vld_INST_0_i_10_n_0,x_V_ap_vld_INST_0_i_11_n_0,x_V_ap_vld_INST_0_i_12_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    x_V_ap_vld_INST_0_i_8
       (.I0(tmp_9_reg_1044[12]),
        .I1(i_op_assign_1_reg_303_reg[12]),
        .O(x_V_ap_vld_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    x_V_ap_vld_INST_0_i_9
       (.I0(tmp_9_reg_1044[9]),
        .I1(i_op_assign_1_reg_303_reg[9]),
        .I2(tmp_9_reg_1044[10]),
        .I3(i_op_assign_1_reg_303_reg[10]),
        .I4(tmp_9_reg_1044[11]),
        .I5(i_op_assign_1_reg_303_reg[11]),
        .O(x_V_ap_vld_INST_0_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    y_V_ap_vld_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(exitcond1_fu_524_p2),
        .O(y_V_ap_vld));
endmodule

(* ORIG_REF_NAME = "gray8_gauss2d_3x3bkb" *) 
module gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb
   (D,
    \ap_CS_fsm_reg[2] ,
    ap_clk,
    WEA,
    wlb_lb_val_V_0_ce0,
    ADDRARDADDR,
    Q,
    or_cond1_reg_1085,
    src_V_V_dout,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7] ,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ,
    ap_block_pp0_stage0_subdone,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 );
  output [7:0]D;
  output [7:0]\ap_CS_fsm_reg[2] ;
  input ap_clk;
  input [0:0]WEA;
  input wlb_lb_val_V_0_ce0;
  input [10:0]ADDRARDADDR;
  input [10:0]Q;
  input or_cond1_reg_1085;
  input [7:0]src_V_V_dout;
  input [0:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7] ;
  input \wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ;
  input \wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ;
  input ap_block_pp0_stage0_subdone;
  input [7:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 ;

  wire [10:0]ADDRARDADDR;
  wire [7:0]D;
  wire [10:0]Q;
  wire [0:0]WEA;
  wire [7:0]\ap_CS_fsm_reg[2] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire or_cond1_reg_1085;
  wire [7:0]src_V_V_dout;
  wire wlb_lb_val_V_0_ce0;
  wire [0:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7] ;
  wire \wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ;
  wire \wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ;
  wire [7:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 ;

  gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb_ram_1 gray8_gauss2d_3x3bkb_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .Q(Q),
        .WEA(WEA),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .or_cond1_reg_1085(or_cond1_reg_1085),
        .src_V_V_dout(src_V_V_dout),
        .wlb_lb_val_V_0_ce0(wlb_lb_val_V_0_ce0),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7] (\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 (\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 (\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 (\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 ));
endmodule

(* ORIG_REF_NAME = "gray8_gauss2d_3x3bkb" *) 
module gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb_0
   (D,
    WEA,
    wlb_lb_val_V_0_ce0,
    ADDRARDADDR,
    \ap_CS_fsm_reg[2] ,
    ap_block_pp0_stage0_subdone,
    \ap_CS_fsm_reg[2]_0 ,
    ap_clk,
    Q,
    ram_reg,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7] ,
    CO,
    ap_enable_reg_pp0_iter0,
    or_cond_reg_1123_pp0_iter3_reg,
    exitcond_reg_1076_pp0_iter3_reg,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ,
    dst_V_V_full_n,
    src_V_V_empty_n,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ,
    or_cond1_reg_1085,
    ram_reg_0,
    ram_reg_1,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 );
  output [7:0]D;
  output [0:0]WEA;
  output wlb_lb_val_V_0_ce0;
  output [10:0]ADDRARDADDR;
  output \ap_CS_fsm_reg[2] ;
  output ap_block_pp0_stage0_subdone;
  output [7:0]\ap_CS_fsm_reg[2]_0 ;
  input ap_clk;
  input [10:0]Q;
  input [7:0]ram_reg;
  input [0:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7] ;
  input [0:0]CO;
  input ap_enable_reg_pp0_iter0;
  input or_cond_reg_1123_pp0_iter3_reg;
  input exitcond_reg_1076_pp0_iter3_reg;
  input \wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ;
  input dst_V_V_full_n;
  input src_V_V_empty_n;
  input \wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ;
  input \wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ;
  input or_cond1_reg_1085;
  input [10:0]ram_reg_0;
  input [10:0]ram_reg_1;
  input [7:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 ;

  wire [10:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [10:0]Q;
  wire [0:0]WEA;
  wire \ap_CS_fsm_reg[2] ;
  wire [7:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire dst_V_V_full_n;
  wire exitcond_reg_1076_pp0_iter3_reg;
  wire or_cond1_reg_1085;
  wire or_cond_reg_1123_pp0_iter3_reg;
  wire [7:0]ram_reg;
  wire [10:0]ram_reg_0;
  wire [10:0]ram_reg_1;
  wire src_V_V_empty_n;
  wire wlb_lb_val_V_0_ce0;
  wire [0:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7] ;
  wire \wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ;
  wire \wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ;
  wire \wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ;
  wire [7:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 ;

  gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb_ram gray8_gauss2d_3x3bkb_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(CO),
        .D(D),
        .Q(Q),
        .WEA(WEA),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .dst_V_V_full_n(dst_V_V_full_n),
        .exitcond_reg_1076_pp0_iter3_reg(exitcond_reg_1076_pp0_iter3_reg),
        .or_cond1_reg_1085(or_cond1_reg_1085),
        .or_cond_reg_1123_pp0_iter3_reg(or_cond_reg_1123_pp0_iter3_reg),
        .\or_cond_reg_1123_pp0_iter3_reg_reg[0] (ap_block_pp0_stage0_subdone),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .src_V_V_empty_n(src_V_V_empty_n),
        .wlb_lb_val_V_0_ce0(wlb_lb_val_V_0_ce0),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7] (\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 (\wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 (\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 (\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 (\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 ));
endmodule

(* ORIG_REF_NAME = "gray8_gauss2d_3x3bkb_ram" *) 
module gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb_ram
   (D,
    WEA,
    wlb_lb_val_V_0_ce0,
    ADDRARDADDR,
    \ap_CS_fsm_reg[2] ,
    \or_cond_reg_1123_pp0_iter3_reg_reg[0] ,
    \ap_CS_fsm_reg[2]_0 ,
    ap_clk,
    Q,
    ram_reg_0,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7] ,
    CO,
    ap_enable_reg_pp0_iter0,
    or_cond_reg_1123_pp0_iter3_reg,
    exitcond_reg_1076_pp0_iter3_reg,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ,
    dst_V_V_full_n,
    src_V_V_empty_n,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ,
    or_cond1_reg_1085,
    ram_reg_1,
    ram_reg_2,
    \wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 );
  output [7:0]D;
  output [0:0]WEA;
  output wlb_lb_val_V_0_ce0;
  output [10:0]ADDRARDADDR;
  output \ap_CS_fsm_reg[2] ;
  output \or_cond_reg_1123_pp0_iter3_reg_reg[0] ;
  output [7:0]\ap_CS_fsm_reg[2]_0 ;
  input ap_clk;
  input [10:0]Q;
  input [7:0]ram_reg_0;
  input [0:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7] ;
  input [0:0]CO;
  input ap_enable_reg_pp0_iter0;
  input or_cond_reg_1123_pp0_iter3_reg;
  input exitcond_reg_1076_pp0_iter3_reg;
  input \wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ;
  input dst_V_V_full_n;
  input src_V_V_empty_n;
  input \wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ;
  input \wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ;
  input or_cond1_reg_1085;
  input [10:0]ram_reg_1;
  input [10:0]ram_reg_2;
  input [7:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 ;

  wire [10:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [10:0]Q;
  wire [0:0]WEA;
  wire \ap_CS_fsm_reg[2] ;
  wire [7:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire dst_V_V_full_n;
  wire exitcond_reg_1076_pp0_iter3_reg;
  wire or_cond1_reg_1085;
  wire or_cond_reg_1123_pp0_iter3_reg;
  wire \or_cond_reg_1123_pp0_iter3_reg_reg[0] ;
  wire [7:0]ram_reg_0;
  wire [10:0]ram_reg_1;
  wire [10:0]ram_reg_2;
  wire src_V_V_empty_n;
  wire src_V_V_read_INST_0_i_2_n_0;
  wire wlb_lb_val_V_0_ce0;
  wire [0:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7] ;
  wire \wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ;
  wire \wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ;
  wire \wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ;
  wire [7:0]\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 ;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:8],D}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(WEA),
        .ENBWREN(wlb_lb_val_V_0_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0400)) 
    ram_reg_i_1
       (.I0(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .O(WEA));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10
       (.I0(ram_reg_1[3]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[3]),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11
       (.I0(ram_reg_1[2]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[2]),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12
       (.I0(ram_reg_1[1]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13
       (.I0(ram_reg_1[0]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[0]),
        .O(ADDRARDADDR[0]));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_2
       (.I0(\ap_CS_fsm_reg[2] ),
        .O(wlb_lb_val_V_0_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3
       (.I0(ram_reg_1[10]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[10]),
        .O(ADDRARDADDR[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4
       (.I0(ram_reg_1[9]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[9]),
        .O(ADDRARDADDR[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5
       (.I0(ram_reg_1[8]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[8]),
        .O(ADDRARDADDR[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6
       (.I0(ram_reg_1[7]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[7]),
        .O(ADDRARDADDR[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7
       (.I0(ram_reg_1[6]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[6]),
        .O(ADDRARDADDR[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8
       (.I0(ram_reg_1[5]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[5]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9
       (.I0(ram_reg_1[4]),
        .I1(or_cond1_reg_1085),
        .I2(ram_reg_2[4]),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    src_V_V_read_INST_0_i_1
       (.I0(or_cond_reg_1123_pp0_iter3_reg),
        .I1(exitcond_reg_1076_pp0_iter3_reg),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_0 ),
        .I3(dst_V_V_full_n),
        .I4(src_V_V_empty_n),
        .I5(src_V_V_read_INST_0_i_2_n_0),
        .O(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ));
  LUT3 #(
    .INIT(8'h40)) 
    src_V_V_read_INST_0_i_2
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(or_cond1_reg_1085),
        .O(src_V_V_read_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[0]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[0]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [0]),
        .O(\ap_CS_fsm_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[1]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[1]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [1]),
        .O(\ap_CS_fsm_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[2]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[2]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [2]),
        .O(\ap_CS_fsm_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[3]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[3]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [3]),
        .O(\ap_CS_fsm_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[4]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[4]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [4]),
        .O(\ap_CS_fsm_reg[2]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[5]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[5]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [5]),
        .O(\ap_CS_fsm_reg[2]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[6]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[6]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [6]),
        .O(\ap_CS_fsm_reg[2]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_2_0_loc_fu_154[7]_i_1 
       (.I0(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_2 ),
        .I2(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_1 ),
        .I3(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I4(D[7]),
        .I5(\wlb_w_val_V_2_0_loc_fu_154_reg[7]_3 [7]),
        .O(\ap_CS_fsm_reg[2]_0 [7]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    x_V_ap_vld_INST_0_i_2
       (.I0(\or_cond_reg_1123_pp0_iter3_reg_reg[0] ),
        .I1(\wlb_w_val_V_2_0_loc_fu_154_reg[7] ),
        .I2(CO),
        .I3(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm_reg[2] ));
endmodule

(* ORIG_REF_NAME = "gray8_gauss2d_3x3bkb_ram" *) 
module gray8_gauss2d_3x3_0_gray8_gauss2d_3x3bkb_ram_1
   (D,
    \ap_CS_fsm_reg[2] ,
    ap_clk,
    WEA,
    wlb_lb_val_V_0_ce0,
    ADDRARDADDR,
    Q,
    or_cond1_reg_1085,
    src_V_V_dout,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7] ,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ,
    ap_block_pp0_stage0_subdone,
    \wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 );
  output [7:0]D;
  output [7:0]\ap_CS_fsm_reg[2] ;
  input ap_clk;
  input [0:0]WEA;
  input wlb_lb_val_V_0_ce0;
  input [10:0]ADDRARDADDR;
  input [10:0]Q;
  input or_cond1_reg_1085;
  input [7:0]src_V_V_dout;
  input [0:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7] ;
  input \wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ;
  input \wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ;
  input ap_block_pp0_stage0_subdone;
  input [7:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 ;

  wire [10:0]ADDRARDADDR;
  wire [7:0]D;
  wire [10:0]Q;
  wire [0:0]WEA;
  wire [7:0]\ap_CS_fsm_reg[2] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire or_cond1_reg_1085;
  wire ram_reg_i_14_n_0;
  wire ram_reg_i_15_n_0;
  wire ram_reg_i_16_n_0;
  wire ram_reg_i_17_n_0;
  wire ram_reg_i_18_n_0;
  wire ram_reg_i_19_n_0;
  wire ram_reg_i_20_n_0;
  wire ram_reg_i_21_n_0;
  wire [7:0]src_V_V_dout;
  wire wlb_lb_val_V_0_ce0;
  wire [0:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7] ;
  wire \wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ;
  wire \wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ;
  wire [7:0]\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 ;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_i_14_n_0,ram_reg_i_15_n_0,ram_reg_i_16_n_0,ram_reg_i_17_n_0,ram_reg_i_18_n_0,ram_reg_i_19_n_0,ram_reg_i_20_n_0,ram_reg_i_21_n_0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:8],D}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(WEA),
        .ENBWREN(wlb_lb_val_V_0_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_14
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[7]),
        .O(ram_reg_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_15
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[6]),
        .O(ram_reg_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_16
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[5]),
        .O(ram_reg_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_17
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[4]),
        .O(ram_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_18
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[3]),
        .O(ram_reg_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_19
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[2]),
        .O(ram_reg_i_19_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_20
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[1]),
        .O(ram_reg_i_20_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_21
       (.I0(or_cond1_reg_1085),
        .I1(src_V_V_dout[0]),
        .O(ram_reg_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[0]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[0]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [0]),
        .O(\ap_CS_fsm_reg[2] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[1]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[1]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [1]),
        .O(\ap_CS_fsm_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[2]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[2]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [2]),
        .O(\ap_CS_fsm_reg[2] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[3]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[3]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [3]),
        .O(\ap_CS_fsm_reg[2] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[4]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[4]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [4]),
        .O(\ap_CS_fsm_reg[2] [4]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[5]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[5]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [5]),
        .O(\ap_CS_fsm_reg[2] [5]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[6]_i_1 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[6]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [6]),
        .O(\ap_CS_fsm_reg[2] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFF700080000)) 
    \wlb_w_val_V_1_0_loc_fu_162[7]_i_2 
       (.I0(\wlb_w_val_V_1_0_loc_fu_162_reg[7] ),
        .I1(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_0 ),
        .I2(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_1 ),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(D[7]),
        .I5(\wlb_w_val_V_1_0_loc_fu_162_reg[7]_2 [7]),
        .O(\ap_CS_fsm_reg[2] [7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
