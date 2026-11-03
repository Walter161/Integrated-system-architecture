module mult (
	input [7:0] A,
	input [7:0] X,
	output [15:0] result
);


wire [8:0] MBE0_out, MBE1_out, MBE2_out, MBE3_out, MBE4_out;
wire S0, S1, S2 , S3, S4;
wire [1:0] unconn;

MBE MBE_0(
	.X ({X[1:0], 1'b0}),
	.A (A),
	.s (S0),
	.res (MBE0_out)
);

MBE MBE_1(
	.X (X[3:1]),
	.A (A),
	.s (S1),
	.res (MBE1_out)
);

MBE MBE_2(
	.X (X[5:3]),
	.A (A),
	.s (S2),
	.res (MBE2_out)
);

MBE MBE_3(
	.X (X[7:5]),
	.A (A),
	.s (S3),
	.res (MBE3_out)
);

MBE MBE_4(
	.X ({2'b00, X[7]}),
	.A (A),
	.s (S4),
	.res (MBE4_out)
);

wallace_tree WT(
	MBE0_out, 
	MBE1_out, 
	MBE2_out, 
	MBE3_out,
	MBE4_out[7:0],
	S0,
	S1,
	S2,
	S3,
	{unconn,result}
);

endmodule
