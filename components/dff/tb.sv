module tb();
  logic clk;
  logic D, Q;

  dff dut (
    .clk(clk),
    .D(D),
    .Q(Q)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    D = 0;
    #1
    D = 1;
    #10
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb