onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sharpen3x3_0_opt

do {wave.do}

view wave
view structure
view signals

do {sharpen3x3_0.udo}

run -all

quit -force
