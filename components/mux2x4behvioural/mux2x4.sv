module mux2x4(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic S,
  output logic [3:0] Y
);
  always_comb begin : multiplex
    unique if (S == 0) begin
      assign Y = A;
    end else begin
      assign Y = B;
    end
  end
endmodule: mux2x4