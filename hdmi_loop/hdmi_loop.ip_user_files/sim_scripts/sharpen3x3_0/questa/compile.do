vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"F:/vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../ipstatic/hdl/verilog/sharpen3x3_am_addeOg.v" \
"../../../ipstatic/hdl/verilog/sharpen3x3_wlb_lbbkb.v" \
"../../../ipstatic/hdl/verilog/sharpen3x3_wlb_lbdEe.v" \
"../../../ipstatic/hdl/verilog/sharpen3x3.v" \
"../../../../hdmi_loop.srcs/sources_1/ip/sharpen3x3_0/sim/sharpen3x3_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

