module boolean_function_tb();
  reg a_tb;
  reg b_tb;
  reg c_tb;

  wire z_tb;

  boolean_function uut(.a(a_tb), .b(b_tb), .c(c_tb), .z(z_tb));

  initial begin
      a_tb = 0;
      b_tb = 0;
      c_tb = 0;
      #100;
      a_tb = 0;
      b_tb = 0;
      c_tb = 1;
      #100;
      a_tb = 0;
      b_tb = 1;
      c_tb = 0;
      #100;
      a_tb = 0;
      b_tb = 1;
      c_tb = 1;
      #100;
      a_tb = 1;
      b_tb = 0;
      c_tb = 0;
      #100;
      a_tb = 1;
      b_tb = 0;
      c_tb = 1;
      #100;
      a_tb = 1;
      b_tb = 1;
      c_tb = 0;
      #100;
      a_tb = 1;
      b_tb = 1;
      c_tb = 1;
      #100;
  end

  initial begin
    #100 
    $display("Result: z=%d", z_tb);
    $finish;
  end

endmodule
