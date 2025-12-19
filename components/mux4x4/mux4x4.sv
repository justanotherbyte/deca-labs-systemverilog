module mux4x4(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic [3:0] C,
  input logic [3:0] D,
  input logic [1:0] S,
  output logic [3:0] Y
);
  logic [3:0] A2, B2;

  mux2x4 mux1 ( .A(A), .B(B), .S(S[0]), .Y(A2) );
  mux2x4 mux2 ( .A(C), .B(D), .S(S[0]), .Y(B2) );
  mux2x4 mux3 ( .A(A2), .B(B2), .S(S[1]), .Y(Y) );
endmodule: mux4x4;