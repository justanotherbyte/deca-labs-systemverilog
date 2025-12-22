module tb();
  logic clk;
  logic [3:0] D, Q;

  countdowntimer dut (
    .clk(clk),
    .D(D),
    .Q(Q)
  );

  initial begin
    clk = 0;
    forever #5 clk = !clk;
  end

  initial begin
    D = 4'd8;
    #300;
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb 

module tb_nor();
  logic Q;
  logic [3:0] A = 4'b0101;

  nor4 n (
    .A(A),
    .OUT(Q)
  );

  initial begin
    #1;
    A = 4'b0000;
    #1
    A = 4'b0100;
    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule: tb_nor 
