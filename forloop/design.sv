`timescale 1ns/1ns

module threebittb();
   reg [2:0] x = 3'd0;
   reg [2:0] y = 3'd0;
  wire [2:0] Sum;
   wire Cout;
   threebit thrbit(Sum[0], Sum[1], Sum[2], Cout, x[0], x[1], x[2], y[0],y[1], y[2]);
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1,threebittb);
     
     for (x =0; x<=2; x++)
     begin
         
       for (y =0; y<=2; y++)
         begin
           #10
           $display("x = %d, y = %d, Sum = %d, Cout = %d",x,y,Sum,Cout);
         end 
        
     end 

      $finish;
   end
endmodule