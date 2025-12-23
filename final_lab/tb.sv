module tb();
  logic clk;
  logic C, S, V;
  logic LEDS, LEDC, M;

  statemachine dut (
    .C(C),
    .S(S),
    .V(V),
    .LEDS(LEDS),
    .LEDC(LEDC),
    .M(M),
    .clk(clk)
  );

  initial begin
    clk = 0;
    forever #1 clk = !clk;
  end

  initial begin 
    C = 1;
    S = 0;
    #2
    C = 1;
    S = 1;
    #10
    V = 1;
    #2
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb
