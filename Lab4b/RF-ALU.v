`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:38:46 02/07/2017 
// Design Name: 
// Module Name:    RF-ALU 
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
module RFALU(
		input [1:0] ALUOp,
		input [10:0] OpCodefield,
		input [4:0] Read1,
		input [4:0] Read2,
		input [4:0] WriteReg,
		input [63:0] WriteData,
		input RegWrite,
		input clock,
		input [63:0] SEout,
		input ALUSrc_Select,
		output [63:0] ALUresult,
		output Zero,
		wire [3:0] ALUoperation,
		wire [63:0] SrcOut,
		wire [63:0] A,
		wire [63:0] B
    );

	ALUwithControl Lab2c (ALUOp, OpCodefield, A, SrcOut, ALUresult, Zero, ALUoperation);
	registerfile Lab3a(Read1, Read2, WriteReg,WriteData, RegWrite, clock, A, B);
	ALUSrc ALUSrc (.RegIn(B), .DispIn(SEout), .Select(ALUSrc_Select), .SrcOut(SrcOut));
	


endmodule
