-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 28 15:54:13 2026
-- Host        : DESKTOP-MTRJSS0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rgb2gray_0_sim_netlist.vhdl
-- Design      : rgb2gray_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    src_V_V_dout : in STD_LOGIC_VECTOR ( 23 downto 0 );
    src_V_V_empty_n : in STD_LOGIC;
    src_V_V_read : out STD_LOGIC;
    dst_V_V_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dst_V_V_full_n : in STD_LOGIC;
    dst_V_V_write : out STD_LOGIC;
    width_V : in STD_LOGIC_VECTOR ( 11 downto 0 );
    height_V : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray : entity is "3'b010";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray : entity is "3'b001";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray : entity is "3'b100";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray is
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone2_in : STD_LOGIC;
  signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4_reg_n_0 : STD_LOGIC;
  signal b_V_reg_2240 : STD_LOGIC;
  signal bound_reg_200_reg_n_100 : STD_LOGIC;
  signal bound_reg_200_reg_n_101 : STD_LOGIC;
  signal bound_reg_200_reg_n_102 : STD_LOGIC;
  signal bound_reg_200_reg_n_103 : STD_LOGIC;
  signal bound_reg_200_reg_n_104 : STD_LOGIC;
  signal bound_reg_200_reg_n_105 : STD_LOGIC;
  signal bound_reg_200_reg_n_82 : STD_LOGIC;
  signal bound_reg_200_reg_n_83 : STD_LOGIC;
  signal bound_reg_200_reg_n_84 : STD_LOGIC;
  signal bound_reg_200_reg_n_85 : STD_LOGIC;
  signal bound_reg_200_reg_n_86 : STD_LOGIC;
  signal bound_reg_200_reg_n_87 : STD_LOGIC;
  signal bound_reg_200_reg_n_88 : STD_LOGIC;
  signal bound_reg_200_reg_n_89 : STD_LOGIC;
  signal bound_reg_200_reg_n_90 : STD_LOGIC;
  signal bound_reg_200_reg_n_91 : STD_LOGIC;
  signal bound_reg_200_reg_n_92 : STD_LOGIC;
  signal bound_reg_200_reg_n_93 : STD_LOGIC;
  signal bound_reg_200_reg_n_94 : STD_LOGIC;
  signal bound_reg_200_reg_n_95 : STD_LOGIC;
  signal bound_reg_200_reg_n_96 : STD_LOGIC;
  signal bound_reg_200_reg_n_97 : STD_LOGIC;
  signal bound_reg_200_reg_n_98 : STD_LOGIC;
  signal bound_reg_200_reg_n_99 : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_n_1\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_n_2\ : STD_LOGIC;
  signal \dst_V_V_din[0]_INST_0_n_3\ : STD_LOGIC;
  signal \dst_V_V_din[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dst_V_V_din[4]_INST_0_n_1\ : STD_LOGIC;
  signal \dst_V_V_din[4]_INST_0_n_2\ : STD_LOGIC;
  signal \dst_V_V_din[4]_INST_0_n_3\ : STD_LOGIC;
  signal \exitcond_flatten_reg_205[0]_i_1_n_0\ : STD_LOGIC;
  signal exitcond_flatten_reg_205_pp0_iter1_reg : STD_LOGIC;
  signal \exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal exitcond_flatten_reg_205_pp0_iter2_reg : STD_LOGIC;
  signal \exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal exitcond_flatten_reg_205_pp0_iter3_reg : STD_LOGIC;
  signal \exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \exitcond_flatten_reg_205_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten_reg_91 : STD_LOGIC;
  signal indvar_flatten_reg_910 : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_10_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_11_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_12_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_13_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_14_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_5_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_7_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_8_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91[0]_i_9_n_0\ : STD_LOGIC;
  signal indvar_flatten_reg_91_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_4_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_4_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_4_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_91_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal tmp1_reg_2340 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_100 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_101 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_102 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_103 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_104 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_105 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_90 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_91 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_92 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_93 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_94 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_95 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_96 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_97 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_98 : STD_LOGIC;
  signal tmp1_reg_234_reg_n_99 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_100 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_101 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_102 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_103 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_104 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_105 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_93 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_94 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_95 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_96 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_97 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_98 : STD_LOGIC;
  signal tmp2_reg_239_reg_n_99 : STD_LOGIC;
  signal tmp_8_reg_2290 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_106 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_107 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_108 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_109 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_110 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_111 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_112 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_113 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_114 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_115 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_116 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_117 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_118 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_119 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_120 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_121 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_122 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_123 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_124 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_125 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_126 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_127 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_128 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_129 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_130 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_131 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_132 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_133 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_134 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_135 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_136 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_137 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_138 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_139 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_140 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_141 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_142 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_143 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_144 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_145 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_146 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_147 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_148 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_149 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_150 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_151 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_152 : STD_LOGIC;
  signal tmp_8_reg_229_reg_n_153 : STD_LOGIC;
  signal NLW_bound_reg_200_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_bound_reg_200_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_bound_reg_200_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_bound_reg_200_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_bound_reg_200_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_bound_reg_200_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_bound_reg_200_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_bound_reg_200_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_bound_reg_200_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bound_reg_200_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_bound_reg_200_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_dst_V_V_din[0]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dst_V_V_din[0]_INST_0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dst_V_V_din[4]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_indvar_flatten_reg_91_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_indvar_flatten_reg_91_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_indvar_flatten_reg_91_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tmp1_reg_234_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp1_reg_234_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp1_reg_234_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp1_reg_234_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp1_reg_234_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp1_reg_234_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp1_reg_234_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp1_reg_234_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp1_reg_234_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp1_reg_234_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_tmp1_reg_234_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_tmp2_reg_239_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_239_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_239_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_239_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_239_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_239_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_239_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp2_reg_239_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp2_reg_239_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_239_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 13 );
  signal NLW_tmp2_reg_239_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_tmp_8_reg_229_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_8_reg_229_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_8_reg_229_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_8_reg_229_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_8_reg_229_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_8_reg_229_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_8_reg_229_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_8_reg_229_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_8_reg_229_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_8_reg_229_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bound_reg_200_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \exitcond_flatten_reg_205[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of src_V_V_read_INST_0 : label is "soft_lutpair3";
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \^ap_done\,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \ap_CS_fsm[2]_i_2_n_0\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_start,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm[2]_i_2_n_0\,
      I1 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202020F020202"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter4_reg_n_0,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => ap_condition_pp0_exit_iter0_state2,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => ap_enable_reg_pp0_iter1_reg_n_0,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \^ap_done\,
      R => ap_rst
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E0E0E0E"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_NS_fsm1,
      I2 => ap_rst,
      I3 => ap_block_pp0_stage0_subdone,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => ap_condition_pp0_exit_iter0_state2,
      O => ap_enable_reg_pp0_iter0_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C000A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => ap_rst,
      I3 => ap_condition_pp0_exit_iter0_state2,
      I4 => ap_block_pp0_stage0_subdone,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1_reg_n_0,
      R => '0'
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => ap_block_pp0_stage0_subdone,
      I2 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst
    );
