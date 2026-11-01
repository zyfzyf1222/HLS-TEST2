onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib gray8_gauss2d_3x3_0_opt

do {wave.do}

view wave
view structure
view signals

do {gray8_gauss2d_3x3_0.udo}

run -all

quit -force
