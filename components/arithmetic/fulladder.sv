module fulladder(
  input logic A, B, CIN,
  output logic COUT, S
);
  logic COUT1, COUT2, SUM1;

  halfadder ha1 ( .A(A), .B(B), .C(COUT1), .S(SUM1) );
  halfadder ha2 ( .A(SUM1), .B(CIN), .C(COUT2), .S(S) );

  assign COUT = COUT1 | COUT2;
endmodule: fulladder;