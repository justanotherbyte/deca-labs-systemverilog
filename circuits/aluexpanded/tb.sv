module tb();
  logic [3:0] A = 4'b0110;
  logic [3:0] B = 4'b1101;
  logic [3:0] Y;
  logic [2:0] S;

  aluexpanded dut (
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
  );

  initial begin
    S = 3'b000; // NOT A
    #1
    S = 3'b001; // Bitwise A + B
    #1
    S = 3'b010; // Bitwise AB
    #1
    S = 3'b011; // Bitwise A ^ B
    #1
    A = 4'd9;
    B = 4'd3;
    S = 3'b100; // Arithmetic A + B
    #1
    S = 3'b101; // Arithmetic A + 1
    #1
    S = 3'b110; // Arithmetic A - B
    #1
    S = 3'b111; // Arithmetic A - 1
    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb