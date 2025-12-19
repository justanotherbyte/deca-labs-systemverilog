module not4(
  input logic [3:0] A,
  output logic [3:0] OUT
);
  assign OUT = ~A;
endmodule: not4;

module or4(
  input logic [3:0] A,
  input logic [3:0] B,
  output logic [3:0] OUT
);
  assign OUT = A | B;
endmodule: or4;

module and4(
  input logic [3:0] A,
  input logic [3:0] B,
  output logic [3:0] OUT
);
  assign OUT = A & B;
endmodule: and4;

module xor4(
  input logic [3:0] A,
  input logic [3:0] B,
  output logic [3:0] OUT
);
  assign OUT = A ^ B;
endmodule: xor4;