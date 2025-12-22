module tb();
  logic clk;
  logic [3:0] ADDR;
  logic [7:0] DOUT;

  rom #(
    .INIT_DATA('{0: 8'd70, 1: 8'd80, 2: 8'd71, 3: 8'd65, default: 8'd0}) // FPGA
  ) dut (
    .clk(clk),
    .ADDR(ADDR),
    .DOUT(DOUT)
  );

  initial begin
    clk = 0;
    forever #5 clk = !clk;
  end

  initial begin
    for (logic [3:0] i = 0; i < 5; i++) begin
      ADDR = i;
      #10;
    end

    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
