module tb();
  logic [3:0] A = 4'b1101;
  logic [3:0] B = 4'b0110;
  logic [3:0] Y;
  logic [1:0] S;

  alu alu_comp ( .A(A), .B(B), .Y(Y), .S(S) );

  initial begin
    S = 2'b00;
    #1
    S = 2'b01;
    #1
    S = 2'b10;
    #1
    S = 2'b11;
    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb;