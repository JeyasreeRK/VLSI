 halfadder

module halfadder(
    input a,b,
    output sum,co
    );
	 
	 //data flow modal
	 assign sum=a^b;
	 assign co=a&b;


endmodule

test bench
 module halfadd;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	halfadder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 1'b0;
		b = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;a=1'b0;b=1'b1;
		#100;a=1'b1;b=1'b0;
		#100;a=1'b1;b=1'b1;
		#100$finish;
        
		// Add stimulus here

	end
      
endmodule



