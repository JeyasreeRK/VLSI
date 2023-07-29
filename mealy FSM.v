module mealy(
    input rst,clk,x,
    output  reg y
    );
parameter s0=2'b00,s1=2'b01,s2=2'b10 , nn
begin 
 if(rst)begin p_s=s0;y=1'b0;end
 else p_s=n_s;end
 always@(p_s,x)
 begin 
   case(p_s)
	s0: 
	begin 
	if(x==1'b1)begin y=1'b1;n_s=s0;
	end
	else 
	begin y=1'b0;n_s=s1;
	end
	end
	s1: 
	begin if(x==1'b1)begin y=1'b0;n_s=s3;
	end
	else 
	begin y=1'b1;n_s=s2;
	end
	end
	s2: 
	begin 
	if(x==1'b1)begin y=1'b0;n_s=s1;
	end
	else 
	begin y=1'b1;n_s=s0;
	end
	end
	s3: 
	begin 
	if(x==1'b1)begin y=1'b1;n_s=s2;
	end
	else 
	begin y=1'b0;n_s=s3;
	end
	end
   endcase
	end
endmodule
