module dffn #(
  parameter int bits
)(
  input logic clk,
  input logic [bits-1:0] D,
  output logic [bits-1:0] Q
);

  always_ff @(posedge clk) begin : update_state
    Q <= D;
  end

endmodule: dffn
