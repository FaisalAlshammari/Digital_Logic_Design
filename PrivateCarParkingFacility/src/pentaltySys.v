module pentaltySys(reset,clk,red,sec,penalty);
	input reset, clk, red;
	output reg [3:0] sec;
	output reg penalty = 0;

	
	always @(posedge clk,posedge reset)
	begin
		
		if(reset) 
		begin
			sec = 0;
			penalty = 0;
		end
		
		else if(~red)
		begin
			sec = 0;
			penalty = 0;
		end
		
		else if(red)
		begin
			if(sec == 5)
				penalty = 1;
			else
				sec = sec + 1;
		end
		
	end
endmodule	
					
					
			