module mux2x4(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic S,
  output logic [3:0] Y
);

  genvar i;
  generate
    for (i = 0; i < 4; i++) begin : gen_muxes
      mux2 mux(
        .A(A[i]),
        .B(B[i]),
        .S(S),
        .Y(Y[i])
      );
    end
  endgenerate

endmodule: mux2x4