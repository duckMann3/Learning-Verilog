module add(
  output [2:0] out,
  input [2:0] in0, in1,
  output carry, overflow_flag
);

  wire [5:0] temp_out;

  assign temp_out = in0 + in1;
  assign out = temp_out[2:0];
  assign carry = temp_out[3];

  assign overflow_flag = carry & (in0[0] ^ in1[0]);

  /* How 'overflow_flag' should work:
  * NOTE: Carry
  * 1 + 1 = 0, carry 1
  * 1 + 0 or 0 + 1 = 1, carry 0
  * 1 + 1 + 1 = 1, carry 1
  * 1 + 1 + 1 + 1 = 1
  *
  * using 3-bit binary, unsinged numbers...
  * 111 + 001 = ?
  *
  * Carry:    1 1 1 0
  * Input1:     1 1 1 (7)
  * Input2: +   0 0 1 (1)
  * ------------------
  * Result:   1|0 0 0
  *
  * using 4-bit binary, signed numbers...
  * 111 + 001 = ?
  *
  * Carry:    0 1 1 1 0
  * Input1:     0 1 1 1 (7)
  * Input2: +   0 0 0 1 (1)
  * --------------------
  * Result:   0|1 0 0 0
  *
  * using 3-bit binary, singed numbers...
  * 111 + 001 = ?
  *
  * Carry:    0 1 1
  * Input1:     1 1 1 (-1)
  * Input2: +   0 0 1 (1) -> Convert: 101; Invert: 010 + 001 = 011 aka -3
  * ------------------
    * Result: 1|0 0 0 -> Convert: 100; Invert: 011 + 001 = 100 aka -4 
    *                 -> Convert: 1100; Invert: 0011 + 0001 = 0100 aka -4
  * */


endmodule
