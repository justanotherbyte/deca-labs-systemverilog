module statemachine(
  input logic clk,
  input logic C,
  input logic S,
  input logic V,
  output logic LEDS,
  output logic LEDC,
  output logic M
);
  logic [1:0] STATE, NEXT_D;

  nxt n (
    .STATE(STATE),
    .C(C),
    .S(S),
    .V(V),
    .NEXT(NEXT_D)
  );

  dffn #(
    .bits(2)
  ) dff2 (
    .D(NEXT_D),
    .Q(STATE),
    .clk(clk)
  );

  out o (
    .STATE(STATE),
    .LEDS(LEDS),
    .LEDC(LEDC),
    .M(M)
  );
endmodule: statemachine
