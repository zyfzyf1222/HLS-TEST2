-makelib xcelium_lib/xil_defaultlib -sv \
  "F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/hdl/verilog/rgb2gray_mac_mulacud.v" \
  "../../../ipstatic/hdl/verilog/rgb2gray_mac_muladEe.v" \
  "../../../ipstatic/hdl/verilog/rgb2gray_mul_mul_bkb.v" \
  "../../../ipstatic/hdl/verilog/rgb2gray.v" \
  "../../../../hdmi_loop.srcs/sources_1/ip/rgb2gray_0/sim/rgb2gray_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

