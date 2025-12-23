module tb();
  logic clk;
  logic [7:0] DOUT;
  
  messagewriter dut (
    .MSG_LEN(4'd4),
    .OUT(DOUT),
    .clk(clk)
  );

  initial begin
    clk = 0;
    forever #5 clk = !clk;
  end

  initial begin
    #100
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
