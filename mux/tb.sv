module tb();
  logic S, A, B, Y;

  mux m ( .A(A), .B(B), .S(S), .Y(Y) );


  initial begin
    A = 0;
    B = 1;

    #1
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

endmodule: tb;
