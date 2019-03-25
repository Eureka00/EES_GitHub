onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib car_opt

do {wave.do}

view wave
view structure
view signals

do {car.udo}

run -all

quit -force
