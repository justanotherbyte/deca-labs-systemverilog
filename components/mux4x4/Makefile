all:
	verilator --trace --binary tb.sv ../mux2x4/mux2x4.sv ../mux2/mux2.sv mux4x4.sv
	./obj_dir/Vtb
	gtkwave dump.vcd