module mux2(input S, A, B, output Y);
  assign Y = S ? B : A;
endmodule: mux2