module dff4(
  input logic clk,
  input logic [3:0] D,
  output logic [3:0] Q
);
  always_ff @(posedge clk) begin
    for (int i = 0; i < 4; i++) begin
      Q[i] <= D[i];
    end
  end
endmodule: dff4
