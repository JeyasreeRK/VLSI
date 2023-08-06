module seq2(
    input clk,rst,seq,
    output reg tick
    );
localparam a=3'b000;
localparam b=3'b001;
localparam c=3'b010;
localparam d=3'b011;
localparam e=3'b100;
localparam f=3'b101;
localparam g=3'b110;

reg [2:0] p_s,n_s;
always @ (posedge clk,posedge rst)
begin
   if(rst) p_s=a;
	else  p_s=n_s;
end
always @ *
   begin
     p_s=n_s;
     tick=1'b0;
     case(p_s)
       a:if(seq)  n_s=b;
         else n_s=a;	
       b:if(seq)  n_s=c;
         else n_s=a;
       c:if(seq)  n_s=c;
         else n_s=d;
		 d:if(seq)  n_s=e;
         else n_s=a;	
       e:if(seq)  n_s=f;
         else n_s=a;
       f:if(seq)  n_s=c;
         else n_s=g;
       g:if(seq) 
     		 n_s=e;  
			 
         else begin n_s=e; tick=1'b1;
			end
       default:begin
         tick=1'b0;   n_s=a;
        end
     endcase
   end	  

endmodule
