-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 28 14:50:23 2026
-- Host        : DESKTOP-MTRJSS0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/gauss_src/hdmi_loop/hdmi_loop.srcs/sources_1/ip/gray8_gauss2d_3x3_0/gray8_gauss2d_3x3_0_stub.vhdl
-- Design      : gray8_gauss2d_3x3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gray8_gauss2d_3x3_0 is
  Port ( 
    y_V_ap_vld : out STD_LOGIC;
    x_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    src_V_V_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    src_V_V_empty_n : in STD_LOGIC;
    src_V_V_read : out STD_LOGIC;
    dst_V_V_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dst_V_V_full_n : in STD_LOGIC;
    dst_V_V_write : out STD_LOGIC;
    y_V : out STD_LOGIC_VECTOR ( 11 downto 0 );
    x_V : out STD_LOGIC_VECTOR ( 11 downto 0 );
    w_V : in STD_LOGIC_VECTOR ( 11 downto 0 );
    h_V : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end gray8_gauss2d_3x3_0;

architecture stub of gray8_gauss2d_3x3_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "y_V_ap_vld,x_V_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,src_V_V_dout[7:0],src_V_V_empty_n,src_V_V_read,dst_V_V_din[7:0],dst_V_V_full_n,dst_V_V_write,y_V[11:0],x_V[11:0],w_V[11:0],h_V[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gray8_gauss2d_3x3,Vivado 2018.3";
begin
end;
