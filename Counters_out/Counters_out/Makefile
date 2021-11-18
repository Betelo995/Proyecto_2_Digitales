#!/bin/bash
all:
	#sintetizar contador
	#yosys script_contador.ys
	#sed -i 's/contador/contador_synth/g' contador_synth.v
	#AUTOINST
	#emacs -batch testbench_counter.v -f verilog-auto -f save-buffer
	#Compilar testbench
	iverilog -o test.out testbench_counter.v
	vvp test.out
	#mostrar pulsos en gtkwave
	gtkwave counter.vcd	