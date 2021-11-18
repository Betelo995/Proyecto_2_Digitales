all:
	#sintetizar fifo
	#yosys script_fifo.ys
	#sed -i 's/fifo_cond/fifo_synth/g' fifo_synth.v
	#AUTOINST
	#emacs -batch testbench_fifo.v -f verilog-auto -f save-buffer
	#Compilar testbench
	iverilog -o test.out testbench_fifo.v
	vvp test.out
	#mostrar pulsos en gtkwave
	gtkwave fifo_mem.vcd	