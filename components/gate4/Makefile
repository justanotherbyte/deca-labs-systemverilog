all:
	verilator --trace --binary tb.sv gates.sv
	./obj_dir/Vtb
	gtkwave dump.vcd