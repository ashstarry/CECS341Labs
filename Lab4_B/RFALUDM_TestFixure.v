`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:24:00 03/07/2017
// Design Name:   RFALUDM
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab4_B/RFALUDM_TestFixure.v
// Project Name:  Lab4_B
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RFALUDM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFALUDM_TestFixure;

	// Inputs
	reg [5:0] Read1;
	reg [5:0] Read2;
	reg [5:0] WriteReg;
	reg [1:0] ALUOp;
	reg MemRead;
	reg MemWrite;
	reg Memclock;
	reg RegWrite;
	reg Regclock;
	reg [8:0] SEin;
	reg [10:0] OpCodefield;
	reg [3:0] ALUoperation;
	reg [63:0] writeDataMem;
	reg [1:0] AluSrc;
	reg memtoReg;

	// Outputs
	wire [63:0] Data1;
	wire [63:0] Data2;
	wire Zero;
	wire Out;
	wire [63:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	RFALUDM uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.ALUOp(ALUOp), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Memclock(Memclock), 
		.RegWrite(RegWrite), 
		.Regclock(Regclock), 
		.SEin(SEin), 
		.OpCodefield(OpCodefield), 
		.ALUoperation(ALUoperation), 
		.writeDataMem(writeDataMem), 
		.AluSrc(AluSrc), 
		.memtoReg(memtoReg), 
		.Data1(Data1), 
		.Data2(Data2), 
		.Zero(Zero), 
		.Out(Out), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		ALUOp = 0;
		MemRead = 0;
		MemWrite = 0;
		Memclock = 0;
		RegWrite = 0;
		Regclock = 0;
		SEin = 0;
		OpCodefield = 0;
		ALUoperation = 0;
		writeDataMem = 0;
		AluSrc = 0;
		memtoReg = 0;

		//start 
		#50;ALUOp = 2'b10; OpCodefield = 11'b10001011000; WriteReg = 3;memtoReg = 1; AluSrc = 1; MemRead = 1;
		 
		#50; Memclock = 1;
        
		// Add stimulus here




/*								//(ALUOp, OpCodefield, A,B, ALUresult, Zero, ALUoperation)
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
*/

	end
      
endmodule

