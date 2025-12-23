all:
	verilator --trace --binary tb.sv dffn.sv nxt.sv out.sv statemachine.sv --top-module tb
	./obj_dir/Vtb
	gtkwave dump.vcd
