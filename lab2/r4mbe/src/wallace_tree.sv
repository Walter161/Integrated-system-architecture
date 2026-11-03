module wallace_tree (
	input [8:0] MBE0_out,	
	input [8:0] MBE1_out,	
	input [8:0] MBE2_out,	
	input [8:0] MBE3_out,
	input [7:0] MBE4_out,	

	// +1 to add if 2 complements and for sign extension
	input S0, 
	input S1,
	input S2,
	input S3,	

	// IS IT 15 BITS?
	output [17:0] result
);


// LAYER_0 --internal wires
wire layer0_HA0_c_out;
wire layer0_HA1_s_out,  layer0_HA1_c_out;
wire layer0_HA2_s_out,  layer0_HA2_c_out;
wire layer0_HA3_s_out,  layer0_HA3_c_out;
wire layer0_HA4_s_out,  layer0_HA4_c_out;
wire layer0_HA5_s_out,  layer0_HA5_c_out;
wire layer0_HA6_s_out,  layer0_HA6_c_out;
wire layer0_HA7_s_out,  layer0_HA7_c_out;

wire layer0_FA0_s_out, layer0_FA0_c_out;
wire layer0_FA1_s_out, layer0_FA1_c_out;
wire layer0_FA2_s_out, layer0_FA2_c_out;
wire layer0_FA3_s_out, layer0_FA3_c_out;
wire layer0_FA4_s_out, layer0_FA4_c_out;
wire layer0_FA5_s_out, layer0_FA5_c_out;
wire layer0_FA6_s_out, layer0_FA6_c_out;
wire layer0_FA7_s_out, layer0_FA7_c_out;
wire layer0_FA8_s_out, layer0_FA8_c_out;
wire layer0_FA9_s_out, layer0_FA9_c_out;
wire layer0_FA10_s_out, layer0_FA10_c_out;
wire layer0_FA11_s_out, layer0_FA11_c_out;

// LAYER_1 --internal wires
wire layer1_HA0_c_out;
wire layer1_HA1_s_out, layer1_HA1_c_out;
wire layer1_HA2_s_out, layer1_HA2_c_out;
wire layer1_HA3_s_out, layer1_HA3_c_out;
wire layer1_HA4_s_out, layer1_HA4_c_out;
wire layer1_HA5_s_out, layer1_HA5_c_out;

wire layer1_FA0_s_out, layer1_FA0_c_out;
wire layer1_FA1_s_out, layer1_FA1_c_out;
wire layer1_FA2_s_out, layer1_FA2_c_out;
wire layer1_FA3_s_out, layer1_FA3_c_out;
wire layer1_FA4_s_out, layer1_FA4_c_out;
wire layer1_FA5_s_out, layer1_FA5_c_out;
wire layer1_FA6_s_out, layer1_FA6_c_out;
wire layer1_FA7_s_out, layer1_FA7_c_out;

// LAYER_2 --internal wires
wire layer2_HA0_c_out; 
wire layer2_HA1_s_out, layer2_HA1_c_out;
wire layer2_HA2_s_out, layer2_HA2_c_out;
wire layer2_HA3_s_out, layer2_HA3_c_out;
wire layer2_HA4_s_out, layer2_HA4_c_out;
wire layer2_HA5_s_out, layer2_HA5_c_out;
wire layer2_HA6_s_out, layer2_HA6_c_out;
wire layer2_HA7_s_out, layer2_HA7_c_out;
wire layer2_HA8_s_out, layer2_HA8_c_out;

wire layer2_FA0_s_out, layer2_FA0_c_out;
wire layer2_FA1_s_out, layer2_FA1_c_out;
wire layer2_FA2_s_out, layer2_FA2_c_out;
wire layer2_FA3_s_out, layer2_FA3_c_out;
wire layer2_FA4_s_out, layer2_FA4_c_out;



// for every line of code inside layer corresponds a column in wallace tree

