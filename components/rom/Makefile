all:
	verilator --trace --binary tb.sv rom.sv
	./obj_dir/Vtb
	gtkwave dump.vcd
