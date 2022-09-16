`timescale 1ns / 1ns

module bitwise_tb();
 
	// Inputs
  reg [1:0] t_a;
  reg [1:0] t_b;

	// Outputs
  reg  t_c;
  task comparison(input reg[1:0]t_a,t_b, reg t_c);
     
    $display("x=%d, y=%d", t_a,t_b);
      begin
        if(t_c) begin
          $display("Given Numbers are same");
          end else begin 
            $display("Numbers are different");
          end
      end
  endtask
	// Instantiate the Unit Under Test (UUT)
	bitwise bw1 (
      .a(t_a), 
      .b(t_b),  
      .c(t_c) 
	);

	initial begin
      
      $dumpfile("bwt.vcd");
      $dumpvars(1,bitwise_tb);
		t_a = 2'b11;
		t_b = 2'b10;	
      	#10
      comparison(t_a,t_b,t_c);

	 t_a = 2;
	 t_b = 3;
     #10
     comparison(t_a,t_b,t_c);


     t_a = 2;
	 t_b = 2;
     #10
     comparison(t_a,t_b,t_c);
  

     t_a = 1;
	 t_b = 3;
     #10
     comparison(t_a,t_b,t_c);
     
 
      

    

      	$finish;
	end	
    
     

endmodule