module prob1(input wire a, b, c, d, output wire out);
  assign out = (a||d) && (!d&&b&&c);
endmodule

module prob1_tb();
  reg a, b, c, d;
  wire out;

  prob1 prob1_test(a,b,c,d,out);

  initial begin
    $monitor(a,b,c,d,out); 
    for(integer i=0; i<16; i=i+1) begin
        {a,b,c,d} = i;
        #1;
      end
  end
endmodule