ap_enable_reg_pp0_iter3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_block_pp0_stage0_subdone,
      I2 => ap_enable_reg_pp0_iter3,
      O => ap_enable_reg_pp0_iter3_i_1_n_0
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3_i_1_n_0,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst
    );
ap_enable_reg_pp0_iter4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0C0C0A0A0A0A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter3,
      I1 => ap_enable_reg_pp0_iter4_reg_n_0,
      I2 => ap_rst,
      I3 => ap_start,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_block_pp0_stage0_subdone,
      O => ap_enable_reg_pp0_iter4_i_1_n_0
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter4_i_1_n_0,
      Q => ap_enable_reg_pp0_iter4_reg_n_0,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
bound_reg_200_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 12) => B"000000000000000000",
      A(11 downto 0) => width_V(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_bound_reg_200_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 12) => B"000000",
      B(11 downto 0) => height_V(11 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_bound_reg_200_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_bound_reg_200_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_bound_reg_200_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_NS_fsm1,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_bound_reg_200_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_bound_reg_200_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_bound_reg_200_reg_P_UNCONNECTED(47 downto 24),
      P(23) => bound_reg_200_reg_n_82,
      P(22) => bound_reg_200_reg_n_83,
      P(21) => bound_reg_200_reg_n_84,
      P(20) => bound_reg_200_reg_n_85,
      P(19) => bound_reg_200_reg_n_86,
      P(18) => bound_reg_200_reg_n_87,
      P(17) => bound_reg_200_reg_n_88,
      P(16) => bound_reg_200_reg_n_89,
      P(15) => bound_reg_200_reg_n_90,
      P(14) => bound_reg_200_reg_n_91,
      P(13) => bound_reg_200_reg_n_92,
      P(12) => bound_reg_200_reg_n_93,
      P(11) => bound_reg_200_reg_n_94,
      P(10) => bound_reg_200_reg_n_95,
      P(9) => bound_reg_200_reg_n_96,
      P(8) => bound_reg_200_reg_n_97,
      P(7) => bound_reg_200_reg_n_98,
      P(6) => bound_reg_200_reg_n_99,
      P(5) => bound_reg_200_reg_n_100,
      P(4) => bound_reg_200_reg_n_101,
      P(3) => bound_reg_200_reg_n_102,
      P(2) => bound_reg_200_reg_n_103,
      P(1) => bound_reg_200_reg_n_104,
      P(0) => bound_reg_200_reg_n_105,
      PATTERNBDETECT => NLW_bound_reg_200_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_bound_reg_200_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_bound_reg_200_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_bound_reg_200_reg_UNDERFLOW_UNCONNECTED
    );
bound_reg_200_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_NS_fsm1
    );
