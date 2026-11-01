############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test2
set_top gray8_gauss2d_3x3
add_files ../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp
add_files -tb ../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3_tb.cpp
open_solution "solution1"
set_part {xc7a35tfgg484-2} -tool vivado
create_clock -period 10 -name default
#source "./test2/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
