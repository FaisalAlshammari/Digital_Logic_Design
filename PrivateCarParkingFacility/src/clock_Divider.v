module clock_Divider(clk,cldiv);
	input clk;
	output reg cldiv=0;
	reg [25:0] counter=0;
    
	always@(posedge clk)
		begin
			counter <=counter+1;
			if(counter == 25000000)
				begin
					counter <=0;
					cldiv<=!cldiv;
				end
			end
		endmodule
		
			