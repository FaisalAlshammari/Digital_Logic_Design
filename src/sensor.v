module sensor(clk,reset,trigger,red,green);
	
	input clk, reset, trigger;
	output reg red, green;
	
	always@(posedge clk,posedge reset)
	begin
		if(reset)
		begin
			green = 1;
			red = 0;
		end
		   	else if(trigger==1)
		begin
			green = 0;
			red = 1;
		end
		else if(trigger==0)
		begin
			green = 1;
			red = 0;
		end
	end
endmodule