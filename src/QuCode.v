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
		
			module NumberOfemptyParkSpaces(car1,car2,car3,numOfParks); 
	
	input car1, car2, car3;
	output [1:0] numOfParks ;
	
	assign numOfParks = car1 + car2 + car3;
	
endmodule 

module sevenSegmentOfEmpty(in,out);
	input [1:0] in ;
	output reg [6:0] out;
	
	always @ (in)
	begin
		case(in)
			0 : out = 7'b1000000;
			1 : out = 7'b1111001;
			2 : out = 7'b0100100;
			3 : out = 7'b0110000;
			default;
		endcase
	end
endmodule  

module sevenSegmentAll (x,y);
	input [3:0]x;
	output reg [6:0]y;
	always@(x)
		begin
			case(x)		   //gfedcba
				4'b0000:y=7'b1000000;
				4'b0001:y=7'b1111001;
				4'b0010:y=7'b0100100;
				4'b0011:y=7'b0110000;
				4'b0100:y=7'b0011001;
				4'b0101:y=7'b0010010;
				4'b0110:y=7'b0000010;
				4'b0111:y=7'b1111000;
				4'b1000:y=7'b0000000;
				4'b1001:y=7'b0010000;
				4'b1010:y=7'b1111111;
				4'b1011:y=7'b1111111;
				4'b1100:y=7'b1111111;
				4'b1101:y=7'b1111111;
				4'b1110:y=7'b1111111;
				4'b1111:y=7'b1111111; 
			endcase
		end
	endmodule
	
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
					
					
			