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