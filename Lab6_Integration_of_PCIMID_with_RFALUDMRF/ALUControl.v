`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:27 01/25/2017 
// Design Name: 
// Module Name:    ALUControl 
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
module ALUControl(
	input [1:0] ALUOp,
	input [10:0] OpCodefield,
	output reg [3:0] ALUoperation
    );
	 
	 always @(ALUOp, OpCodefield)
		case ({ALUOp, OpCodefield})
			13'b1010101010000: ALUoperation <= 1;
			13'b1010001010000: ALUoperation <= 0;
			13'b1010001011000: ALUoperation <= 2;
			13'b1011001011000: ALUoperation <= 6;
			13'b1011111000010: ALUoperation <= 7;
			13'b1011101010000: ALUoperation <= 12;
			default: ALUoperation <= 15;
		endcase
		
	always @(ALUOp)
		case(ALUOp)
		2'b00: ALUoperation <= 2;
	endcase

endmodule
