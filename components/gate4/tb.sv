module tb();
  logic [3:0] A, B, NOT_OUT, OR_OUT, AND_OUT, XOR_OUT;

  not4 not_gate ( .A(A), .OUT(NOT_OUT) );
  or4 or_gate ( .A(A), .B(B), .OUT(OR_OUT) );
  and4 and_gate ( .A(A), .B(B), .OUT(AND_OUT) );
  xor4 xor_gate ( .A(A), .B(B), .OUT(XOR_OUT) );

  initial begin
    A = 4'b1011;
    B = 4'b0101;

    #1
    A = 4'b1111;
    B = 4'b0000;

    #1
    A = 4'b0101;
    B = 4'b1011;

    #1
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule: tb;