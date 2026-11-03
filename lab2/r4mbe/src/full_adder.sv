module full_adder (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input c_in, // input 'c_in' (Carry in)
  output s,   // Output 's' (Sum)
  output c_out  // Output 'c' (Carry out)
);
    assign s = (a ^ b) ^ c_in;  // XOR operation for sum
    assign c_out = ((a & b) | (a & c_in)) | (b & c_in);  // AND\OR operation for carry

endmodule
