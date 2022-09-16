`timescale 1ns/1ns

module threebittb();
   reg [2:0] a = 3'd0;
   reg [2:0] b = 3'd0;
   reg [2:0] Sum;
   wire Cout;
   threebit thrbit(Sum[0], Sum[1], Sum[2], Cout, a[0], a[1], a[2],b[0],b[1], b[2]);
  
  task output(input reg[2:0]a,input reg b,reg [2:0]Sum, reg Cout);
     
    $display("a=%d, b=%d, Sum = %d Cout = %d", a ,b, Sum, Cout);
      begin
        if(cout == 1) begin
          $display("Calculation of Sum is not right");
           $finish;
      end
      end
  endtask
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1,threebittb);
     

      a=6;
      b=1;
      #10
     output(a,b,Sum,Cout);
      a=2;
      b=3;
      #10
      output(a,b,Sum,Cout);
      a=5;
      b=4;
      #10
      output(a,b,Sum,Cout);
      a=6;
      b=4;
      #10
     output(a,b,Sum,Cout);
      $finish;
   end
endmodule