module halfadder(
  input logic A, B,
  output logic S, C
);
  assign S = A ^ B;
  assign C = A & B;
endmodule: halfadder;