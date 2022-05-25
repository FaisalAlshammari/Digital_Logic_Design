//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : Fproj
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\CCIS\Desktop\finalProj\finalProject\Fproj\compile\blockD.v
// Generated   : Wed Apr 10 06:48:55 2019
// From        : C:\Users\CCIS\Desktop\finalProj\finalProject\Fproj\src\blockD.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module blockD (clk,reset,trigger,green,out,y) ;

// ------------ Port declarations --------- //
input clk;
wire clk;
input reset;
wire reset;
input trigger;
wire trigger;
output green;
wire green;
output [6:0] out;
wire [6:0] out;
output [6:0] y;
wire [6:0] y;

// ----------- Signal declarations -------- //
wire NET134;
wire NET164;
wire NET206;
wire NET81;
wire [1:0] BUS236;
wire [3:0] BUS42;
wire [3:0] BUS48;
wire [3:0] BUS54;

// -------- Component instantiations -------//

clock_Divider U1
(
	.cldiv(NET81),
	.clk(clk)
);



sevenSegmentAll U10
(
	.x(BUS48),
	.y(y)
);



sevenSegmentAll U11
(
	.x(BUS54),
	.y(y)
);



pentaltySys U12
(
	.clk(NET81),
	.penalty(),
	.red(NET164),
	.reset(reset),
	.sec(BUS54)
);



NumberOfemptyParkSpaces U13
(
	.car1(NET134),
	.car2(NET206),
	.car3(NET164),
	.numOfParks(BUS236)
);



sensor U2
(
	.clk(NET81),
	.green(green),
	.red(NET134),
	.reset(reset),
	.trigger(trigger)
);



sensor U3
(
	.clk(NET81),
	.green(green),
	.red(NET206),
	.reset(reset),
	.trigger(trigger)
);



sensor U4
(
	.clk(NET81),
	.green(green),
	.red(NET164),
	.reset(reset),
	.trigger(trigger)
);



sevenSegmentOfEmpty U6
(
	.in(BUS236),
	.out(out)
);



pentaltySys U7
(
	.clk(NET81),
	.penalty(),
	.red(NET134),
	.reset(reset),
	.sec(BUS42)
);



sevenSegmentAll U8
(
	.x(BUS42),
	.y(y)
);



pentaltySys U9
(
	.clk(NET81),
	.penalty(),
	.red(NET206),
	.reset(reset),
	.sec(BUS48)
);



endmodule 
