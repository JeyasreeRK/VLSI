1) wire
  module top_module( input in, output out );
    assign out = in;
     endmodule

2) wire 4

  module top_module (
	input a,
	input b,
	input c,
	output w,
	output x,
	output y,
	output z  );
	
	assign w = a;
	assign x = b;
	assign y = b;
	assign z = c;
	endmodule

3) NOT GATE 
  module top_module(
	input in,
	output out
);
	assign out = ~in;
	endmodule


4) circuit design

module top_module (
	input a,
	input b,
	input c,
	input d,
	output out,
	output out_n );
   wire w1, w2;	
	assign w1 = a&b;	
	assign w2 = c&d;	
	assign out = w1|w2;	
	assign out_n = ~out;	
	endmodule
