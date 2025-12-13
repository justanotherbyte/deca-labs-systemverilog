all:
	verilator --trace --binary tb.sv mux.sv
	./obj_dir/Vtb
	gtkwave dump.vcd
