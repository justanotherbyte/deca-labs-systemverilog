module mux(input S, A, B, output Y);
  assign Y = (!S & A) || (S & B);
endmodule: mux
