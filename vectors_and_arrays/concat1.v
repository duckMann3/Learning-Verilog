module concat();
  wire one_bit_w; 		// 1-bit(scalar) 
  wire [1:0] two_bit_w; 	// 2-bit(vector) 
  wire [2:0] three_bit_w; 	// 3-bit(vector) 

  assign one_bit_w = 1'b1; 	 // 1
  assign two_bit_w = 2'b10;	 // 10

  assign three_bit_w = {1'b0, one_bit_w, two_bit_w[1]};

  initial begin
    $display("%b", three_bit_w); // expected: 010 
  end

endmodule