\dst_V_V_din[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dst_V_V_din[0]_INST_0_i_1_n_0\,
      CO(3) => \dst_V_V_din[0]_INST_0_n_0\,
      CO(2) => \dst_V_V_din[0]_INST_0_n_1\,
      CO(1) => \dst_V_V_din[0]_INST_0_n_2\,
      CO(0) => \dst_V_V_din[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => tmp1_reg_234_reg_n_94,
      DI(2) => tmp1_reg_234_reg_n_95,
      DI(1) => tmp1_reg_234_reg_n_96,
      DI(0) => tmp1_reg_234_reg_n_97,
      O(3 downto 0) => dst_V_V_din(3 downto 0),
      S(3) => \dst_V_V_din[0]_INST_0_i_2_n_0\,
      S(2) => \dst_V_V_din[0]_INST_0_i_3_n_0\,
      S(1) => \dst_V_V_din[0]_INST_0_i_4_n_0\,
      S(0) => \dst_V_V_din[0]_INST_0_i_5_n_0\
    );
\dst_V_V_din[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dst_V_V_din[0]_INST_0_i_6_n_0\,
      CO(3) => \dst_V_V_din[0]_INST_0_i_1_n_0\,
      CO(2) => \dst_V_V_din[0]_INST_0_i_1_n_1\,
      CO(1) => \dst_V_V_din[0]_INST_0_i_1_n_2\,
      CO(0) => \dst_V_V_din[0]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => tmp1_reg_234_reg_n_98,
      DI(2) => tmp1_reg_234_reg_n_99,
      DI(1) => tmp1_reg_234_reg_n_100,
      DI(0) => tmp1_reg_234_reg_n_101,
      O(3 downto 0) => \NLW_dst_V_V_din[0]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \dst_V_V_din[0]_INST_0_i_7_n_0\,
      S(2) => \dst_V_V_din[0]_INST_0_i_8_n_0\,
      S(1) => \dst_V_V_din[0]_INST_0_i_9_n_0\,
      S(0) => \dst_V_V_din[0]_INST_0_i_10_n_0\
    );
\dst_V_V_din[0]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_101,
      I1 => tmp2_reg_239_reg_n_101,
      O => \dst_V_V_din[0]_INST_0_i_10_n_0\
    );
\dst_V_V_din[0]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_102,
      I1 => tmp2_reg_239_reg_n_102,
      O => \dst_V_V_din[0]_INST_0_i_11_n_0\
    );
\dst_V_V_din[0]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_103,
      I1 => tmp2_reg_239_reg_n_103,
      O => \dst_V_V_din[0]_INST_0_i_12_n_0\
    );
\dst_V_V_din[0]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_104,
      I1 => tmp2_reg_239_reg_n_104,
      O => \dst_V_V_din[0]_INST_0_i_13_n_0\
    );
\dst_V_V_din[0]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_105,
      I1 => tmp2_reg_239_reg_n_105,
      O => \dst_V_V_din[0]_INST_0_i_14_n_0\
    );
\dst_V_V_din[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_94,
      I1 => tmp2_reg_239_reg_n_94,
      O => \dst_V_V_din[0]_INST_0_i_2_n_0\
    );
\dst_V_V_din[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_95,
      I1 => tmp2_reg_239_reg_n_95,
      O => \dst_V_V_din[0]_INST_0_i_3_n_0\
    );
\dst_V_V_din[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_96,
      I1 => tmp2_reg_239_reg_n_96,
      O => \dst_V_V_din[0]_INST_0_i_4_n_0\
    );
\dst_V_V_din[0]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_97,
      I1 => tmp2_reg_239_reg_n_97,
      O => \dst_V_V_din[0]_INST_0_i_5_n_0\
    );
\dst_V_V_din[0]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dst_V_V_din[0]_INST_0_i_6_n_0\,
      CO(2) => \dst_V_V_din[0]_INST_0_i_6_n_1\,
      CO(1) => \dst_V_V_din[0]_INST_0_i_6_n_2\,
      CO(0) => \dst_V_V_din[0]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3) => tmp1_reg_234_reg_n_102,
      DI(2) => tmp1_reg_234_reg_n_103,
      DI(1) => tmp1_reg_234_reg_n_104,
      DI(0) => tmp1_reg_234_reg_n_105,
      O(3 downto 0) => \NLW_dst_V_V_din[0]_INST_0_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \dst_V_V_din[0]_INST_0_i_11_n_0\,
      S(2) => \dst_V_V_din[0]_INST_0_i_12_n_0\,
      S(1) => \dst_V_V_din[0]_INST_0_i_13_n_0\,
      S(0) => \dst_V_V_din[0]_INST_0_i_14_n_0\
    );
\dst_V_V_din[0]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_98,
      I1 => tmp2_reg_239_reg_n_98,
      O => \dst_V_V_din[0]_INST_0_i_7_n_0\
    );
\dst_V_V_din[0]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_99,
      I1 => tmp2_reg_239_reg_n_99,
      O => \dst_V_V_din[0]_INST_0_i_8_n_0\
    );
\dst_V_V_din[0]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_100,
      I1 => tmp2_reg_239_reg_n_100,
      O => \dst_V_V_din[0]_INST_0_i_9_n_0\
    );
\dst_V_V_din[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dst_V_V_din[0]_INST_0_n_0\,
      CO(3) => \NLW_dst_V_V_din[4]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \dst_V_V_din[4]_INST_0_n_1\,
      CO(1) => \dst_V_V_din[4]_INST_0_n_2\,
      CO(0) => \dst_V_V_din[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => tmp1_reg_234_reg_n_93,
      O(3 downto 0) => dst_V_V_din(7 downto 4),
      S(3) => tmp1_reg_234_reg_n_90,
      S(2) => tmp1_reg_234_reg_n_91,
      S(1) => tmp1_reg_234_reg_n_92,
      S(0) => \dst_V_V_din[4]_INST_0_i_1_n_0\
    );
\dst_V_V_din[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_reg_234_reg_n_93,
      I1 => tmp2_reg_239_reg_n_93,
      O => \dst_V_V_din[4]_INST_0_i_1_n_0\
    );
dst_V_V_write_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040004040"
    )
        port map (
      I0 => exitcond_flatten_reg_205_pp0_iter3_reg,
      I1 => ap_enable_reg_pp0_iter4_reg_n_0,
      I2 => dst_V_V_full_n,
      I3 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1_reg_n_0,
      I5 => src_V_V_empty_n,
      O => dst_V_V_write
    );
