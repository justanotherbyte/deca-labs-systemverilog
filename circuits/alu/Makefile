all:
	verilator --trace --binary tb.sv ../../components/gate4/gates.sv ../../components/mux4x4/mux4x4.sv ../../components/mux2x4/mux2x4.sv ../../components/mux2/mux2.sv alu.sv
	./obj_dir/Vtb
	gtkwave dump.vcd