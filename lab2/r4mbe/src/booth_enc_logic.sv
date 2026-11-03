module booth_enc_logic(
	input [2:0] X, //input X
	output s,     //output bit of sign
	output [1:0] sel //signals to select the correct input for wallace tree
);

assign s = X[2];
assign sel[1] = (~X[2] & X[1] & X[0]) | (X[2] & ~X[1] & ~X[0]); 
assign sel[0] = X[1] ^ X[0];

endmodule
