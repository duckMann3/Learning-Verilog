module add_beh_sim();
  reg signed[2:0] in0_tb, in1_tb;
  wire signed [2:0] out_tb;
  wire carry_tb, overflow_flag_tb;

  add uut(.in0(in0_tb), .in1(in1_tb), .out(out_tb), .carry(carry_tb), .overflow_flag(overflow_flag_tb));

  initial begin
    in0_tb = 3'b111;
    in1_tb = 3'b001;
    #100;
  end

  initial begin
    #100;
    $display("Adding: %d + %d", in0_tb, in1_tb);
    $display("Result: %d, Carry: %d", out_tb, carry_tb);
    #100;
    if(overflow_flag_tb == 0) begin
      $display("Overflow! %d", overflow_flag_tb);
    end
    $finish;
  end
endmodule
