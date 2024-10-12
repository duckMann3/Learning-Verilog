module concat2(
  input [1:0] a,
  input [2:0] b,
  output [4:0] out1,
  output [3:0] out2
    );
  
  assign out1 = {a, b};
  assign out2 = {a[1], b, 2'b01, b[2]};

endmodule 

module concat2_tb;
  reg [1:0] a;
  reg [2:0] b;
  wire [4:0] out1;
  wire [3:0] out2;

  concat2 u0 (a,b,out1,out2);

  initial begin
    a <= 0;
    b <= 0;

    $monitor("[%0t] a=%b b=%b, out1=%b out2=%b", $time, a, b, out1,out2);

    #10 a <=3;
    #5  b <=5;
    #10 a <=2;
    #5  b <=1;

    #10 $finish;
  end
endmodule
