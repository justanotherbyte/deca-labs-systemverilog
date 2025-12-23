module out (
  input logic [1:0] STATE,
  output logic LEDS,
  output logic LEDC,
  output logic M
);
  logic C = STATE[1];
  logic S = STATE[0];

  assign LEDS = !S;
  assign LEDC = !C;
  assign M = C & S;
endmodule: out
