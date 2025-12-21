module addsub(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic SUB,
  output logic [3:0] S,
  output logic COUT
);
  logic [3:0] YB;
  cinv inverter (
    .A(B),
    .C(SUB),
    .Y(YB)
  );

  ripplecarryadder fa4 (
    .A(A),
    .B(YB),
    .CIN(SUB),
    .COUT(COUT),
    .S(S)
  );
endmodule: addsub