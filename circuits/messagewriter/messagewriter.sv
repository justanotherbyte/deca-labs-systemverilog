// NOTE: This does not implement the updated counter the actual challenge
// expects.

module messagewriter(
  input logic clk,
  input logic [3:0] MSG_LEN,
  output logic [7:0] OUT
);
  logic [3:0] Q_ADDR;
  countdowntimer ctr (
    .D(MSG_LEN),
    .Q(Q_ADDR),
    .clk(clk)
  );

  rom #(
    .INIT_DATA('{0: 8'd70, 1: 8'd80, 2: 8'd71, 3: 8'd65, default: 8'd0})
  ) r (
    .ADDR(Q_ADDR),
    .DOUT(OUT),
    .clk(clk)
  );
endmodule: messagewriter
