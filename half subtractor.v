module halfsub(
    input a,b,
    output sub,rem
    );
	 
	 assign sub=a^b;
	
	 assign rem=(~a)&b;


endmodule
