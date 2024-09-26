module tb_counter;
  reg clk_tb;
  reg reset_tb;
  wire [3:0] out_tb;

  counter c0(.clk(clk_tb), .reset(reset_tb), .out(out_tb));

  always #5 clk = ~clk;

  initial begin
    clk <= 0;
    reset <= 0;
    
    #20 reset <= 1;
    #80 reset <= 0;
    #50 reset <= 1;

    #20 $finish;

  end
endmodule
