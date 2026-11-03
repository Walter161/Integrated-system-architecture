`timescale 1ns/10ps
module tb_top ();

	logic [2:0] X_t = 3'b0;
	wire s_t;
	wire [1:0] sel_t;

	booth_enc_logic DUT (
		.X(X_t),
		.s(s_t),
		.sel(sel_t)
	);

	always @* begin 	
		# 10
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		# 10 X_t = 3'b001;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		# 10 X_t = 3'b010;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		
		# 10 X_t = 3'b011;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		# 10 X_t = 3'b100;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		# 10 X_t = 3'b101;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		# 10 X_t = 3'b110;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		# 10 X_t = 3'b111;
		# 1 $display ("X = %b, s = %b, sel = %b ", X_t, s_t, sel_t);
		

	end
	
endmodule