\exitcond_flatten_reg_205[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ap_condition_pp0_exit_iter0_state2,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      O => \exitcond_flatten_reg_205[0]_i_1_n_0\
    );
\exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => exitcond_flatten_reg_205_pp0_iter1_reg,
      O => \exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1_n_0\
    );
\exitcond_flatten_reg_205_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_flatten_reg_205_pp0_iter1_reg[0]_i_1_n_0\,
      Q => exitcond_flatten_reg_205_pp0_iter1_reg,
      R => '0'
    );
\exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => exitcond_flatten_reg_205_pp0_iter1_reg,
      I1 => ap_block_pp0_stage0_subdone,
      I2 => exitcond_flatten_reg_205_pp0_iter2_reg,
      O => \exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1_n_0\
    );
\exitcond_flatten_reg_205_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_flatten_reg_205_pp0_iter2_reg[0]_i_1_n_0\,
      Q => exitcond_flatten_reg_205_pp0_iter2_reg,
      R => '0'
    );
\exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => exitcond_flatten_reg_205_pp0_iter2_reg,
      I1 => ap_block_pp0_stage0_subdone,
      I2 => exitcond_flatten_reg_205_pp0_iter3_reg,
      O => \exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1_n_0\
    );
\exitcond_flatten_reg_205_pp0_iter3_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_flatten_reg_205_pp0_iter3_reg[0]_i_1_n_0\,
      Q => exitcond_flatten_reg_205_pp0_iter3_reg,
      R => '0'
    );
\exitcond_flatten_reg_205_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_flatten_reg_205[0]_i_1_n_0\,
      Q => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_reg_91[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF000000000000"
    )
        port map (
      I0 => ap_condition_pp0_exit_iter0_state2,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_start,
      I5 => \ap_CS_fsm_reg_n_0_[0]\,
      O => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(13),
      I1 => bound_reg_200_reg_n_92,
      I2 => indvar_flatten_reg_91_reg(12),
      I3 => bound_reg_200_reg_n_93,
      I4 => bound_reg_200_reg_n_91,
      I5 => indvar_flatten_reg_91_reg(14),
      O => \indvar_flatten_reg_91[0]_i_10_n_0\
    );
\indvar_flatten_reg_91[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(10),
      I1 => bound_reg_200_reg_n_95,
      I2 => indvar_flatten_reg_91_reg(9),
      I3 => bound_reg_200_reg_n_96,
      I4 => bound_reg_200_reg_n_94,
      I5 => indvar_flatten_reg_91_reg(11),
      O => \indvar_flatten_reg_91[0]_i_11_n_0\
    );
\indvar_flatten_reg_91[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(7),
      I1 => bound_reg_200_reg_n_98,
      I2 => indvar_flatten_reg_91_reg(6),
      I3 => bound_reg_200_reg_n_99,
      I4 => bound_reg_200_reg_n_97,
      I5 => indvar_flatten_reg_91_reg(8),
      O => \indvar_flatten_reg_91[0]_i_12_n_0\
    );
\indvar_flatten_reg_91[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(4),
      I1 => bound_reg_200_reg_n_101,
      I2 => indvar_flatten_reg_91_reg(3),
      I3 => bound_reg_200_reg_n_102,
      I4 => bound_reg_200_reg_n_100,
      I5 => indvar_flatten_reg_91_reg(5),
      O => \indvar_flatten_reg_91[0]_i_13_n_0\
    );
\indvar_flatten_reg_91[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(1),
      I1 => bound_reg_200_reg_n_104,
      I2 => indvar_flatten_reg_91_reg(0),
      I3 => bound_reg_200_reg_n_105,
      I4 => bound_reg_200_reg_n_103,
      I5 => indvar_flatten_reg_91_reg(2),
      O => \indvar_flatten_reg_91[0]_i_14_n_0\
    );
\indvar_flatten_reg_91[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => ap_condition_pp0_exit_iter0_state2,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => ap_CS_fsm_pp0_stage0,
      O => indvar_flatten_reg_910
    );
\indvar_flatten_reg_91[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(0),
      O => \indvar_flatten_reg_91[0]_i_5_n_0\
    );
\indvar_flatten_reg_91[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(22),
      I1 => bound_reg_200_reg_n_83,
      I2 => indvar_flatten_reg_91_reg(21),
      I3 => bound_reg_200_reg_n_84,
      I4 => bound_reg_200_reg_n_82,
      I5 => indvar_flatten_reg_91_reg(23),
      O => \indvar_flatten_reg_91[0]_i_7_n_0\
    );
\indvar_flatten_reg_91[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(19),
      I1 => bound_reg_200_reg_n_86,
      I2 => indvar_flatten_reg_91_reg(18),
      I3 => bound_reg_200_reg_n_87,
      I4 => bound_reg_200_reg_n_85,
      I5 => indvar_flatten_reg_91_reg(20),
      O => \indvar_flatten_reg_91[0]_i_8_n_0\
    );
\indvar_flatten_reg_91[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_reg_91_reg(16),
      I1 => bound_reg_200_reg_n_89,
      I2 => indvar_flatten_reg_91_reg(15),
      I3 => bound_reg_200_reg_n_90,
      I4 => bound_reg_200_reg_n_88,
      I5 => indvar_flatten_reg_91_reg(17),
      O => \indvar_flatten_reg_91[0]_i_9_n_0\
    );
