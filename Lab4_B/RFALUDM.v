`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:06 03/01/2017 
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
	
	   //Reg file
		input [5:0] Read1, 
		input [5:0] Read2,
		input [5:0] WriteReg, //(address)
		input [1:0] ALUOp,
		input MemRead,
		input MemWrite,
		input Memclock, //used for datamemory too
		input RegWrite,
		input Regclock, //used for datamemory too
		input[8:0]  SEin,
		input [10:0] OpCodefield,
		input [3:0] ALUoperation,
		input [63:0] writeDataMem,// write to data memory
		input [1:0] AluSrc,
		input memtoReg,
		
		output [63:0] Data1,
		output [63:0] Data2,
		output Zero,
		output Out,
		output reg [63:0] ReadData,
		
		
		wire [63:0] WriteDataReg, //used for datamemory
	 	wire [63:0] ALUresult,
		wire [63:0] A, //Data1 to A
		wire [63:0] B,// out to in0
	 	wire In0,//data2 to in0
		wire In1,//se to in1
	 	wire  [7:0] MemAddress // aluresult to MemAddress
    );
	 
	 
	 
	 
	 
	 
								//(ALUOp, OpCodefield, A,B, ALUresult, Zero, ALUoperation)
	ALUwithControl Lab2c (ALUOp, OpCodefield, A,B, ALUresult, Zero, ALUoperation); // Alu with control
	
																							//	 Data1,Dat2)
	registerfile Lab3a(Read1, Read2, WriteReg, WriteData, RegWrite, Regclock, A, B);  //register file 
	
						//clock, MemWrite, MemRead, Address, WriteData, ReadData 
	Data_Memory dm (Memclock, MemWrite, MemRead, ALUresult, WriteDataMem, In0 ); //data memory
			
				// In0, In1, Sel, Out)
	mux  alusrc(  Data2, B, memtoReg, Out);//mux one between register file and alu
	
		
				//In0,   In1,      Sel,      Out)
	mux  memToReg( In0, ALUresult, AluSrc, WriteDataReg); //mux two after memory
	
	
	SignExtender SE(  SEin, In1);//sighn extender 

	 

endmodule
