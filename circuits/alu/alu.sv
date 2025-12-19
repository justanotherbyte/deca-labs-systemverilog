module alu(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic [1:0] S,
  output logic [3:0] Y
);
  logic [3:0] MUX_A, MUX_B, MUX_C, MUX_D;

  not4 not_inp ( .A(A), .OUT(MUX_A) );
  or4 or_inp ( .A(A), .B(B), .OUT(MUX_B) );
  and4 and_inp ( .A(A), .B(B), .OUT(MUX_C) );
  xor4 xor_inp ( .A(A), .B(B), .OUT(MUX_D) );

  mux4x4 mux ( .A(MUX_A), .B(MUX_B), .C(MUX_C), .D(MUX_D), .S(S), .Y(Y) );
endmodule: alu;