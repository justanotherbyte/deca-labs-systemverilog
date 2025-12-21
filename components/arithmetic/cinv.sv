module cinv(
  input logic [3:0] A,
  input logic C,
  output logic [3:0] Y
);
  genvar i;
  generate
    for (i = 0; i < 4; i++) begin
      assign Y[i] = A[i] ^ C;
    end
  endgenerate
endmodule: cinv