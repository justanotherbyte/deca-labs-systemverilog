module aluexpanded(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic [2:0] S,
  output logic [3:0] Y
);
  logic [3:0] YA, YB, SB;
  logic [3:0] B_CONST = 4'b0001;

  alu core_alu (
    .A(A),
    .B(B),
    .S(S[1:0]),
    .Y(YA)
  );

  mux2x4 mux2_1 (
    .A(B),
    .B(B_CONST),
    .S(S[0]),
    .Y(YB)
  );

  addsub as (
    .A(A),
    .B(YB),
    .SUB(S[1]),
    .S(SB),
    .COUT()
  );

  mux2x4 mux2_2 (
    .A(YA),
    .B(SB),
    .S(S[2]),
    .Y(Y)
  );
endmodule: aluexpanded