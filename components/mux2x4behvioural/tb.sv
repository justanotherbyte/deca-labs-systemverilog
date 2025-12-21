module tb();
  logic [3:0] A = 4'b0101;
  logic [3:0] B = 4'b1111;
  logic [3:0] Y;
  logic S;

  mux2x4 dut ( .A(A), .B(B), .Y(Y), .S(S) );

  initial begin
    S = 0;
    #1
    S = 1;
    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
