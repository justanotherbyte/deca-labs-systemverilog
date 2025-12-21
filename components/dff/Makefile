all:
	verilator --trace --binary tb.sv dff.sv
	./obj_dir/Vtb
	gtkwave dump.vcd