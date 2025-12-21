all:
	verilator --trace --binary tb.sv halfadder.sv fulladder.sv ripplecarryadder.sv cinv.sv addsub.sv
	./obj_dir/Vtb
	gtkwave dump.vcd