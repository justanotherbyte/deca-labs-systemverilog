module tb();
  logic [3:0] A = 4'd10;
  logic [3:0] B = 4'd03;
  logic [3:0] S;
  logic SUB, COUT;

  addsub dut (
    .A(A),
    .B(B),
    .SUB(SUB),
    .S(S),
    .COUT(COUT)
  );

  initial begin
    SUB = 0;
    #1
    SUB = 1;
    #1
    A = 4'd09;
    B = 4'd01;
    SUB = 0;
    #1
    SUB = 1;
    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb;