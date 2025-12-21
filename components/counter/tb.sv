module tb();
  logic clk;
  logic [3:0] Q;

  counter dut (
    .clk(clk),
    .Q(Q)
  );

  initial begin
    clk = 0;
    forever #5 clk = !clk;
  end

  initial begin
   #100;
   $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
