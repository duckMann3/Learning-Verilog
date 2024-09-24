/* Half Adder:
*  a | b | Sum | Carry 
* ---------------------
*  0 | 0 |  0  |   0 
*  0 | 1 |  1  |   0 
*  1 | 0 |  1  |   0
*  1 | 1 |  0  |   1
*
*  Sum Formula: a ^ b
*  Carry Formula: a & b
*/

module half_adder(input a, input b, output c);

wire sum_formula; 
wire carry_formula; 
assign sum_formula = a ^ b;  
assign carry_formula = a & b;

assign c = 
