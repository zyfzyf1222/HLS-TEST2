# ==============================================================
# File generated on Wed Oct 28 15:06:56 +0800 2026
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../FPGA_HLS_Gray_Sharpen_1080p/rgb2gray/rgb2gray_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files FPGA_HLS_Gray_Sharpen_1080p/rgb2gray/rgb2gray.cpp
set_part xc7a35tfgg484-2
create_clock -name default -period 6.734
set_clock_uncertainty 12.5% default
config_sdx -optimization_level=none
config_sdx -target=none
config_bind -effort=medium
config_schedule -effort=medium
config_schedule -relax_ii_for_timing=0
