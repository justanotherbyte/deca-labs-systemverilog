all:
	verilator --trace --binary tb.sv ../arithmetic/*.sv ../mux2x4/mux2x4.sv ../mux2/mux2.sv ../dff4/dff4.sv countersyncload.sv --top-module tb
	./obj_dir/Vtb
	gtkwave dump.vcd

