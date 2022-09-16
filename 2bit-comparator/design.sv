`timescale 1ns / 1ns
module bitwise(a,b,c);
  input [1:0] a, b;
  output reg c;
  
  
  always @(*) begin
    if (a == b) begin  
         assign c = 1;
     end else begin 
         assign c = 0;
     end
     
     
  end
  
endmodule