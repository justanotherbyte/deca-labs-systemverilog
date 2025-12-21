all:
	verilator --trace --binary tb.sv mux2x4.sv
	./obj_dir/Vtb
	gtkwave dump.vcd