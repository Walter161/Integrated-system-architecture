`timescale 1ns/10ps

module tb_top ();

	logic [7:0] A;
	logic [7:0] X;
	logic [15:0] result;
	
	// multiplier instance
	mult DUT (A,X,result);

	initial begin
		// first value
		A = 8'b00001100; // 24
		X = 8'b00000011; // 3
		# 10 $monitor ("[monitor] A = %d, X= %d, result = %d,  expected = %16d %s", A,X,result, 16'(A*X), 16'(A*X) == result ? "OK" : "ERROR");	 
		# 10
		
		/* SPECIAL CASES */
		
		// multiply by one
		A = 8'b00101000; 
		X = 8'b00000001; // 1
 
		# 10
		//multiply by 0
		A = 8'b00001100; // 24
		X = 8'b00000000; // 0
			# 10 
		// highest possible
		A = 8'b11111111; // 254
		X = 8'b11111111; // 254
		
		// 0 x 0
		# 10 
		A = 8'b00000000; 
		X = 8'b00000000; 
	
		/* END CASES */

		
		/* RANDOM VALUES */
		for (int i = 0; i < 100; i++) begin
			#10 
			std::randomize (A);
			std::randomize (X);
		end
		#10 
		$display ("end");

		
	end
endmodule
