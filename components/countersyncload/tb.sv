module tb();
  logic clk;
  logic [3:0] D, Q;
  logic LD;

  countersyncload dut (
    .D(D),
    .Q(Q),
    .LD(LD),
    .clk(clk)
  );

  initial begin
    clk = 0;
    forever #5 clk = !clk;
  end

  initial begin
    LD = 0;
    #120
    LD = 1;
    D = 4'd3;
    #10
    LD = 0;
    #120;
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
