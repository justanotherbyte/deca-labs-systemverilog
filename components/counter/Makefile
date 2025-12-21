all:
	verilator --trace --binary tb.sv ../arithmetic/*.sv ../dff4/dff4.sv counter.sv --top-module tb
	./obj_dir/Vtb
	gtkwave dump.vcd
