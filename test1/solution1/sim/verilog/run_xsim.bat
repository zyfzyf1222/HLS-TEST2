
set PATH=
call F:/vivado/Vivado/2018.3/bin/xelab xil_defaultlib.apatb_rgb2gray_top glbl -prj rgb2gray.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "F:/vivado/Vivado/2018.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s rgb2gray 
call F:/vivado/Vivado/2018.3/bin/xsim --noieeewarnings rgb2gray -tclbatch rgb2gray.tcl

