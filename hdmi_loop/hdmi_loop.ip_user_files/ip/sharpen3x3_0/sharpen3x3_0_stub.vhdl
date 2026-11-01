-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 28 15:54:37 2026
-- Host        : DESKTOP-MTRJSS0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/gauss_src/hdmi_loop/hdmi_loop.srcs/sources_1/ip/sharpen3x3_0/sharpen3x3_0_stub.vhdl
-- Design      : sharpen3x3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sharpen3x3_0 is
  Port ( 
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
    width_V : in STD_LOGIC_VECTOR ( 11 downto 0 );
    height_V : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end sharpen3x3_0;

architecture stub of sharpen3x3_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,src_V_V_dout[7:0],src_V_V_empty_n,src_V_V_read,dst_V_V_din[7:0],dst_V_V_full_n,dst_V_V_write,width_V[11:0],height_V[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sharpen3x3,Vivado 2018.3";
begin
end;
