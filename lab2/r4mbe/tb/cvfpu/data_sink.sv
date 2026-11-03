// TODO add output_ready_o that goes to fpu for correct axi interface

module data_sink (
	input clk, 
	input [15:0] din,
	input rst_n,
	input vin //from fpu
);

	int fd_w; // file descriptor used for file in writing

initial begin
	fd_w = $fopen ("./tb_results.txt", "w");	
	if (!fd_w) begin
		$display ("couldn open file for writing");
	end 
end 	

always @ (posedge clk) begin
	if (fd_w) begin
		if (vin == 1 && rst_n == 1) begin
			$fwrite (fd_w, "%b\n", din);
		end
	end 
end

endmodule
