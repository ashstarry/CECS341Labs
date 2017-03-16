`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:28 03/09/2017
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
	reg [63:0] writeDataMem;
	reg AluSrc;
	reg memtoReg;

	// Outputs
	wire Zero;

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
		.writeDataMem(writeDataMem), 
		.AluSrc(AluSrc), 
		.memtoReg(memtoReg), 
		.Zero(Zero)
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
		writeDataMem = 0;
		AluSrc = 0;
		memtoReg = 0;

		// Add stimulus here
		MemRead = 1; DispIn = 9'b000101000; ALUSrc_Select = 1; RegWrite = 1; WriteReg = 5; ALUOp = 2'b11; Read1 = 0;
		#50;  Regclock = 1;
		#50;  Regclock = 0; MemRead = 1; DispIn = 9'b001010000; ALUSrc_Select = 1; RegWrite = 1; WriteReg = 10;
		#50;  Regclock = 1; Read1 = 5; Read2 = 10;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10001010000; WriteReg = 1;  Regclock = 0; MemtoReg_Select = 0; ALUSrc_Select = 0;
		#50;  Regclock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10101010000; WriteReg = 2;  Regclock = 0;
		#50;  Regclock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10001011000; WriteReg = 3;  Regclock = 0;
		#50;  Regclock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11001011000; WriteReg = 4;  Regclock = 0;
		#50;  Regclock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11111000010; WriteReg = 6;  Regclock = 0;
		#50;  Regclock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11101010000; WriteReg = 7;  Regclock= 0;
		#50;  Regclock= 1;
		#50; Read1 = 1; Read2 = 2;
		#50; Read1 = 3; Read2 = 4;
		#50; Read1 = 6; Read2 = 7;

	end
      
endmodule

