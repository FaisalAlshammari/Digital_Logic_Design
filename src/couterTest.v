module testCount(input clk, output reg [0:2] bus, input reset);
	always @(posedge clk,posedge reset)
	begin
		if(reset)bus =0;
		else bus = bus+1;		 
	end 
	endmodule