`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:17 01/25/2017 
// Design Name: 
// Module Name:    ALUwithControl 
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
module ALUwithControl(
	input [1:0] ALUOp,
	input [10:0] OpCodefield,
	input [63:0] A,
	input [63:0] B,
	output [63:0] ALUresult,
	output Zero,
	wire [3:0] ALUoperation
    );
	 

	 ALUControl Lab2b (ALUOp, OpCodefield, ALUoperation);
	 LEGv8 Lab2a(ALUoperation, A, B, ALUresult, Zero);
	 

endmodule
