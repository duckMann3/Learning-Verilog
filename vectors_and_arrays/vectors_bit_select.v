module bit_select;
  wire one_bit_w;	       // 1-bit(scalar) 
  wire [1:0] two_bit_w;	       // 2-bit(vector)
  wire [2:0] three_bit_w;      // 3-bit(vector)
  wire [2:0] vectorTest;

  wire [15:0] sixteen_bit_bus; // 16-bit(vector)

  assign one_bit_w = 1'b0;
  assign tow_bit_w = 2'b01;
  assign one_bit_w = 1'b0;
  
  assign three_bit_w[0] = 1'b1;
  assign three_bit_w[1] = 1'b1;
  assign three_bit_w[2] = 1'b0;

  assign three_bit_w = 3'b011;

  assign sixteen_bit_bus [7:0] = 8'h89;
  assign sixteen_bit_bus [15:8] = 8'ha1;

  assign vectorTest = 3'b010;
  assign vectorTest[2] = 1'b1;

  initial begin
    $display("%b", sixteen_bit_bus); 
    $display("%b", three_bit_w);
    $display("%b", vectorTest);
  end
  
endmodule
