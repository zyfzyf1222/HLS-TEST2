-makelib ies_lib/xil_defaultlib -sv \
  "F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../ipstatic/hdl/verilog/gray8_gauss2d_3x3bkb.v" \
  "../../../ipstatic/hdl/verilog/gray8_gauss2d_3x3dEe.v" \
  "../../../ipstatic/hdl/verilog/gray8_gauss2d_3x3.v" \
  "../../../../hdmi_loop.srcs/sources_1/ip/gray8_gauss2d_3x3_0/sim/gray8_gauss2d_3x3_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

