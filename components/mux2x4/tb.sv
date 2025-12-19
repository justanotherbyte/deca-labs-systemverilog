module tb();
  logic [3:0] A, B, Y;
  logic S;

  mux2x4 m(
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
  );

  initial begin
    A = 4'b0001;
    B = 4'b1110;
    S = 0;

    #1
    S = 1;

    #1
    A = 4'b0010;
    B = 4'b1101;
    S = 0;

    #1
    S = 1;

    #1
    A = 4'b0100;
    B = 4'b1011;
    S = 0;

    #1
    S = 1;

    #1
    A = 4'b1000;
    B = 4'b0111;
    S = 0;

    #1
    S = 1;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb