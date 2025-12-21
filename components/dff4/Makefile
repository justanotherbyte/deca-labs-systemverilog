all:
	verilator --trace --binary tb.sv dff4.sv --top-module tb
	./obj_dir/Vtb
	gtkwave dump.vcd