// LAYER_0 : begin 
	half_adder HA0_L0 (MBE0_out[0],		S0,						result[0], 		layer0_HA0_c_out);	
	// no op
	full_adder FA0_L0 (MBE0_out[2],		MBE1_out[0],		S1,			layer0_FA0_s_out,	layer0_FA0_c_out);	
	half_adder HA1_L0 (MBE0_out[3],		MBE1_out[1],					layer0_HA1_s_out, 	layer0_HA1_c_out);	
	full_adder FA1_L0 (MBE0_out[4],		MBE1_out[2],		MBE2_out[0], 		layer0_FA1_s_out,	layer0_FA1_c_out);	
	full_adder FA2_L0 (MBE0_out[5],		MBE1_out[3],		MBE2_out[1], 		layer0_FA2_s_out,	layer0_FA2_c_out);
	full_adder FA3_L0 (MBE0_out[6],		MBE1_out[4],		MBE2_out[2], 		layer0_FA3_s_out,	layer0_FA3_c_out);	
        half_adder HA2_L0 (S3,			MBE3_out[0],					layer0_HA2_s_out, 	layer0_HA2_c_out);
	full_adder FA4_L0 (MBE0_out[7],		MBE1_out[5],		MBE2_out[3],     	layer0_FA4_s_out, 	layer0_FA4_c_out);	
	full_adder FA5_L0 (MBE0_out[8],		MBE1_out[6],		MBE2_out[4], 		layer0_FA5_s_out, 	layer0_FA5_c_out);	
 	half_adder HA3_L0 (MBE3_out[2],		MBE4_out[0],					layer0_HA3_s_out, 	layer0_HA3_c_out);	 
        full_adder FA6_L0 (S0,			MBE1_out[7],		MBE2_out[5], 		layer0_FA6_s_out, 	layer0_FA6_c_out);	
 	half_adder HA4_L0 (MBE3_out[3],		MBE4_out[1],					layer0_HA4_s_out, 	layer0_HA4_c_out);		
 	full_adder FA7_L0 (S0,			MBE1_out[8],		MBE2_out[6], 		layer0_FA7_s_out, 	layer0_FA7_c_out);		
 	half_adder HA5_L0 (MBE3_out[4],		MBE4_out[2],					layer0_HA5_s_out, 	layer0_HA5_c_out);	
	full_adder FA8_L0 (~S0,			~S1,			MBE2_out[7], 		layer0_FA8_s_out, 	layer0_FA8_c_out);	
 	half_adder HA6_L0 (MBE3_out[5],		MBE4_out[3],					layer0_HA6_s_out, 	layer0_HA6_c_out);	
	full_adder FA9_L0 (1'b1,		MBE2_out[8],		MBE3_out[6], 		layer0_FA9_s_out, 	layer0_FA9_c_out);
	full_adder FA10_L0(~S2,			MBE3_out[7],		MBE4_out[5], 		layer0_FA10_s_out, 	layer0_FA10_c_out);
	full_adder FA11_L0(1'b1,		MBE3_out[8],		MBE4_out[6], 		layer0_FA11_s_out,	layer0_FA11_c_out);
 	half_adder HA7_L0 (~S3,			MBE4_out[7],					layer0_HA7_s_out, 	layer0_HA7_c_out);	
	
// end LAYER_0

// LAYER_1: begin
	// no op
	half_adder HA0_L1 (layer0_HA0_c_out, 	MBE0_out[1], 					result[1], 		layer1_HA0_c_out);
	// no op
	half_adder HA1_L1 (layer0_FA0_c_out,	layer0_HA1_s_out, 				layer1_HA1_s_out, 	layer1_HA1_c_out);
	full_adder FA0_L1 (layer0_HA1_c_out,	layer0_FA1_s_out, 	S2,               	layer1_FA0_s_out, 	layer1_FA0_c_out);
	half_adder HA2_L1 (layer0_FA1_c_out,	layer0_FA2_s_out, 				layer1_HA2_s_out, 	layer1_HA2_c_out);
	full_adder FA1_L1 (layer0_FA2_c_out,    layer0_FA3_s_out, 	layer0_HA2_s_out ,	layer1_FA1_s_out, 	layer1_FA1_c_out);
	full_adder FA2_L1 (layer0_FA3_c_out,    layer0_HA2_c_out, 	layer0_FA4_s_out ,	layer1_FA2_s_out, 	layer1_FA2_c_out);
	full_adder FA3_L1 (layer0_FA4_c_out,    layer0_FA5_s_out, 	layer0_HA3_s_out ,	layer1_FA3_s_out, 	layer1_FA3_c_out);
	full_adder FA4_L1 (layer0_FA5_c_out,    layer0_HA3_c_out,	layer0_FA6_s_out ,	layer1_FA4_s_out, 	layer1_FA4_c_out);
	full_adder FA5_L1 (layer0_FA6_c_out,    layer0_HA4_c_out,	layer0_FA7_s_out ,	layer1_FA5_s_out, 	layer1_FA5_c_out);
	full_adder FA6_L1 (layer0_FA7_c_out,    layer0_HA5_c_out, 	layer0_FA8_s_out ,	layer1_FA6_s_out, 	layer1_FA6_c_out);
	full_adder FA7_L1 (layer0_FA8_c_out,    layer0_HA6_c_out, 	layer0_FA9_s_out ,	layer1_FA7_s_out, 	layer1_FA7_c_out);
	half_adder HA3_L1 (layer0_FA9_c_out,    layer0_FA10_s_out, 				layer1_HA3_s_out, 	layer1_HA3_c_out);
	half_adder HA4_L1 (layer0_FA10_c_out,   layer0_FA11_s_out, 				layer1_HA4_s_out, 	layer1_HA4_c_out);
	half_adder HA5_L1 (layer0_FA11_c_out,   layer0_HA7_s_out, 				layer1_HA5_s_out,	layer1_HA5_c_out);
// end LAYER_1

	
// LAYER_2: begin
	// no op
	// no op
	half_adder HA0_L2 (layer1_HA0_c_out, 	layer0_FA0_s_out,				result[2],	 	layer2_HA0_c_out);
	// no op
	half_adder HA1_L2 (layer1_HA1_c_out, 	layer1_FA0_s_out, 				layer2_HA1_s_out, 	layer2_HA1_c_out);
	half_adder HA2_L2 (layer1_FA0_c_out, 	layer1_HA2_s_out, 				layer2_HA2_s_out, 	layer2_HA2_c_out);
	half_adder HA3_L2 (layer1_HA2_c_out, 	layer1_FA1_s_out, 				layer2_HA3_s_out, 	layer2_HA3_c_out);	
	full_adder FA0_L2 (layer1_FA1_c_out, 	layer1_FA2_s_out, 	MBE3_out[1],		layer2_FA0_s_out,	layer2_FA0_c_out);
	half_adder HA4_L2 (layer1_FA2_c_out, 	layer1_FA3_s_out, 				layer2_HA4_s_out, 	layer2_HA4_c_out);
	full_adder FA1_L2 (layer1_FA3_c_out, 	layer1_FA4_s_out,	layer0_HA4_s_out,	layer2_FA1_s_out,	layer2_FA1_c_out);
	full_adder FA2_L2 (layer1_FA4_c_out,	layer1_FA5_s_out,	layer0_HA5_s_out,	layer2_FA2_s_out,	layer2_FA2_c_out);
	full_adder FA3_L2 (layer1_FA5_c_out, 	layer1_FA6_s_out, 	layer0_HA6_s_out, 	layer2_FA3_s_out,	layer2_FA3_c_out);
	full_adder FA4_L2 (layer1_FA6_c_out,	layer1_FA7_s_out,	MBE4_out[4],		layer2_FA4_s_out,	layer2_FA4_c_out);
	half_adder HA5_L2 (layer1_FA7_c_out, 	layer1_HA3_s_out, 				layer2_HA5_s_out, 	layer2_HA5_c_out);
	half_adder HA6_L2 (layer1_HA3_c_out, 	layer1_HA4_s_out, 				layer2_HA6_s_out, 	layer2_HA6_c_out);
	half_adder HA7_L2 (layer1_HA4_c_out, 	layer1_HA5_s_out, 				layer2_HA7_s_out, 	layer2_HA7_c_out);
	half_adder HA8_L2 (layer1_HA5_c_out, 	layer0_HA7_c_out, 				layer2_HA8_s_out, 	layer2_HA8_c_out);
// end LAYER_2


// LAYER_3: begin
	rca_wt RCA (

		 .A({
			layer2_HA8_c_out,    // A[14]
			layer2_HA7_c_out,    // A[13]
			layer2_HA6_c_out,    // A[12]
			layer2_HA5_c_out,    // A[11] 
			layer2_FA4_c_out,    // A[10]
			layer2_FA3_c_out,    // A[9]
			layer2_FA2_c_out,    // A[8]
			layer2_FA1_c_out,    // A[7]
			layer2_HA4_c_out,    // A[6]
			layer2_FA0_c_out,    // A[5]
			layer2_HA3_c_out,    // A[4]
			layer2_HA2_c_out,    // A[3]
			layer2_HA1_c_out,    // A[2]
			layer2_HA1_s_out,    // A[1]
			layer2_HA0_c_out     // A[0]
		    }),

		 .B({
			1'b0,                 // B[14] - vuoto (collegato a 0)
			layer2_HA8_s_out,     // B[13]
			layer2_HA7_s_out,     // B[12]
			layer2_HA6_s_out,     // B[11]
			layer2_HA5_s_out,     // B[10]
			layer2_FA4_s_out,     // B[9]
			layer2_FA3_s_out,     // B[8]
			layer2_FA2_s_out,     // B[7]
			layer2_FA1_s_out,     // B[6]
			layer2_HA4_s_out,     // B[5]	
                        layer2_FA0_s_out,     // B[4]
			layer2_HA3_s_out,     // B[3]
			layer2_HA2_s_out,     // B[2]
			1'b0,                 // B[1] - vuoto (collegato a 0)
			layer1_HA1_s_out      // B[0]
		    }),
	
		.Y({result [17:3]})
	);
// end LAYER_3

endmodule


