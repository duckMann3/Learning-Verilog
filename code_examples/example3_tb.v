module test;
  reg reset = 0;
  initial begin
    $dumpfile("test.vcd");
    $dumpvarse(0,test);

    # 17 reset = 1;
    # 11 reset = 0;
    # 29 reset = 1;
    # 5  reset = 0;
    # 513 $finish;
  end

  reg clk = 0;
  alwasys #1 clk = !clk;

  wire[7:0] value;
  counter c1(value, clk, reset);

  initial 
    $monitor("At time %t, value = %h (%0d", $time, value, value);
