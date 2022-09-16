 `timescale 1ns/1ns

module halfadder 
(
   input a,
   input b,
   output sum,
   output cout
);
 
 
  assign sum   = a ^ b;  
  assign cout = a & b;  
 
endmodule 


module fulladder(sum,cout,a,b,cin);
    input a,b,cin;
    output sum ,cout;
    assign sum = a^b^cin;
    assign cout = a&&b || a&&cin || b&&cin;

endmodule


module threebit(output sum_0, output sum_1, output sum_2, output Cout, input a_0, input a_1, input a_2, input b_0, input b_1, input b_2);
  
  wire c_1, c_2;
  halfadder h(a_0,b_0,sum_0, c_1);
  fulladder f(sum_1,c_2,a_1,b_1, c_1); 
  fulladder f1(sum_2,Cout,a_2,b_2,c_2);
  

endmodule