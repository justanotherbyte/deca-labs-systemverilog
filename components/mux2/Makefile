all:
	verilator --trace --binary tb.sv mux2.sv
	./obj_dir/Vtb
	gtkwave dump.vcd
