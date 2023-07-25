module fullsub(
    input x,y,z,
    output d,b
    );
	 wire p,q,r;
	 assign p=x^y;
	 assign q=(~x)&y;
	 assign d=p^z;
	 assign r=(~p)&z;
	 assign b=r|q;


endmodule