\indvar_flatten_reg_91_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[0]_i_3_n_7\,
      Q => indvar_flatten_reg_91_reg(0),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \indvar_flatten_reg_91_reg[0]_i_3_n_0\,
      CO(2) => \indvar_flatten_reg_91_reg[0]_i_3_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[0]_i_3_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \indvar_flatten_reg_91_reg[0]_i_3_n_4\,
      O(2) => \indvar_flatten_reg_91_reg[0]_i_3_n_5\,
      O(1) => \indvar_flatten_reg_91_reg[0]_i_3_n_6\,
      O(0) => \indvar_flatten_reg_91_reg[0]_i_3_n_7\,
      S(3 downto 1) => indvar_flatten_reg_91_reg(3 downto 1),
      S(0) => \indvar_flatten_reg_91[0]_i_5_n_0\
    );
\indvar_flatten_reg_91_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten_reg_91_reg[0]_i_6_n_0\,
      CO(3) => ap_condition_pp0_exit_iter0_state2,
      CO(2) => \indvar_flatten_reg_91_reg[0]_i_4_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[0]_i_4_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[0]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_indvar_flatten_reg_91_reg[0]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \indvar_flatten_reg_91[0]_i_7_n_0\,
      S(2) => \indvar_flatten_reg_91[0]_i_8_n_0\,
      S(1) => \indvar_flatten_reg_91[0]_i_9_n_0\,
      S(0) => \indvar_flatten_reg_91[0]_i_10_n_0\
    );
\indvar_flatten_reg_91_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \indvar_flatten_reg_91_reg[0]_i_6_n_0\,
      CO(2) => \indvar_flatten_reg_91_reg[0]_i_6_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[0]_i_6_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[0]_i_6_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_indvar_flatten_reg_91_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \indvar_flatten_reg_91[0]_i_11_n_0\,
      S(2) => \indvar_flatten_reg_91[0]_i_12_n_0\,
      S(1) => \indvar_flatten_reg_91[0]_i_13_n_0\,
      S(0) => \indvar_flatten_reg_91[0]_i_14_n_0\
    );
\indvar_flatten_reg_91_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[8]_i_1_n_5\,
      Q => indvar_flatten_reg_91_reg(10),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[8]_i_1_n_4\,
      Q => indvar_flatten_reg_91_reg(11),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[12]_i_1_n_7\,
      Q => indvar_flatten_reg_91_reg(12),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten_reg_91_reg[8]_i_1_n_0\,
      CO(3) => \indvar_flatten_reg_91_reg[12]_i_1_n_0\,
      CO(2) => \indvar_flatten_reg_91_reg[12]_i_1_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[12]_i_1_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten_reg_91_reg[12]_i_1_n_4\,
      O(2) => \indvar_flatten_reg_91_reg[12]_i_1_n_5\,
      O(1) => \indvar_flatten_reg_91_reg[12]_i_1_n_6\,
      O(0) => \indvar_flatten_reg_91_reg[12]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten_reg_91_reg(15 downto 12)
    );
\indvar_flatten_reg_91_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[12]_i_1_n_6\,
      Q => indvar_flatten_reg_91_reg(13),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[12]_i_1_n_5\,
      Q => indvar_flatten_reg_91_reg(14),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[12]_i_1_n_4\,
      Q => indvar_flatten_reg_91_reg(15),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[16]_i_1_n_7\,
      Q => indvar_flatten_reg_91_reg(16),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten_reg_91_reg[12]_i_1_n_0\,
      CO(3) => \indvar_flatten_reg_91_reg[16]_i_1_n_0\,
      CO(2) => \indvar_flatten_reg_91_reg[16]_i_1_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[16]_i_1_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten_reg_91_reg[16]_i_1_n_4\,
      O(2) => \indvar_flatten_reg_91_reg[16]_i_1_n_5\,
      O(1) => \indvar_flatten_reg_91_reg[16]_i_1_n_6\,
      O(0) => \indvar_flatten_reg_91_reg[16]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten_reg_91_reg(19 downto 16)
    );
\indvar_flatten_reg_91_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[16]_i_1_n_6\,
      Q => indvar_flatten_reg_91_reg(17),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[16]_i_1_n_5\,
      Q => indvar_flatten_reg_91_reg(18),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[16]_i_1_n_4\,
      Q => indvar_flatten_reg_91_reg(19),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[0]_i_3_n_6\,
      Q => indvar_flatten_reg_91_reg(1),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[20]_i_1_n_7\,
      Q => indvar_flatten_reg_91_reg(20),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten_reg_91_reg[16]_i_1_n_0\,
      CO(3) => \NLW_indvar_flatten_reg_91_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \indvar_flatten_reg_91_reg[20]_i_1_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[20]_i_1_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten_reg_91_reg[20]_i_1_n_4\,
      O(2) => \indvar_flatten_reg_91_reg[20]_i_1_n_5\,
      O(1) => \indvar_flatten_reg_91_reg[20]_i_1_n_6\,
      O(0) => \indvar_flatten_reg_91_reg[20]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten_reg_91_reg(23 downto 20)
    );
