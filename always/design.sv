`timescale 1ns/1ns

module fulladder (input [2:0] x,  
                 input [2:0] y,  
                   input Cin, 
                  output reg Cout,  
                output reg [2:0] Sum);  
  

  always @ (x or y) begin  
          {Cout, Sum} = x + y + Cin;  

  end  
endmodule  