module counter(
  input clk,                    // Delcare input port for clock to allow counter to coutn up
  input reset,                   // Declare input port for reset to allow the counter to be reset to 0 when required
  output reg[3:0] out           // Declare 4-bit output port to get the counter values
);

  always@(posedge clk) begin
    if(!reset)
        out <=0 ;
    else
      out <= out + 1;
  end
endmodule

