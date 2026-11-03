module MBE (
  input [2:0] X,    // Input '3-bits of X array'
  input [7:0] A,
  //input [6:0] A,    // Input 'A'
  output s,   // Output 'Sign bit of res' 
  output reg [8:0] res    // Output 'result of Modify booth encoder computation'
);

wire s_sel; //signal that select sign of booth encoder
wire [1:0] sel_wire; //signal to select output of mux 

reg [8:0] res_wire;

booth_enc_logic booth_enc(
	.X (X),	
    	.s (s_sel),
	.sel (sel_wire)
  );

//defin mux to decide input into wallace tree with the output of 
//booth_enc_logic
always_comb
MUX : begin
	case (sel_wire)
		2'b00 : res_wire = 9'b0;	//0
		2'b01 : res_wire = {1'b0, A};	//A
		2'b10 : res_wire = A << 1; //{A, 1'b0};	//2A
	endcase
	if(s_sel) begin
		res = ~res_wire; //selct cpmplement of res_wire
	end else begin
		res = res_wire;
	end
end
assign s = X[2];

endmodule
