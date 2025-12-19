module mux4(input A, B, C, D, S0, S1, output Y);
  logic m1out, m2out;

  mux2 m1( .A(A), .B(B), .S(S0), .Y(m1out) );
  mux2 m2( .A(C), .B(D), .S(S0), .Y(m2out) );
  mux2 m3( .A(m1out), .B(m2out), .S(S1), .Y(Y) );
endmodule: mux4