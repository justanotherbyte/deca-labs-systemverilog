module nor4(
  input logic [3:0] A,
  output logic OUT
);
  assign OUT = !(A[0] | A[1] | A[2] | A[3]);
endmodule: nor4

module countdowntimer(
  input clk,
  input logic [3:0] D,
  output logic [3:0] Q
);
  logic CONTROL;
  logic [3:0] YD, SA;

  ripplecarryadder rca (
    .A(Q),
    .B(4'b1111),
    .CIN(0),
    .S(SA),
    .COUT()
  );

  mux2x4 mux (
    .A(SA),
    .B(D),
    .S(CONTROL),
    .Y(YD)
  );

  dff4 dff (
    .D(YD),
    .Q(Q),
    .clk(clk)
  );

  nor4 n (
    .A(Q),
    .OUT(CONTROL)
  );
endmodule: countdowntimer
