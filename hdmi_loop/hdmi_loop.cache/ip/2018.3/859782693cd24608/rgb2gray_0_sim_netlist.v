// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 28 15:54:13 2026
// Host        : DESKTOP-MTRJSS0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rgb2gray_0_sim_netlist.v
// Design      : rgb2gray_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_pp0_stage0 = "3'b010" *) (* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state7 = "3'b100" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray
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
    width_V,
    height_V);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [23:0]src_V_V_dout;
  input src_V_V_empty_n;
  output src_V_V_read;
  output [7:0]dst_V_V_din;
  input dst_V_V_full_n;
  output dst_V_V_write;
  input [11:0]width_V;
  input [11:0]height_V;

  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [2:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_block_pp0_stage0_subdone;
  wire ap_block_pp0_stage0_subdone2_in;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state2;
  wire ap_done;
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
  wire ap_rst;
  wire ap_start;
  wire b_V_reg_2240;
  wire bound_reg_200_reg_n_100;
  wire bound_reg_200_reg_n_101;
  wire bound_reg_200_reg_n_102;
  wire bound_reg_200_reg_n_103;
  wire bound_reg_200_reg_n_104;
  wire bound_reg_200_reg_n_105;
  wire bound_reg_200_reg_n_82;
  wire bound_reg_200_reg_n_83;
  wire bound_reg_200_reg_n_84;
  wire bound_reg_200_reg_n_85;
  wire bound_reg_200_reg_n_86;
  wire bound_reg_200_reg_n_87;
  wire bound_reg_200_reg_n_88;
  wire bound_reg_200_reg_n_89;
  wire bound_reg_200_reg_n_90;
  wire bound_reg_200_reg_n_91;
  wire bound_reg_200_reg_n_92;
  wire bound_reg_200_reg_n_93;
  wire bound_reg_200_reg_n_94;
  wire bound_reg_200_reg_n_95;
  wire bound_reg_200_reg_n_96;
  wire bound_reg_200_reg_n_97;
  wire bound_reg_200_reg_n_98;
  wire bound_reg_200_reg_n_99;
  wire [7:0]dst_V_V_din;
  wire \dst_V_V_din[0]_INST_0_i_10_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_11_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_12_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_13_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_14_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_1_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_1_n_1 ;
  wire \dst_V_V_din[0]_INST_0_i_1_n_2 ;
  wire \dst_V_V_din[0]_INST_0_i_1_n_3 ;
  wire \dst_V_V_din[0]_INST_0_i_2_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_3_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_4_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_5_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_6_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_6_n_1 ;
  wire \dst_V_V_din[0]_INST_0_i_6_n_2 ;
  wire \dst_V_V_din[0]_INST_0_i_6_n_3 ;
  wire \dst_V_V_din[0]_INST_0_i_7_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_8_n_0 ;
  wire \dst_V_V_din[0]_INST_0_i_9_n_0 ;
  wire \dst_V_V_din[0]_INST_0_n_0 ;
  wire \dst_V_V_din[0]_INST_0_n_1 ;
  wire \dst_V_V_din[0]_INST_0_n_2 ;
  wire \dst_V_V_din[0]_INST_0_n_3 ;
  wire \dst_V_V_din[4]_INST_0_i_1_n_0 ;
  wire \dst_V_V_din[4]_INST_0_n_1 ;
  wire \dst_V_V_din[4]_INST_0_n_2 ;
  wire \dst_V_V_din[4]_INST_0_n_3 ;
  wire dst_V_V_full_n;
  wire dst_V_V_write;
  wire \exitcond_flatten_reg_205[0]_i_1_n_0 ;
  wire exitcond_flatten_reg_205_pp0_iter1_reg;
  wire \exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1_n_0 ;
  wire exitcond_flatten_reg_205_pp0_iter2_reg;
  wire \exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1_n_0 ;
  wire exitcond_flatten_reg_205_pp0_iter3_reg;
  wire \exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1_n_0 ;
  wire \exitcond_flatten_reg_205_reg_n_0_[0] ;
  wire [11:0]height_V;
  wire indvar_flatten_reg_91;
  wire indvar_flatten_reg_910;
  wire \indvar_flatten_reg_91[0]_i_10_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_11_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_12_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_13_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_14_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_5_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_7_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_8_n_0 ;
  wire \indvar_flatten_reg_91[0]_i_9_n_0 ;
  wire [23:0]indvar_flatten_reg_91_reg;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_0 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_1 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_2 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_3 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_4 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_5 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_6 ;
  wire \indvar_flatten_reg_91_reg[0]_i_3_n_7 ;
  wire \indvar_flatten_reg_91_reg[0]_i_4_n_1 ;
  wire \indvar_flatten_reg_91_reg[0]_i_4_n_2 ;
  wire \indvar_flatten_reg_91_reg[0]_i_4_n_3 ;
  wire \indvar_flatten_reg_91_reg[0]_i_6_n_0 ;
  wire \indvar_flatten_reg_91_reg[0]_i_6_n_1 ;
  wire \indvar_flatten_reg_91_reg[0]_i_6_n_2 ;
  wire \indvar_flatten_reg_91_reg[0]_i_6_n_3 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_0 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_1 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_2 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_3 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_4 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_5 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_6 ;
  wire \indvar_flatten_reg_91_reg[12]_i_1_n_7 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_0 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_1 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_2 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_3 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_4 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_5 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_6 ;
  wire \indvar_flatten_reg_91_reg[16]_i_1_n_7 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_1 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_2 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_3 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_4 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_5 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_6 ;
  wire \indvar_flatten_reg_91_reg[20]_i_1_n_7 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_0 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_1 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_2 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_3 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_4 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_5 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_6 ;
  wire \indvar_flatten_reg_91_reg[4]_i_1_n_7 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_reg_91_reg[8]_i_1_n_7 ;
  wire [23:0]src_V_V_dout;
  wire src_V_V_empty_n;
  wire src_V_V_read;
  wire tmp1_reg_2340;
  wire tmp1_reg_234_reg_n_100;
  wire tmp1_reg_234_reg_n_101;
  wire tmp1_reg_234_reg_n_102;
  wire tmp1_reg_234_reg_n_103;
  wire tmp1_reg_234_reg_n_104;
  wire tmp1_reg_234_reg_n_105;
  wire tmp1_reg_234_reg_n_90;
  wire tmp1_reg_234_reg_n_91;
  wire tmp1_reg_234_reg_n_92;
  wire tmp1_reg_234_reg_n_93;
  wire tmp1_reg_234_reg_n_94;
  wire tmp1_reg_234_reg_n_95;
  wire tmp1_reg_234_reg_n_96;
  wire tmp1_reg_234_reg_n_97;
  wire tmp1_reg_234_reg_n_98;
  wire tmp1_reg_234_reg_n_99;
  wire tmp2_reg_239_reg_n_100;
  wire tmp2_reg_239_reg_n_101;
  wire tmp2_reg_239_reg_n_102;
  wire tmp2_reg_239_reg_n_103;
  wire tmp2_reg_239_reg_n_104;
  wire tmp2_reg_239_reg_n_105;
  wire tmp2_reg_239_reg_n_93;
  wire tmp2_reg_239_reg_n_94;
  wire tmp2_reg_239_reg_n_95;
  wire tmp2_reg_239_reg_n_96;
  wire tmp2_reg_239_reg_n_97;
  wire tmp2_reg_239_reg_n_98;
  wire tmp2_reg_239_reg_n_99;
  wire tmp_8_reg_2290;
  wire tmp_8_reg_229_reg_n_106;
  wire tmp_8_reg_229_reg_n_107;
  wire tmp_8_reg_229_reg_n_108;
  wire tmp_8_reg_229_reg_n_109;
  wire tmp_8_reg_229_reg_n_110;
  wire tmp_8_reg_229_reg_n_111;
  wire tmp_8_reg_229_reg_n_112;
  wire tmp_8_reg_229_reg_n_113;
  wire tmp_8_reg_229_reg_n_114;
  wire tmp_8_reg_229_reg_n_115;
  wire tmp_8_reg_229_reg_n_116;
  wire tmp_8_reg_229_reg_n_117;
  wire tmp_8_reg_229_reg_n_118;
  wire tmp_8_reg_229_reg_n_119;
  wire tmp_8_reg_229_reg_n_120;
  wire tmp_8_reg_229_reg_n_121;
  wire tmp_8_reg_229_reg_n_122;
  wire tmp_8_reg_229_reg_n_123;
  wire tmp_8_reg_229_reg_n_124;
  wire tmp_8_reg_229_reg_n_125;
  wire tmp_8_reg_229_reg_n_126;
  wire tmp_8_reg_229_reg_n_127;
  wire tmp_8_reg_229_reg_n_128;
  wire tmp_8_reg_229_reg_n_129;
  wire tmp_8_reg_229_reg_n_130;
  wire tmp_8_reg_229_reg_n_131;
  wire tmp_8_reg_229_reg_n_132;
  wire tmp_8_reg_229_reg_n_133;
  wire tmp_8_reg_229_reg_n_134;
  wire tmp_8_reg_229_reg_n_135;
  wire tmp_8_reg_229_reg_n_136;
  wire tmp_8_reg_229_reg_n_137;
  wire tmp_8_reg_229_reg_n_138;
  wire tmp_8_reg_229_reg_n_139;
  wire tmp_8_reg_229_reg_n_140;
  wire tmp_8_reg_229_reg_n_141;
  wire tmp_8_reg_229_reg_n_142;
  wire tmp_8_reg_229_reg_n_143;
  wire tmp_8_reg_229_reg_n_144;
  wire tmp_8_reg_229_reg_n_145;
  wire tmp_8_reg_229_reg_n_146;
  wire tmp_8_reg_229_reg_n_147;
  wire tmp_8_reg_229_reg_n_148;
  wire tmp_8_reg_229_reg_n_149;
  wire tmp_8_reg_229_reg_n_150;
  wire tmp_8_reg_229_reg_n_151;
  wire tmp_8_reg_229_reg_n_152;
  wire tmp_8_reg_229_reg_n_153;
  wire [11:0]width_V;
  wire NLW_bound_reg_200_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_bound_reg_200_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_bound_reg_200_reg_OVERFLOW_UNCONNECTED;
  wire NLW_bound_reg_200_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_bound_reg_200_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_bound_reg_200_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_bound_reg_200_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_bound_reg_200_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_bound_reg_200_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_bound_reg_200_reg_P_UNCONNECTED;
  wire [47:0]NLW_bound_reg_200_reg_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_dst_V_V_din[0]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_dst_V_V_din[0]_INST_0_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_dst_V_V_din[4]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_91_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_91_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_indvar_flatten_reg_91_reg[20]_i_1_CO_UNCONNECTED ;
  wire NLW_tmp1_reg_234_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp1_reg_234_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp1_reg_234_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp1_reg_234_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp1_reg_234_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp1_reg_234_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp1_reg_234_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp1_reg_234_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp1_reg_234_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_tmp1_reg_234_reg_P_UNCONNECTED;
  wire [47:0]NLW_tmp1_reg_234_reg_PCOUT_UNCONNECTED;
  wire NLW_tmp2_reg_239_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp2_reg_239_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp2_reg_239_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp2_reg_239_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp2_reg_239_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp2_reg_239_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp2_reg_239_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp2_reg_239_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp2_reg_239_reg_CARRYOUT_UNCONNECTED;
  wire [47:13]NLW_tmp2_reg_239_reg_P_UNCONNECTED;
  wire [47:0]NLW_tmp2_reg_239_reg_PCOUT_UNCONNECTED;
  wire NLW_tmp_8_reg_229_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_8_reg_229_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_8_reg_229_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_8_reg_229_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_8_reg_229_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_8_reg_229_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_8_reg_229_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_8_reg_229_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_8_reg_229_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_8_reg_229_reg_P_UNCONNECTED;

  assign ap_ready = ap_done;
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm[2]_i_2_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm[2]_i_2_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h020202020F020202)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter4_reg_n_0),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_condition_pp0_exit_iter0_state2),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
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
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_done),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h0E000E0E0E0E0E0E)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_NS_fsm1),
        .I2(ap_rst),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(ap_condition_pp0_exit_iter0_state2),
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
    .INIT(32'h0C0C000A)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_rst),
        .I3(ap_condition_pp0_exit_iter0_state2),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
    .INIT(64'h000C0C0C0A0A0A0A)) 
    ap_enable_reg_pp0_iter4_i_1
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_enable_reg_pp0_iter4_reg_n_0),
        .I2(ap_rst),
        .I3(ap_start),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_block_pp0_stage0_subdone),
        .O(ap_enable_reg_pp0_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter4_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    bound_reg_200_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,width_V}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_bound_reg_200_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,height_V}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_bound_reg_200_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_bound_reg_200_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_bound_reg_200_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_NS_fsm1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_bound_reg_200_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_bound_reg_200_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_bound_reg_200_reg_P_UNCONNECTED[47:24],bound_reg_200_reg_n_82,bound_reg_200_reg_n_83,bound_reg_200_reg_n_84,bound_reg_200_reg_n_85,bound_reg_200_reg_n_86,bound_reg_200_reg_n_87,bound_reg_200_reg_n_88,bound_reg_200_reg_n_89,bound_reg_200_reg_n_90,bound_reg_200_reg_n_91,bound_reg_200_reg_n_92,bound_reg_200_reg_n_93,bound_reg_200_reg_n_94,bound_reg_200_reg_n_95,bound_reg_200_reg_n_96,bound_reg_200_reg_n_97,bound_reg_200_reg_n_98,bound_reg_200_reg_n_99,bound_reg_200_reg_n_100,bound_reg_200_reg_n_101,bound_reg_200_reg_n_102,bound_reg_200_reg_n_103,bound_reg_200_reg_n_104,bound_reg_200_reg_n_105}),
        .PATTERNBDETECT(NLW_bound_reg_200_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_bound_reg_200_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_bound_reg_200_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_bound_reg_200_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    bound_reg_200_reg_i_1
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_NS_fsm1));
  CARRY4 \dst_V_V_din[0]_INST_0 
       (.CI(\dst_V_V_din[0]_INST_0_i_1_n_0 ),
        .CO({\dst_V_V_din[0]_INST_0_n_0 ,\dst_V_V_din[0]_INST_0_n_1 ,\dst_V_V_din[0]_INST_0_n_2 ,\dst_V_V_din[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp1_reg_234_reg_n_94,tmp1_reg_234_reg_n_95,tmp1_reg_234_reg_n_96,tmp1_reg_234_reg_n_97}),
        .O(dst_V_V_din[3:0]),
        .S({\dst_V_V_din[0]_INST_0_i_2_n_0 ,\dst_V_V_din[0]_INST_0_i_3_n_0 ,\dst_V_V_din[0]_INST_0_i_4_n_0 ,\dst_V_V_din[0]_INST_0_i_5_n_0 }));
  CARRY4 \dst_V_V_din[0]_INST_0_i_1 
       (.CI(\dst_V_V_din[0]_INST_0_i_6_n_0 ),
        .CO({\dst_V_V_din[0]_INST_0_i_1_n_0 ,\dst_V_V_din[0]_INST_0_i_1_n_1 ,\dst_V_V_din[0]_INST_0_i_1_n_2 ,\dst_V_V_din[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp1_reg_234_reg_n_98,tmp1_reg_234_reg_n_99,tmp1_reg_234_reg_n_100,tmp1_reg_234_reg_n_101}),
        .O(\NLW_dst_V_V_din[0]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\dst_V_V_din[0]_INST_0_i_7_n_0 ,\dst_V_V_din[0]_INST_0_i_8_n_0 ,\dst_V_V_din[0]_INST_0_i_9_n_0 ,\dst_V_V_din[0]_INST_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_10 
       (.I0(tmp1_reg_234_reg_n_101),
        .I1(tmp2_reg_239_reg_n_101),
        .O(\dst_V_V_din[0]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_11 
       (.I0(tmp1_reg_234_reg_n_102),
        .I1(tmp2_reg_239_reg_n_102),
        .O(\dst_V_V_din[0]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_12 
       (.I0(tmp1_reg_234_reg_n_103),
        .I1(tmp2_reg_239_reg_n_103),
        .O(\dst_V_V_din[0]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_13 
       (.I0(tmp1_reg_234_reg_n_104),
        .I1(tmp2_reg_239_reg_n_104),
        .O(\dst_V_V_din[0]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_14 
       (.I0(tmp1_reg_234_reg_n_105),
        .I1(tmp2_reg_239_reg_n_105),
        .O(\dst_V_V_din[0]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_2 
       (.I0(tmp1_reg_234_reg_n_94),
        .I1(tmp2_reg_239_reg_n_94),
        .O(\dst_V_V_din[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_3 
       (.I0(tmp1_reg_234_reg_n_95),
        .I1(tmp2_reg_239_reg_n_95),
        .O(\dst_V_V_din[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_4 
       (.I0(tmp1_reg_234_reg_n_96),
        .I1(tmp2_reg_239_reg_n_96),
        .O(\dst_V_V_din[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_5 
       (.I0(tmp1_reg_234_reg_n_97),
        .I1(tmp2_reg_239_reg_n_97),
        .O(\dst_V_V_din[0]_INST_0_i_5_n_0 ));
  CARRY4 \dst_V_V_din[0]_INST_0_i_6 
       (.CI(1'b0),
        .CO({\dst_V_V_din[0]_INST_0_i_6_n_0 ,\dst_V_V_din[0]_INST_0_i_6_n_1 ,\dst_V_V_din[0]_INST_0_i_6_n_2 ,\dst_V_V_din[0]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp1_reg_234_reg_n_102,tmp1_reg_234_reg_n_103,tmp1_reg_234_reg_n_104,tmp1_reg_234_reg_n_105}),
        .O(\NLW_dst_V_V_din[0]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({\dst_V_V_din[0]_INST_0_i_11_n_0 ,\dst_V_V_din[0]_INST_0_i_12_n_0 ,\dst_V_V_din[0]_INST_0_i_13_n_0 ,\dst_V_V_din[0]_INST_0_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_7 
       (.I0(tmp1_reg_234_reg_n_98),
        .I1(tmp2_reg_239_reg_n_98),
        .O(\dst_V_V_din[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_8 
       (.I0(tmp1_reg_234_reg_n_99),
        .I1(tmp2_reg_239_reg_n_99),
        .O(\dst_V_V_din[0]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[0]_INST_0_i_9 
       (.I0(tmp1_reg_234_reg_n_100),
        .I1(tmp2_reg_239_reg_n_100),
        .O(\dst_V_V_din[0]_INST_0_i_9_n_0 ));
  CARRY4 \dst_V_V_din[4]_INST_0 
       (.CI(\dst_V_V_din[0]_INST_0_n_0 ),
        .CO({\NLW_dst_V_V_din[4]_INST_0_CO_UNCONNECTED [3],\dst_V_V_din[4]_INST_0_n_1 ,\dst_V_V_din[4]_INST_0_n_2 ,\dst_V_V_din[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,tmp1_reg_234_reg_n_93}),
        .O(dst_V_V_din[7:4]),
        .S({tmp1_reg_234_reg_n_90,tmp1_reg_234_reg_n_91,tmp1_reg_234_reg_n_92,\dst_V_V_din[4]_INST_0_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \dst_V_V_din[4]_INST_0_i_1 
       (.I0(tmp1_reg_234_reg_n_93),
        .I1(tmp2_reg_239_reg_n_93),
        .O(\dst_V_V_din[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040004040)) 
    dst_V_V_write_INST_0
       (.I0(exitcond_flatten_reg_205_pp0_iter3_reg),
        .I1(ap_enable_reg_pp0_iter4_reg_n_0),
        .I2(dst_V_V_full_n),
        .I3(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(src_V_V_empty_n),
        .O(dst_V_V_write));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \exitcond_flatten_reg_205[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .O(\exitcond_flatten_reg_205[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1 
       (.I0(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(exitcond_flatten_reg_205_pp0_iter1_reg),
        .O(\exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1_n_0 ));
  FDRE \exitcond_flatten_reg_205_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1_n_0 ),
        .Q(exitcond_flatten_reg_205_pp0_iter1_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1 
       (.I0(exitcond_flatten_reg_205_pp0_iter1_reg),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(exitcond_flatten_reg_205_pp0_iter2_reg),
        .O(\exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1_n_0 ));
  FDRE \exitcond_flatten_reg_205_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1_n_0 ),
        .Q(exitcond_flatten_reg_205_pp0_iter2_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1 
       (.I0(exitcond_flatten_reg_205_pp0_iter2_reg),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(exitcond_flatten_reg_205_pp0_iter3_reg),
        .O(\exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1_n_0 ));
  FDRE \exitcond_flatten_reg_205_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1_n_0 ),
        .Q(exitcond_flatten_reg_205_pp0_iter3_reg),
        .R(1'b0));
  FDRE \exitcond_flatten_reg_205_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_flatten_reg_205[0]_i_1_n_0 ),
        .Q(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBFF000000000000)) 
    \indvar_flatten_reg_91[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(indvar_flatten_reg_91));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_10 
       (.I0(indvar_flatten_reg_91_reg[13]),
        .I1(bound_reg_200_reg_n_92),
        .I2(indvar_flatten_reg_91_reg[12]),
        .I3(bound_reg_200_reg_n_93),
        .I4(bound_reg_200_reg_n_91),
        .I5(indvar_flatten_reg_91_reg[14]),
        .O(\indvar_flatten_reg_91[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_11 
       (.I0(indvar_flatten_reg_91_reg[10]),
        .I1(bound_reg_200_reg_n_95),
        .I2(indvar_flatten_reg_91_reg[9]),
        .I3(bound_reg_200_reg_n_96),
        .I4(bound_reg_200_reg_n_94),
        .I5(indvar_flatten_reg_91_reg[11]),
        .O(\indvar_flatten_reg_91[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_12 
       (.I0(indvar_flatten_reg_91_reg[7]),
        .I1(bound_reg_200_reg_n_98),
        .I2(indvar_flatten_reg_91_reg[6]),
        .I3(bound_reg_200_reg_n_99),
        .I4(bound_reg_200_reg_n_97),
        .I5(indvar_flatten_reg_91_reg[8]),
        .O(\indvar_flatten_reg_91[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_13 
       (.I0(indvar_flatten_reg_91_reg[4]),
        .I1(bound_reg_200_reg_n_101),
        .I2(indvar_flatten_reg_91_reg[3]),
        .I3(bound_reg_200_reg_n_102),
        .I4(bound_reg_200_reg_n_100),
        .I5(indvar_flatten_reg_91_reg[5]),
        .O(\indvar_flatten_reg_91[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_14 
       (.I0(indvar_flatten_reg_91_reg[1]),
        .I1(bound_reg_200_reg_n_104),
        .I2(indvar_flatten_reg_91_reg[0]),
        .I3(bound_reg_200_reg_n_105),
        .I4(bound_reg_200_reg_n_103),
        .I5(indvar_flatten_reg_91_reg[2]),
        .O(\indvar_flatten_reg_91[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \indvar_flatten_reg_91[0]_i_2 
       (.I0(ap_condition_pp0_exit_iter0_state2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(indvar_flatten_reg_910));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_91[0]_i_5 
       (.I0(indvar_flatten_reg_91_reg[0]),
        .O(\indvar_flatten_reg_91[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_7 
       (.I0(indvar_flatten_reg_91_reg[22]),
        .I1(bound_reg_200_reg_n_83),
        .I2(indvar_flatten_reg_91_reg[21]),
        .I3(bound_reg_200_reg_n_84),
        .I4(bound_reg_200_reg_n_82),
        .I5(indvar_flatten_reg_91_reg[23]),
        .O(\indvar_flatten_reg_91[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_8 
       (.I0(indvar_flatten_reg_91_reg[19]),
        .I1(bound_reg_200_reg_n_86),
        .I2(indvar_flatten_reg_91_reg[18]),
        .I3(bound_reg_200_reg_n_87),
        .I4(bound_reg_200_reg_n_85),
        .I5(indvar_flatten_reg_91_reg[20]),
        .O(\indvar_flatten_reg_91[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_91[0]_i_9 
       (.I0(indvar_flatten_reg_91_reg[16]),
        .I1(bound_reg_200_reg_n_89),
        .I2(indvar_flatten_reg_91_reg[15]),
        .I3(bound_reg_200_reg_n_90),
        .I4(bound_reg_200_reg_n_88),
        .I5(indvar_flatten_reg_91_reg[17]),
        .O(\indvar_flatten_reg_91[0]_i_9_n_0 ));
  FDRE \indvar_flatten_reg_91_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[0]_i_3_n_7 ),
        .Q(indvar_flatten_reg_91_reg[0]),
        .R(indvar_flatten_reg_91));
  CARRY4 \indvar_flatten_reg_91_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\indvar_flatten_reg_91_reg[0]_i_3_n_0 ,\indvar_flatten_reg_91_reg[0]_i_3_n_1 ,\indvar_flatten_reg_91_reg[0]_i_3_n_2 ,\indvar_flatten_reg_91_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_reg_91_reg[0]_i_3_n_4 ,\indvar_flatten_reg_91_reg[0]_i_3_n_5 ,\indvar_flatten_reg_91_reg[0]_i_3_n_6 ,\indvar_flatten_reg_91_reg[0]_i_3_n_7 }),
        .S({indvar_flatten_reg_91_reg[3:1],\indvar_flatten_reg_91[0]_i_5_n_0 }));
  CARRY4 \indvar_flatten_reg_91_reg[0]_i_4 
       (.CI(\indvar_flatten_reg_91_reg[0]_i_6_n_0 ),
        .CO({ap_condition_pp0_exit_iter0_state2,\indvar_flatten_reg_91_reg[0]_i_4_n_1 ,\indvar_flatten_reg_91_reg[0]_i_4_n_2 ,\indvar_flatten_reg_91_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_91_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_91[0]_i_7_n_0 ,\indvar_flatten_reg_91[0]_i_8_n_0 ,\indvar_flatten_reg_91[0]_i_9_n_0 ,\indvar_flatten_reg_91[0]_i_10_n_0 }));
  CARRY4 \indvar_flatten_reg_91_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\indvar_flatten_reg_91_reg[0]_i_6_n_0 ,\indvar_flatten_reg_91_reg[0]_i_6_n_1 ,\indvar_flatten_reg_91_reg[0]_i_6_n_2 ,\indvar_flatten_reg_91_reg[0]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_91_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_91[0]_i_11_n_0 ,\indvar_flatten_reg_91[0]_i_12_n_0 ,\indvar_flatten_reg_91[0]_i_13_n_0 ,\indvar_flatten_reg_91[0]_i_14_n_0 }));
  FDRE \indvar_flatten_reg_91_reg[10] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[8]_i_1_n_5 ),
        .Q(indvar_flatten_reg_91_reg[10]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[11] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[8]_i_1_n_4 ),
        .Q(indvar_flatten_reg_91_reg[11]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[12] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten_reg_91_reg[12]),
        .R(indvar_flatten_reg_91));
  CARRY4 \indvar_flatten_reg_91_reg[12]_i_1 
       (.CI(\indvar_flatten_reg_91_reg[8]_i_1_n_0 ),
        .CO({\indvar_flatten_reg_91_reg[12]_i_1_n_0 ,\indvar_flatten_reg_91_reg[12]_i_1_n_1 ,\indvar_flatten_reg_91_reg[12]_i_1_n_2 ,\indvar_flatten_reg_91_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_91_reg[12]_i_1_n_4 ,\indvar_flatten_reg_91_reg[12]_i_1_n_5 ,\indvar_flatten_reg_91_reg[12]_i_1_n_6 ,\indvar_flatten_reg_91_reg[12]_i_1_n_7 }),
        .S(indvar_flatten_reg_91_reg[15:12]));
  FDRE \indvar_flatten_reg_91_reg[13] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[12]_i_1_n_6 ),
        .Q(indvar_flatten_reg_91_reg[13]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[14] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[12]_i_1_n_5 ),
        .Q(indvar_flatten_reg_91_reg[14]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[15] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[12]_i_1_n_4 ),
        .Q(indvar_flatten_reg_91_reg[15]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[16] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[16]_i_1_n_7 ),
        .Q(indvar_flatten_reg_91_reg[16]),
        .R(indvar_flatten_reg_91));
  CARRY4 \indvar_flatten_reg_91_reg[16]_i_1 
       (.CI(\indvar_flatten_reg_91_reg[12]_i_1_n_0 ),
        .CO({\indvar_flatten_reg_91_reg[16]_i_1_n_0 ,\indvar_flatten_reg_91_reg[16]_i_1_n_1 ,\indvar_flatten_reg_91_reg[16]_i_1_n_2 ,\indvar_flatten_reg_91_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_91_reg[16]_i_1_n_4 ,\indvar_flatten_reg_91_reg[16]_i_1_n_5 ,\indvar_flatten_reg_91_reg[16]_i_1_n_6 ,\indvar_flatten_reg_91_reg[16]_i_1_n_7 }),
        .S(indvar_flatten_reg_91_reg[19:16]));
  FDRE \indvar_flatten_reg_91_reg[17] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[16]_i_1_n_6 ),
        .Q(indvar_flatten_reg_91_reg[17]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[18] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[16]_i_1_n_5 ),
        .Q(indvar_flatten_reg_91_reg[18]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[19] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[16]_i_1_n_4 ),
        .Q(indvar_flatten_reg_91_reg[19]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[0]_i_3_n_6 ),
        .Q(indvar_flatten_reg_91_reg[1]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[20] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[20]_i_1_n_7 ),
        .Q(indvar_flatten_reg_91_reg[20]),
        .R(indvar_flatten_reg_91));
  CARRY4 \indvar_flatten_reg_91_reg[20]_i_1 
       (.CI(\indvar_flatten_reg_91_reg[16]_i_1_n_0 ),
        .CO({\NLW_indvar_flatten_reg_91_reg[20]_i_1_CO_UNCONNECTED [3],\indvar_flatten_reg_91_reg[20]_i_1_n_1 ,\indvar_flatten_reg_91_reg[20]_i_1_n_2 ,\indvar_flatten_reg_91_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_91_reg[20]_i_1_n_4 ,\indvar_flatten_reg_91_reg[20]_i_1_n_5 ,\indvar_flatten_reg_91_reg[20]_i_1_n_6 ,\indvar_flatten_reg_91_reg[20]_i_1_n_7 }),
        .S(indvar_flatten_reg_91_reg[23:20]));
  FDRE \indvar_flatten_reg_91_reg[21] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[20]_i_1_n_6 ),
        .Q(indvar_flatten_reg_91_reg[21]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[22] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[20]_i_1_n_5 ),
        .Q(indvar_flatten_reg_91_reg[22]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[23] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[20]_i_1_n_4 ),
        .Q(indvar_flatten_reg_91_reg[23]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[0]_i_3_n_5 ),
        .Q(indvar_flatten_reg_91_reg[2]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[0]_i_3_n_4 ),
        .Q(indvar_flatten_reg_91_reg[3]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten_reg_91_reg[4]),
        .R(indvar_flatten_reg_91));
  CARRY4 \indvar_flatten_reg_91_reg[4]_i_1 
       (.CI(\indvar_flatten_reg_91_reg[0]_i_3_n_0 ),
        .CO({\indvar_flatten_reg_91_reg[4]_i_1_n_0 ,\indvar_flatten_reg_91_reg[4]_i_1_n_1 ,\indvar_flatten_reg_91_reg[4]_i_1_n_2 ,\indvar_flatten_reg_91_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_91_reg[4]_i_1_n_4 ,\indvar_flatten_reg_91_reg[4]_i_1_n_5 ,\indvar_flatten_reg_91_reg[4]_i_1_n_6 ,\indvar_flatten_reg_91_reg[4]_i_1_n_7 }),
        .S(indvar_flatten_reg_91_reg[7:4]));
  FDRE \indvar_flatten_reg_91_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[4]_i_1_n_6 ),
        .Q(indvar_flatten_reg_91_reg[5]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[4]_i_1_n_5 ),
        .Q(indvar_flatten_reg_91_reg[6]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[4]_i_1_n_4 ),
        .Q(indvar_flatten_reg_91_reg[7]),
        .R(indvar_flatten_reg_91));
  FDRE \indvar_flatten_reg_91_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten_reg_91_reg[8]),
        .R(indvar_flatten_reg_91));
  CARRY4 \indvar_flatten_reg_91_reg[8]_i_1 
       (.CI(\indvar_flatten_reg_91_reg[4]_i_1_n_0 ),
        .CO({\indvar_flatten_reg_91_reg[8]_i_1_n_0 ,\indvar_flatten_reg_91_reg[8]_i_1_n_1 ,\indvar_flatten_reg_91_reg[8]_i_1_n_2 ,\indvar_flatten_reg_91_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_91_reg[8]_i_1_n_4 ,\indvar_flatten_reg_91_reg[8]_i_1_n_5 ,\indvar_flatten_reg_91_reg[8]_i_1_n_6 ,\indvar_flatten_reg_91_reg[8]_i_1_n_7 }),
        .S(indvar_flatten_reg_91_reg[11:8]));
  FDRE \indvar_flatten_reg_91_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_910),
        .D(\indvar_flatten_reg_91_reg[8]_i_1_n_6 ),
        .Q(indvar_flatten_reg_91_reg[9]),
        .R(indvar_flatten_reg_91));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    src_V_V_read_INST_0
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .I3(ap_block_pp0_stage0_subdone),
        .O(src_V_V_read));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    src_V_V_read_INST_0_i_1
       (.I0(src_V_V_empty_n),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .I3(dst_V_V_full_n),
        .I4(ap_enable_reg_pp0_iter4_reg_n_0),
        .I5(exitcond_flatten_reg_205_pp0_iter3_reg),
        .O(ap_block_pp0_stage0_subdone));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp1_reg_234_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,src_V_V_dout[23:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp1_reg_234_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp1_reg_234_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp1_reg_234_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp1_reg_234_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(b_V_reg_2240),
        .CEA2(ap_block_pp0_stage0_subdone2_in),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(tmp1_reg_2340),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp1_reg_234_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp1_reg_234_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp1_reg_234_reg_P_UNCONNECTED[47:16],tmp1_reg_234_reg_n_90,tmp1_reg_234_reg_n_91,tmp1_reg_234_reg_n_92,tmp1_reg_234_reg_n_93,tmp1_reg_234_reg_n_94,tmp1_reg_234_reg_n_95,tmp1_reg_234_reg_n_96,tmp1_reg_234_reg_n_97,tmp1_reg_234_reg_n_98,tmp1_reg_234_reg_n_99,tmp1_reg_234_reg_n_100,tmp1_reg_234_reg_n_101,tmp1_reg_234_reg_n_102,tmp1_reg_234_reg_n_103,tmp1_reg_234_reg_n_104,tmp1_reg_234_reg_n_105}),
        .PATTERNBDETECT(NLW_tmp1_reg_234_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp1_reg_234_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_8_reg_229_reg_n_106,tmp_8_reg_229_reg_n_107,tmp_8_reg_229_reg_n_108,tmp_8_reg_229_reg_n_109,tmp_8_reg_229_reg_n_110,tmp_8_reg_229_reg_n_111,tmp_8_reg_229_reg_n_112,tmp_8_reg_229_reg_n_113,tmp_8_reg_229_reg_n_114,tmp_8_reg_229_reg_n_115,tmp_8_reg_229_reg_n_116,tmp_8_reg_229_reg_n_117,tmp_8_reg_229_reg_n_118,tmp_8_reg_229_reg_n_119,tmp_8_reg_229_reg_n_120,tmp_8_reg_229_reg_n_121,tmp_8_reg_229_reg_n_122,tmp_8_reg_229_reg_n_123,tmp_8_reg_229_reg_n_124,tmp_8_reg_229_reg_n_125,tmp_8_reg_229_reg_n_126,tmp_8_reg_229_reg_n_127,tmp_8_reg_229_reg_n_128,tmp_8_reg_229_reg_n_129,tmp_8_reg_229_reg_n_130,tmp_8_reg_229_reg_n_131,tmp_8_reg_229_reg_n_132,tmp_8_reg_229_reg_n_133,tmp_8_reg_229_reg_n_134,tmp_8_reg_229_reg_n_135,tmp_8_reg_229_reg_n_136,tmp_8_reg_229_reg_n_137,tmp_8_reg_229_reg_n_138,tmp_8_reg_229_reg_n_139,tmp_8_reg_229_reg_n_140,tmp_8_reg_229_reg_n_141,tmp_8_reg_229_reg_n_142,tmp_8_reg_229_reg_n_143,tmp_8_reg_229_reg_n_144,tmp_8_reg_229_reg_n_145,tmp_8_reg_229_reg_n_146,tmp_8_reg_229_reg_n_147,tmp_8_reg_229_reg_n_148,tmp_8_reg_229_reg_n_149,tmp_8_reg_229_reg_n_150,tmp_8_reg_229_reg_n_151,tmp_8_reg_229_reg_n_152,tmp_8_reg_229_reg_n_153}),
        .PCOUT(NLW_tmp1_reg_234_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp1_reg_234_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp2_reg_239_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,src_V_V_dout[7:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp2_reg_239_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp2_reg_239_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp2_reg_239_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp2_reg_239_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(b_V_reg_2240),
        .CEA2(ap_block_pp0_stage0_subdone2_in),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(tmp1_reg_2340),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp2_reg_239_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp2_reg_239_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp2_reg_239_reg_P_UNCONNECTED[47:13],tmp2_reg_239_reg_n_93,tmp2_reg_239_reg_n_94,tmp2_reg_239_reg_n_95,tmp2_reg_239_reg_n_96,tmp2_reg_239_reg_n_97,tmp2_reg_239_reg_n_98,tmp2_reg_239_reg_n_99,tmp2_reg_239_reg_n_100,tmp2_reg_239_reg_n_101,tmp2_reg_239_reg_n_102,tmp2_reg_239_reg_n_103,tmp2_reg_239_reg_n_104,tmp2_reg_239_reg_n_105}),
        .PATTERNBDETECT(NLW_tmp2_reg_239_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp2_reg_239_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp2_reg_239_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp2_reg_239_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h04)) 
    tmp2_reg_239_reg_i_1
       (.I0(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_subdone),
        .O(b_V_reg_2240));
  LUT6 #(
    .INIT(64'hFBFBFBFBFB00FBFB)) 
    tmp2_reg_239_reg_i_2
       (.I0(exitcond_flatten_reg_205_pp0_iter3_reg),
        .I1(ap_enable_reg_pp0_iter4_reg_n_0),
        .I2(dst_V_V_full_n),
        .I3(\exitcond_flatten_reg_205_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(src_V_V_empty_n),
        .O(ap_block_pp0_stage0_subdone2_in));
  LUT3 #(
    .INIT(8'h04)) 
    tmp2_reg_239_reg_i_3
       (.I0(exitcond_flatten_reg_205_pp0_iter2_reg),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_block_pp0_stage0_subdone),
        .O(tmp1_reg_2340));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_8_reg_229_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,src_V_V_dout[15:8]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_8_reg_229_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_8_reg_229_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_8_reg_229_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_8_reg_229_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(b_V_reg_2240),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(tmp_8_reg_2290),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_8_reg_229_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_8_reg_229_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_tmp_8_reg_229_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_tmp_8_reg_229_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_8_reg_229_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmp_8_reg_229_reg_n_106,tmp_8_reg_229_reg_n_107,tmp_8_reg_229_reg_n_108,tmp_8_reg_229_reg_n_109,tmp_8_reg_229_reg_n_110,tmp_8_reg_229_reg_n_111,tmp_8_reg_229_reg_n_112,tmp_8_reg_229_reg_n_113,tmp_8_reg_229_reg_n_114,tmp_8_reg_229_reg_n_115,tmp_8_reg_229_reg_n_116,tmp_8_reg_229_reg_n_117,tmp_8_reg_229_reg_n_118,tmp_8_reg_229_reg_n_119,tmp_8_reg_229_reg_n_120,tmp_8_reg_229_reg_n_121,tmp_8_reg_229_reg_n_122,tmp_8_reg_229_reg_n_123,tmp_8_reg_229_reg_n_124,tmp_8_reg_229_reg_n_125,tmp_8_reg_229_reg_n_126,tmp_8_reg_229_reg_n_127,tmp_8_reg_229_reg_n_128,tmp_8_reg_229_reg_n_129,tmp_8_reg_229_reg_n_130,tmp_8_reg_229_reg_n_131,tmp_8_reg_229_reg_n_132,tmp_8_reg_229_reg_n_133,tmp_8_reg_229_reg_n_134,tmp_8_reg_229_reg_n_135,tmp_8_reg_229_reg_n_136,tmp_8_reg_229_reg_n_137,tmp_8_reg_229_reg_n_138,tmp_8_reg_229_reg_n_139,tmp_8_reg_229_reg_n_140,tmp_8_reg_229_reg_n_141,tmp_8_reg_229_reg_n_142,tmp_8_reg_229_reg_n_143,tmp_8_reg_229_reg_n_144,tmp_8_reg_229_reg_n_145,tmp_8_reg_229_reg_n_146,tmp_8_reg_229_reg_n_147,tmp_8_reg_229_reg_n_148,tmp_8_reg_229_reg_n_149,tmp_8_reg_229_reg_n_150,tmp_8_reg_229_reg_n_151,tmp_8_reg_229_reg_n_152,tmp_8_reg_229_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_8_reg_229_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_8_reg_229_reg_i_1
       (.I0(exitcond_flatten_reg_205_pp0_iter1_reg),
        .I1(ap_block_pp0_stage0_subdone),
        .O(tmp_8_reg_2290));
endmodule

(* CHECK_LICENSE_TYPE = "rgb2gray_0,rgb2gray,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "rgb2gray,Vivado 2018.3" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    width_V,
    height_V);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 src_V_V RD_DATA" *) input [23:0]src_V_V_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 src_V_V EMPTY_N" *) input src_V_V_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 src_V_V RD_EN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_V_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output src_V_V_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V WR_DATA" *) output [7:0]dst_V_V_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V FULL_N" *) input dst_V_V_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V WR_EN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dst_V_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output dst_V_V_write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 width_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME width_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [11:0]width_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 height_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME height_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [11:0]height_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]dst_V_V_din;
  wire dst_V_V_full_n;
  wire dst_V_V_write;
  wire [11:0]height_V;
  wire [23:0]src_V_V_dout;
  wire src_V_V_empty_n;
  wire src_V_V_read;
  wire [11:0]width_V;

  (* ap_ST_fsm_pp0_stage0 = "3'b010" *) 
  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state7 = "3'b100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .dst_V_V_din(dst_V_V_din),
        .dst_V_V_full_n(dst_V_V_full_n),
        .dst_V_V_write(dst_V_V_write),
        .height_V(height_V),
        .src_V_V_dout(src_V_V_dout),
        .src_V_V_empty_n(src_V_V_empty_n),
        .src_V_V_read(src_V_V_read),
        .width_V(width_V));
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
