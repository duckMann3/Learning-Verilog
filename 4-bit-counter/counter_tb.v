module counter_tb;
  reg clk_tb;
  reg reset_tb;
  wire [3:0] out_tb;

  counter c0(.clk(clk_tb), .reset(reset_tb), .out(out_tb));

  always #5 clk_tb = ~clk_tb;

  initial begin

    clk_tb <= 0;
    reset_tb <= 0;
    
    #100 $display("[T=%0tns] clk=%d, reset=%d, out=%h", $realtime, clk_tb, reset_tb, out_tb);
    #20 reset_tb <= 1;
    #80 reset_tb <= 0;
    #50 reset_tb <= 1;

    #20 $finish;
    

  end
endmodule
