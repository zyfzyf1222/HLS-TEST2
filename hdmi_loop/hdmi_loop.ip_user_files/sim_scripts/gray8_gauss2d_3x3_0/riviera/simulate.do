onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+gray8_gauss2d_3x3_0 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gray8_gauss2d_3x3_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {gray8_gauss2d_3x3_0.udo}

run -all

endsim

quit -force
