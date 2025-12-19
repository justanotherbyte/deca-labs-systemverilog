module tb();
  logic A, B, C, D, S0, S1, Y;

  mux4 m ( .A(A), .B(B), .C(C), .D(D), .S0(S0), .S1(S1), .Y(Y) );

  initial begin
    A = 0;
    B = 1;
    C = 1;
    D = 0;

    #1
    // S = 00
    S0 = 0;
    S1 = 0;

    #1
    // S = 01
    S0 = 1;
    S1 = 0;

    #1
    // S = 10
    S0 = 0;
    S1 = 1;

    #1
    // S = 11
    S0 = 1;
    S1 = 1;

    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule: tb