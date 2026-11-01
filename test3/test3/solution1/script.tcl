############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test3
set_top sharpen3x3
add_files ../sharpen3x3/sharpen3x3.cpp
add_files -tb ../sharpen3x3/sharpen3x3_tb.cpp
open_solution "solution1"
set_part {xc7a35tfgg484-2} -tool vivado
create_clock -period 6.734 -name default
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
config_export -format ip_catalog -rtl verilog
config_bind -effort medium
set_clock_uncertainty 12.5%
#source "./test3/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
