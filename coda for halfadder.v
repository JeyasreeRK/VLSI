coda for halfadder

module halfadder(
    input a,b,
    output sum,co
    );
	 
	 //data flow modal
	 assign sum=a^b;
	 assign co=a&b;


endmodule

