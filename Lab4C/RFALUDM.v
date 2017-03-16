`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:31 02/23/2017 
// Design Name: 
// Module Name:    RFALUDM 
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
module RFALUDM(
		input [1:0] ALUOp,
		input [10:0] OpCodefield,
		input [4:0] Rn,
		input [4:0] Rm,

		input [4:0] Rt,
		input RegWrite,
		input RF_clock,
		input DM_clock,
		input MemRead,
		input MemWrite,
		input [8:0] DispIn,
		input ALUSrc_Select,
		input MemtoReg_Select,
		input  Reg2Loc_Select,
		output Zero,
		
		

		wire [63:0] A,
		wire [63:0] SrcOut,		
		wire [63:0] ReadData,
		wire [63:0] SEout,
		wire [63:0] ALUresult,
		wire [3:0] ALUoperation,
		wire [63:0] ToRegOut,
		wire [63:0] ReadData2Out,
		wire [4:0] rrA2Out
		
    );
	
		/* RFALU RFALU(.ALUOp(ALUOp), .OpCodefield(OpCodefield),.Read1(Read1), .Read2(Read2), .WriteReg(WriteReg),
		.WriteData(ToRegOut), .RegWrite(RegWrite), .clock(RF_clock), .SEout(SEout), .ALUSrc_Select(ALUSrc_Select),
		.ALUresult(ALUresult), .Zero(Zero), .ALUoperation(ALUoperation), .A(A), .B(SrcOut));*/
	
      ALUwithControl Lab2c (.ALUOp(ALUOp), .OpCodefield(OpCodefield), .A(A), .B(SrcOut), .ALUresult(ALUresult), .Zero(Zero), .ALUoperation(ALUoperation));
		
		registerfile Lab3a(.Read1(Rn), .Read2(rrA2Out), .WriteReg(Rt), .WriteData(ToRegOut), .RegWrite(RegWrite), .clock(RF_clock), .Data1(A), .Data2(ReadData2Out));
		
		ALUSrc ALUSrc (.RegIn(ReadData2Out), .DispIn(SEout), .Select(ALUSrc_Select), .SrcOut(SrcOut));
		
		DataMemory DM(.Address(ALUresult), .clock(DM_clock), .MemRead(MemRead), .MemWrite(MemWrite),
		.WriteData(ReadData2Out), .ReadData(ReadData));
		
		SE SE(.SEin(DispIn), .SEout(SEout));
	 
		MemtoReg MemtoReg(.DMIn(ReadData), .ALUIn(ALUresult), .Select(MemtoReg_Select), .ToRegOut(ToRegOut));
	
		Reg2Loc Reg2Loc(.RmIn(Rm), .RtIn(Rt), .Select(Reg2Loc_Select), .rrA2Out(rrA2Out));
		
		
endmodule
