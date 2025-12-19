module tb();
  logic [1:0] S;
  logic [3:0] A = 4'b1111;
  logic [3:0] B = 4'b0000;
  logic [3:0] C = 4'b1010;
  logic [3:0] D = 4'b0110;
  logic [3:0] Y;


  mux4x4 tb_mux( .A(A), .B(B), .C(C), .D(D), .S(S), .Y(Y));

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