\indvar_flatten_reg_91_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[20]_i_1_n_6\,
      Q => indvar_flatten_reg_91_reg(21),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[20]_i_1_n_5\,
      Q => indvar_flatten_reg_91_reg(22),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[20]_i_1_n_4\,
      Q => indvar_flatten_reg_91_reg(23),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[0]_i_3_n_5\,
      Q => indvar_flatten_reg_91_reg(2),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[0]_i_3_n_4\,
      Q => indvar_flatten_reg_91_reg(3),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[4]_i_1_n_7\,
      Q => indvar_flatten_reg_91_reg(4),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten_reg_91_reg[0]_i_3_n_0\,
      CO(3) => \indvar_flatten_reg_91_reg[4]_i_1_n_0\,
      CO(2) => \indvar_flatten_reg_91_reg[4]_i_1_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[4]_i_1_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten_reg_91_reg[4]_i_1_n_4\,
      O(2) => \indvar_flatten_reg_91_reg[4]_i_1_n_5\,
      O(1) => \indvar_flatten_reg_91_reg[4]_i_1_n_6\,
      O(0) => \indvar_flatten_reg_91_reg[4]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten_reg_91_reg(7 downto 4)
    );
\indvar_flatten_reg_91_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[4]_i_1_n_6\,
      Q => indvar_flatten_reg_91_reg(5),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[4]_i_1_n_5\,
      Q => indvar_flatten_reg_91_reg(6),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[4]_i_1_n_4\,
      Q => indvar_flatten_reg_91_reg(7),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[8]_i_1_n_7\,
      Q => indvar_flatten_reg_91_reg(8),
      R => indvar_flatten_reg_91
    );
\indvar_flatten_reg_91_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten_reg_91_reg[4]_i_1_n_0\,
      CO(3) => \indvar_flatten_reg_91_reg[8]_i_1_n_0\,
      CO(2) => \indvar_flatten_reg_91_reg[8]_i_1_n_1\,
      CO(1) => \indvar_flatten_reg_91_reg[8]_i_1_n_2\,
      CO(0) => \indvar_flatten_reg_91_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten_reg_91_reg[8]_i_1_n_4\,
      O(2) => \indvar_flatten_reg_91_reg[8]_i_1_n_5\,
      O(1) => \indvar_flatten_reg_91_reg[8]_i_1_n_6\,
      O(0) => \indvar_flatten_reg_91_reg[8]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten_reg_91_reg(11 downto 8)
    );
\indvar_flatten_reg_91_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_910,
      D => \indvar_flatten_reg_91_reg[8]_i_1_n_6\,
      Q => indvar_flatten_reg_91_reg(9),
      R => indvar_flatten_reg_91
    );
src_V_V_read_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      I3 => ap_block_pp0_stage0_subdone,
      O => src_V_V_read
    );
src_V_V_read_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404FF0404"
    )
        port map (
      I0 => src_V_V_empty_n,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      I3 => dst_V_V_full_n,
      I4 => ap_enable_reg_pp0_iter4_reg_n_0,
      I5 => exitcond_flatten_reg_205_pp0_iter3_reg,
      O => ap_block_pp0_stage0_subdone
    );
tmp1_reg_234_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => src_V_V_dout(23 downto 16),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp1_reg_234_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001001101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp1_reg_234_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp1_reg_234_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp1_reg_234_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => b_V_reg_2240,
      CEA2 => ap_block_pp0_stage0_subdone2_in,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => tmp1_reg_2340,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp1_reg_234_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_tmp1_reg_234_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_tmp1_reg_234_reg_P_UNCONNECTED(47 downto 16),
      P(15) => tmp1_reg_234_reg_n_90,
      P(14) => tmp1_reg_234_reg_n_91,
      P(13) => tmp1_reg_234_reg_n_92,
      P(12) => tmp1_reg_234_reg_n_93,
      P(11) => tmp1_reg_234_reg_n_94,
      P(10) => tmp1_reg_234_reg_n_95,
      P(9) => tmp1_reg_234_reg_n_96,
      P(8) => tmp1_reg_234_reg_n_97,
      P(7) => tmp1_reg_234_reg_n_98,
      P(6) => tmp1_reg_234_reg_n_99,
      P(5) => tmp1_reg_234_reg_n_100,
      P(4) => tmp1_reg_234_reg_n_101,
      P(3) => tmp1_reg_234_reg_n_102,
      P(2) => tmp1_reg_234_reg_n_103,
      P(1) => tmp1_reg_234_reg_n_104,
      P(0) => tmp1_reg_234_reg_n_105,
      PATTERNBDETECT => NLW_tmp1_reg_234_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp1_reg_234_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => tmp_8_reg_229_reg_n_106,
      PCIN(46) => tmp_8_reg_229_reg_n_107,
      PCIN(45) => tmp_8_reg_229_reg_n_108,
      PCIN(44) => tmp_8_reg_229_reg_n_109,
      PCIN(43) => tmp_8_reg_229_reg_n_110,
      PCIN(42) => tmp_8_reg_229_reg_n_111,
      PCIN(41) => tmp_8_reg_229_reg_n_112,
      PCIN(40) => tmp_8_reg_229_reg_n_113,
      PCIN(39) => tmp_8_reg_229_reg_n_114,
      PCIN(38) => tmp_8_reg_229_reg_n_115,
      PCIN(37) => tmp_8_reg_229_reg_n_116,
      PCIN(36) => tmp_8_reg_229_reg_n_117,
      PCIN(35) => tmp_8_reg_229_reg_n_118,
      PCIN(34) => tmp_8_reg_229_reg_n_119,
      PCIN(33) => tmp_8_reg_229_reg_n_120,
      PCIN(32) => tmp_8_reg_229_reg_n_121,
      PCIN(31) => tmp_8_reg_229_reg_n_122,
      PCIN(30) => tmp_8_reg_229_reg_n_123,
      PCIN(29) => tmp_8_reg_229_reg_n_124,
      PCIN(28) => tmp_8_reg_229_reg_n_125,
      PCIN(27) => tmp_8_reg_229_reg_n_126,
      PCIN(26) => tmp_8_reg_229_reg_n_127,
      PCIN(25) => tmp_8_reg_229_reg_n_128,
      PCIN(24) => tmp_8_reg_229_reg_n_129,
      PCIN(23) => tmp_8_reg_229_reg_n_130,
      PCIN(22) => tmp_8_reg_229_reg_n_131,
      PCIN(21) => tmp_8_reg_229_reg_n_132,
      PCIN(20) => tmp_8_reg_229_reg_n_133,
      PCIN(19) => tmp_8_reg_229_reg_n_134,
      PCIN(18) => tmp_8_reg_229_reg_n_135,
      PCIN(17) => tmp_8_reg_229_reg_n_136,
      PCIN(16) => tmp_8_reg_229_reg_n_137,
      PCIN(15) => tmp_8_reg_229_reg_n_138,
      PCIN(14) => tmp_8_reg_229_reg_n_139,
      PCIN(13) => tmp_8_reg_229_reg_n_140,
      PCIN(12) => tmp_8_reg_229_reg_n_141,
      PCIN(11) => tmp_8_reg_229_reg_n_142,
      PCIN(10) => tmp_8_reg_229_reg_n_143,
      PCIN(9) => tmp_8_reg_229_reg_n_144,
      PCIN(8) => tmp_8_reg_229_reg_n_145,
      PCIN(7) => tmp_8_reg_229_reg_n_146,
      PCIN(6) => tmp_8_reg_229_reg_n_147,
      PCIN(5) => tmp_8_reg_229_reg_n_148,
      PCIN(4) => tmp_8_reg_229_reg_n_149,
      PCIN(3) => tmp_8_reg_229_reg_n_150,
      PCIN(2) => tmp_8_reg_229_reg_n_151,
      PCIN(1) => tmp_8_reg_229_reg_n_152,
      PCIN(0) => tmp_8_reg_229_reg_n_153,
      PCOUT(47 downto 0) => NLW_tmp1_reg_234_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp1_reg_234_reg_UNDERFLOW_UNCONNECTED
    );
