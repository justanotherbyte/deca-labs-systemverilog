module nxt(
  input logic [1:0] STATE,
  input logic C,
  input logic S,
  input logic V,
  output logic [1:0] NEXT
);
  // 1 0
  // C S

  logic Q1 = STATE[1];
  logic Q0 = STATE[0];

  assign NEXT[1] = (C & !Q1) | (Q1 & !Q0) | (C & S & !V);
  assign NEXT[0] = (Q0 & !Q1) | (S & !Q0) | (C & S & !V);
endmodule: nxt
