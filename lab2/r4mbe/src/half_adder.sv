module half_adder (
  input a,    // Input 'a'
  input b,    // Input 'b'
  output s,   // Output 's' (Sum)
  output c    // Output 'c' (Carry)
);

   assign s = a ^ b;  // XOR operation for sum
   assign c = a & b;  // AND operation for carry
  
endmodule
