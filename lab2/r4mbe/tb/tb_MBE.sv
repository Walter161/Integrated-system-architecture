`timescale 1ns/10ps
module tb_top ();

	logic [2:0] X_t = 3'b0;

	// test value 
	logic [6:0] A_t = 7'b0010110;
	
	// for output of sign
	wire s_t;

	// for result
	wire [7:0] res_t;

	MBE DUT (
		.X(X_t),
		.A(A_t),
		.s(s_t),
		.res(res_t)
	);

	always @* begin 	
		# 10
		# 1 $display ("INPUT VALUE OF A: %b", A_t);
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		# 10 X_t = 3'b001;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		# 10 X_t = 3'b010;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		
		# 10 X_t = 3'b011;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		# 10 X_t = 3'b100;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		# 10 X_t = 3'b101;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		# 10 X_t = 3'b110;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		# 10 X_t = 3'b111;
		# 1 $display ("X = %b, s = %b, res = %b ", X_t, s_t, res_t);
		

	end
	
endmodule
