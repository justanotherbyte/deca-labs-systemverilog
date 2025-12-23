all:
	verilator --trace --binary --top-module tb tb.sv ../../components/arithmetic/*.sv ../../components/dff4/dff4.sv ../../components/mux2x4/mux2x4.sv ../../components/mux2/mux2.sv ../countdowntimer/countdowntimer.sv ../../components/rom/rom.sv messagewriter.sv
	./obj_dir/Vtb
	gtkwave dump.vcd
