############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test1
set_top rgb2gray
add_files FPGA_HLS_Gray_Sharpen_1080p/rgb2gray/rgb2gray.cpp
add_files -tb FPGA_HLS_Gray_Sharpen_1080p/rgb2gray/rgb2gray_tb.cpp
open_solution "solution1"
set_part {xc7a35tfgg484-2}
create_clock -period 6.734 -name default
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
#source "./test1/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