tmp2_reg_239_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => src_V_V_dout(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp2_reg_239_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000011101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp2_reg_239_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000010000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp2_reg_239_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp2_reg_239_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => b_V_reg_2240,
      CEA2 => ap_block_pp0_stage0_subdone2_in,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => tmp1_reg_2340,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp2_reg_239_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_tmp2_reg_239_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 13) => NLW_tmp2_reg_239_reg_P_UNCONNECTED(47 downto 13),
      P(12) => tmp2_reg_239_reg_n_93,
      P(11) => tmp2_reg_239_reg_n_94,
      P(10) => tmp2_reg_239_reg_n_95,
      P(9) => tmp2_reg_239_reg_n_96,
      P(8) => tmp2_reg_239_reg_n_97,
      P(7) => tmp2_reg_239_reg_n_98,
      P(6) => tmp2_reg_239_reg_n_99,
      P(5) => tmp2_reg_239_reg_n_100,
      P(4) => tmp2_reg_239_reg_n_101,
      P(3) => tmp2_reg_239_reg_n_102,
      P(2) => tmp2_reg_239_reg_n_103,
      P(1) => tmp2_reg_239_reg_n_104,
      P(0) => tmp2_reg_239_reg_n_105,
      PATTERNBDETECT => NLW_tmp2_reg_239_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp2_reg_239_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp2_reg_239_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp2_reg_239_reg_UNDERFLOW_UNCONNECTED
    );
tmp2_reg_239_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_block_pp0_stage0_subdone,
      O => b_V_reg_2240
    );
tmp2_reg_239_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFB00FBFB"
    )
        port map (
      I0 => exitcond_flatten_reg_205_pp0_iter3_reg,
      I1 => ap_enable_reg_pp0_iter4_reg_n_0,
      I2 => dst_V_V_full_n,
      I3 => \exitcond_flatten_reg_205_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1_reg_n_0,
      I5 => src_V_V_empty_n,
      O => ap_block_pp0_stage0_subdone2_in
    );
tmp2_reg_239_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => exitcond_flatten_reg_205_pp0_iter2_reg,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => ap_block_pp0_stage0_subdone,
      O => tmp1_reg_2340
    );
