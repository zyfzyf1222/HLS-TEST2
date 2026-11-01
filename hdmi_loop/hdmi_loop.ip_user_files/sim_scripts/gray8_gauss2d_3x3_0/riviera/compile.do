vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/gray8_gauss2d_3x3bkb.v" \
"../../../ipstatic/hdl/verilog/gray8_gauss2d_3x3dEe.v" \
"../../../ipstatic/hdl/verilog/gray8_gauss2d_3x3.v" \
"../../../../hdmi_loop.srcs/sources_1/ip/gray8_gauss2d_3x3_0/sim/gray8_gauss2d_3x3_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

