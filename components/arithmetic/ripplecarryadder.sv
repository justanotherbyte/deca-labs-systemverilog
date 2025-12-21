module ripplecarryadder(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic CIN,
  output logic [3:0] S,
  output logic COUT
);
  logic [4:0] carry;
  assign carry[0] = CIN;

  genvar i;
  generate
    for (i = 0; i < 4; i++) begin
      fulladder fa (
        .A(A[i]),
        .B(B[i]),
        .CIN(carry[i]),
        .S(S[i]),
        .COUT(carry[i+1])
      );
    end
  endgenerate

  assign COUT = carry[4];
endmodule: ripplecarryadder