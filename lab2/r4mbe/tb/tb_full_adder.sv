`timescale 1ns/10ps
module tb_top ();

	logic a_in = 1'b0;
	logic b_in = 1'b0;
	logic c_in = 1'b0;
	
	logic c_out, s_out;

	full_adder DUT (
		.a (a_in),
		.b (b_in),
		.c_in (c_in),
		.c_out (c_out),
		.s (s_out)
	);

	initial begin 	
		# 10
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		# 10 a_in = 1'b1; b_in = 1'b0; c_in = 1'b0;
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		# 10 a_in = 1'b1; b_in = 1'b1; c_in = 1'b0;
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		
		# 10 a_in = 1'b0; b_in = 1'b0; c_in = 1'b1;
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		# 10 a_in = 1'b0; b_in = 1'b1; c_in = 1'b1; 
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		# 10 a_in = 1'b1; b_in = 1'b0; c_in = 1'b1;
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		# 10 a_in = 1'b1; b_in = 1'b1; c_in = 1'b1;
		# 1 $display ("%d + %d , cin = %d, = %d, c = %d", a_in, b_in,c_in, s_out, c_out);
		
	end
	
endmodule
