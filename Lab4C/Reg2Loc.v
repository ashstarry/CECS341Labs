`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:35 03/12/2017 
// Design Name: 
// Module Name:    Reg2Loc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg2Loc(
   input [4:0] RmIn,
	input [4:0] RtIn,
	input  Select,
	output reg [4:0] rrA2Out //read register out 2
    );
	 
	 always @ (RmIn,RtIn,Select)
		case(Select)
			0: rrA2Out <= RmIn;
			1: rrA2Out <= RtIn; 
		endcase
endmodule
