onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ADD_opt

do {wave.do}

view wave
view structure
view signals

do {ADD.udo}

run -all

quit -force
