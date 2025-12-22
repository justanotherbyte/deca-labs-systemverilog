module countersyncload(
  input logic [3:0] D,
  input logic LD,
  input logic clk,
  output logic [3:0] Q
);
  logic [3:0] SA, Y;

  ripplecarryadder rca (
    .A(Q),
    .B(4'd1),
    .CIN(0),
    .S(SA),
    .COUT()
  );

  mux2x4 mux (
    .A(SA),
    .B(D),
    .S(LD),
    .Y(Y)
  );

  dff4 dff (
    .D(Y),
    .clk(clk),
    .Q(Q)
  );

endmodule: countersyncload
