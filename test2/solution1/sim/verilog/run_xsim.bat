
set PATH=
call F:/vivado/Vivado/2018.3/bin/xelab xil_defaultlib.apatb_gray8_gauss2d_3x3_top glbl -prj gray8_gauss2d_3x3.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "F:/vivado/Vivado/2018.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s gray8_gauss2d_3x3 
call F:/vivado/Vivado/2018.3/bin/xsim --noieeewarnings gray8_gauss2d_3x3 -tclbatch gray8_gauss2d_3x3.tcl

