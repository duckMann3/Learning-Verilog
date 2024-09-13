module add_beh_sim(
);
  reg[2:0] in0_tb;
  reg[2:0] in1_tb;

  wire [2:0] out_tb;
  wire carry_tb;

  add uut(.in0(in0_tb), .in1(in1_tb), .out(out_tb), .carry(carry_tb));


  initial begin
  in0_tb = 3'b000;
  in1_tb = 3'b001;
  #100;
  end

endmodule
