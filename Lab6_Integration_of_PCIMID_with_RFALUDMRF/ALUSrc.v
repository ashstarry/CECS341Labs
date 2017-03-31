`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:58 02/23/2017 
// Design Name: 
// Module Name:    ALUSrc 
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
module ALUSrc(
	input [63:0] RegIn,
	input [63:0] DispIn,
	input  Select,
	output reg [63:0] SrcOut
    );
	 
	 always @ (RegIn,DispIn,Select)
		case(Select)
			0: SrcOut <= RegIn;
			1: SrcOut <= DispIn;
		endcase


endmodule