tmp_8_reg_229_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => src_V_V_dout(15 downto 8),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_8_reg_229_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000010010110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_8_reg_229_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_8_reg_229_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_8_reg_229_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => b_V_reg_2240,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => tmp_8_reg_2290,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_8_reg_229_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_8_reg_229_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_tmp_8_reg_229_reg_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_tmp_8_reg_229_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_8_reg_229_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => tmp_8_reg_229_reg_n_106,
      PCOUT(46) => tmp_8_reg_229_reg_n_107,
      PCOUT(45) => tmp_8_reg_229_reg_n_108,
      PCOUT(44) => tmp_8_reg_229_reg_n_109,
      PCOUT(43) => tmp_8_reg_229_reg_n_110,
      PCOUT(42) => tmp_8_reg_229_reg_n_111,
      PCOUT(41) => tmp_8_reg_229_reg_n_112,
      PCOUT(40) => tmp_8_reg_229_reg_n_113,
      PCOUT(39) => tmp_8_reg_229_reg_n_114,
      PCOUT(38) => tmp_8_reg_229_reg_n_115,
      PCOUT(37) => tmp_8_reg_229_reg_n_116,
      PCOUT(36) => tmp_8_reg_229_reg_n_117,
      PCOUT(35) => tmp_8_reg_229_reg_n_118,
      PCOUT(34) => tmp_8_reg_229_reg_n_119,
      PCOUT(33) => tmp_8_reg_229_reg_n_120,
      PCOUT(32) => tmp_8_reg_229_reg_n_121,
      PCOUT(31) => tmp_8_reg_229_reg_n_122,
      PCOUT(30) => tmp_8_reg_229_reg_n_123,
      PCOUT(29) => tmp_8_reg_229_reg_n_124,
      PCOUT(28) => tmp_8_reg_229_reg_n_125,
      PCOUT(27) => tmp_8_reg_229_reg_n_126,
      PCOUT(26) => tmp_8_reg_229_reg_n_127,
      PCOUT(25) => tmp_8_reg_229_reg_n_128,
      PCOUT(24) => tmp_8_reg_229_reg_n_129,
      PCOUT(23) => tmp_8_reg_229_reg_n_130,
      PCOUT(22) => tmp_8_reg_229_reg_n_131,
      PCOUT(21) => tmp_8_reg_229_reg_n_132,
      PCOUT(20) => tmp_8_reg_229_reg_n_133,
      PCOUT(19) => tmp_8_reg_229_reg_n_134,
      PCOUT(18) => tmp_8_reg_229_reg_n_135,
      PCOUT(17) => tmp_8_reg_229_reg_n_136,
      PCOUT(16) => tmp_8_reg_229_reg_n_137,
      PCOUT(15) => tmp_8_reg_229_reg_n_138,
      PCOUT(14) => tmp_8_reg_229_reg_n_139,
      PCOUT(13) => tmp_8_reg_229_reg_n_140,
      PCOUT(12) => tmp_8_reg_229_reg_n_141,
      PCOUT(11) => tmp_8_reg_229_reg_n_142,
      PCOUT(10) => tmp_8_reg_229_reg_n_143,
      PCOUT(9) => tmp_8_reg_229_reg_n_144,
      PCOUT(8) => tmp_8_reg_229_reg_n_145,
      PCOUT(7) => tmp_8_reg_229_reg_n_146,
      PCOUT(6) => tmp_8_reg_229_reg_n_147,
      PCOUT(5) => tmp_8_reg_229_reg_n_148,
      PCOUT(4) => tmp_8_reg_229_reg_n_149,
      PCOUT(3) => tmp_8_reg_229_reg_n_150,
      PCOUT(2) => tmp_8_reg_229_reg_n_151,
      PCOUT(1) => tmp_8_reg_229_reg_n_152,
      PCOUT(0) => tmp_8_reg_229_reg_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_8_reg_229_reg_UNDERFLOW_UNCONNECTED
    );
tmp_8_reg_229_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => exitcond_flatten_reg_205_pp0_iter1_reg,
      I1 => ap_block_pp0_stage0_subdone,
      O => tmp_8_reg_2290
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    src_V_V_dout : in STD_LOGIC_VECTOR ( 23 downto 0 );
    src_V_V_empty_n : in STD_LOGIC;
    src_V_V_read : out STD_LOGIC;
    dst_V_V_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dst_V_V_full_n : in STD_LOGIC;
    dst_V_V_write : out STD_LOGIC;
    width_V : in STD_LOGIC_VECTOR ( 11 downto 0 );
    height_V : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rgb2gray_0,rgb2gray,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rgb2gray,Vivado 2018.3";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "3'b010";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "3'b001";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "3'b100";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_PARAMETER of ap_ready : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of dst_V_V_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V FULL_N";
  attribute X_INTERFACE_INFO of dst_V_V_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V WR_EN";
  attribute X_INTERFACE_PARAMETER of dst_V_V_write : signal is "XIL_INTERFACENAME dst_V_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of src_V_V_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 src_V_V EMPTY_N";
  attribute X_INTERFACE_INFO of src_V_V_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 src_V_V RD_EN";
  attribute X_INTERFACE_PARAMETER of src_V_V_read : signal is "XIL_INTERFACENAME src_V_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of dst_V_V_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 dst_V_V WR_DATA";
  attribute X_INTERFACE_INFO of height_V : signal is "xilinx.com:signal:data:1.0 height_V DATA";
  attribute X_INTERFACE_PARAMETER of height_V : signal is "XIL_INTERFACENAME height_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute X_INTERFACE_INFO of src_V_V_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 src_V_V RD_DATA";
  attribute X_INTERFACE_INFO of width_V : signal is "xilinx.com:signal:data:1.0 width_V DATA";
  attribute X_INTERFACE_PARAMETER of width_V : signal is "XIL_INTERFACENAME width_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      dst_V_V_din(7 downto 0) => dst_V_V_din(7 downto 0),
      dst_V_V_full_n => dst_V_V_full_n,
      dst_V_V_write => dst_V_V_write,
      height_V(11 downto 0) => height_V(11 downto 0),
      src_V_V_dout(23 downto 0) => src_V_V_dout(23 downto 0),
      src_V_V_empty_n => src_V_V_empty_n,
      src_V_V_read => src_V_V_read,
      width_V(11 downto 0) => width_V(11 downto 0)
    );
end STRUCTURE;
