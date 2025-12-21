module counter(
  input logic clk,
  output logic [3:0] Q
);
  logic [3:0] SD;
  
  ripplecarryadder rca (
    .A(Q),
    .B(4'd1),
    .CIN(1'd0),
    .S(SD),
    .COUT()
  );
  
  dff4 dff (
    .D(SD),
    .Q(Q),
    .clk(clk)
  );
endmodule: counter
