// for wallace tree only
module rca_wt (
	input [14:0] A,
	input [14:0] B,
	output [14:0] Y
);

wire carry0_t, carry1_t, carry2_t,carry3_t, carry4_t, carry5_t,carry6_t, carry7_t, carry8_t,carry9_t, carry10_t, carry11_t, carry12_t, carry13_t;

wire pippo;

half_adder HA_0 (A[0],	 B[0], Y[0],	 carry0_t);
half_adder HA_1 (A[1],	 carry0_t, Y[1],	 carry1_t);
full_adder FA_0 (A[2],	 B[2], carry1_t, Y[2], carry2_t);
full_adder FA_1 (A[3],	 B[3], carry2_t, Y[3], carry3_t);
full_adder FA_2 (A[4],	 B[4], carry3_t, Y[4], carry4_t);
full_adder FA_3 (A[5],	 B[5], carry4_t, Y[5], carry5_t);
full_adder FA_4 (A[6],	 B[6], carry5_t, Y[6], carry6_t);
full_adder FA_5 (A[7],	 B[7], carry6_t, Y[7], carry7_t);
full_adder FA_6 (A[8],	 B[8], carry7_t, Y[8], carry8_t);
full_adder FA_7 (A[9],	 B[9], carry8_t, Y[9], carry9_t);
full_adder FA_8 (A[10],	B[10], carry9_t, Y[10], carry10_t);
full_adder FA_9 (A[11],	B[11], carry10_t, Y[11], carry11_t);
full_adder FA_10 (A[12], B[12], carry11_t, Y[12], carry12_t);

// next outs will be unused in the end
full_adder FA_11 (A[13], B[13], carry12_t, Y[13], carry13_t);
half_adder HA_2 (A[14], carry13_t, Y[14], pippo);

endmodule
