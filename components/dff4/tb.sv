module tb();
  logic [3:0] D, Q;
  logic clk;

  dff4 dut(
    .D(D),
    .Q(Q),
    .clk(clk)
  );

  initial begin
    clk = 0;
    forever #5 clk = !clk;
  end
  
  initial begin
    D = 4'b0110;
    #6
    D = 4'b0001;
    #12;
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
