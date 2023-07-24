
module mux4to1(
    input i0,i1,i2,i3,s0,s1,
    output reg y
    );
always @(i0,i1,i2,i3,s0,s1)
 begin 
 case({s1,s0})
 2'b00:y=i0;
 2'b01:y=i1;
 2'b10:y=i2;
 default :y=i3;
 
 endcase
 end
 
endmodule


TEST BENCH

module muxtest;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux4to1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.y(y)
	);

	initial begin
		// Initialize Inputs first set 
		i0 = 1;
		i1 = 0;
		i2 = 1;
		i3 = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100 s0 = 1; s1 = 0;
		#100 s0 = 0; s1 = 1;
		#100 s0 = 1; s1 = 1;
		// Initialize Inputs second set 
		#100 i0 = 1;
		i1 = 1;
		i2 = 0;
		i3 = 0;
		s0 = 0;
		s1 = 0;
		#100 s0 = 1; s1 = 0;
		#100 s0 = 0; s1 = 1;
		#100 s0 = 1; s1 = 1;
		#100 $finish;
        
		// Add stimulus here

	end
      
endmodule

