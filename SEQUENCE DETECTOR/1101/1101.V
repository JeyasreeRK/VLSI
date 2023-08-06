module s_q(
    input wire clk,rst,seq,
    output reg tick
    );
localparam a=2'b00;
localparam b=2'b01;
localparam c=2'b10;
localparam d=2'b11;
reg [1:0] p_s,n_s;
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
       b:if(seq)  n_s=b;
         else n_s=c;
       c:if(seq)  n_s=d;
         else n_s=a;
       d:if(seq) begin
     		 n_s=b;  tick=1'b1;
			 end
         else n_s=c;
       default:begin
         tick=1'b0;   n_s=a;
        end
     endcase
   end	  

endmodule
