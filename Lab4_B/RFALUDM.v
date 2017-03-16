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
		input [63:0] writeDataMem,// write to data memory
		input  AluSrc,
		input memtoReg,
		output Zero
	
		);
	 
	 wire [63:0] SEouttoIn1;//se to in1
		wire [63:0] WriteDataReg; //used for datamemory
	 	wire [63:0] ALUresult;
		wire [63:0] A; //Data1 to A
		wire [63:0] OuttoB;//mux out to in0
	 	wire [63:0]ReadDataToIn0;//data2 to in0
		wire [3:0] ALUoperation;
		wire [63:0] Data2toIn0;
    
	 
	 
	 																							//	 Data1,Dat2)
	registerfile Lab3a(Read1, Read2, WriteReg, WriteDataReg, RegWrite, Regclock, A,Data2toIn0);  //register file 
	 
					//(ALUOp, OpCodefield, ALUoperation)
	ALUControl aluControl(ALUOp, OpCodefield, ALUoperation);
	 
					//(Aluoperation, A, B, Aluresult, Zero);
	LEGv8  alu(ALUoperation,A ,OuttoB ,ALUresult ,Zero );
	
						//clock, MemWrite, MemRead, Address, WriteData, ReadData 
	Data_Memory dm (Memclock, MemWrite, MemRead, ALUresult, writeDataMem, ReadDataToIn0 ); //data memory
	
	
				//In0,   In1,      Sel,      Out)
	mux  memToReg( ReadDataToIn0, ALUresult, memtoReg, WriteDataReg); //mux two after memory
	
			
				// In0, In1, Sel, Out)
	mux  alusrc( Data2toIn0, SEouttoIn1, AluSrc ,OuttoB);//mux one between register file and alu
	
		
	
	SignExtender SE(  SEin, SEouttoIn1);//sighn extender 

	 

endmodule
