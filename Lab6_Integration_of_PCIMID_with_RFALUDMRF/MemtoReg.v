`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:41 02/23/2017 
// Design Name: 
// Module Name:    MemtoReg 
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
module MemtoReg(
	input [63:0] DMIn,
	input [63:0] ALUIn,
	input Select,
	output reg [63:0] ToRegOut
    );
	 
	 always @ (DMIn,ALUIn,Select)
		case(Select)
			1: ToRegOut <= DMIn;
			0: ToRegOut <= ALUIn;
		endcase

endmodule
