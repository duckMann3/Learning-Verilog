module boolean_function(input a, input b, input c, output z);

  wire p;
  wire q;

  assign p = a & ~b;
  assign q = ~a & c;
  assign z = p | q;
endmodule


