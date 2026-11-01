vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../ipstatic/hdl/verilog/sharpen3x3_am_addeOg.v" \
"../../../ipstatic/hdl/verilog/sharpen3x3_wlb_lbbkb.v" \
"../../../ipstatic/hdl/verilog/sharpen3x3_wlb_lbdEe.v" \
"../../../ipstatic/hdl/verilog/sharpen3x3.v" \
"../../../../hdmi_loop.srcs/sources_1/ip/sharpen3x3_0/sim/sharpen3x3_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

