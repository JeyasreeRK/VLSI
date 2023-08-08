module dfilpflop(
    input d, clk,
    output  out
    );
	 reg out=0;
always @(posedge clk)
begin
out <= d;
end


endmodule
