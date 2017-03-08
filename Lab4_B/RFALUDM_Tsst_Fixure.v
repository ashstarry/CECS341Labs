`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:36:12 03/02/2017
// Design Name:   RFALUDM
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab4_B/RFALUDM_Tsst_Fixure.v
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

module RFALUDM_Tsst_Fixure;

	// Inputs
	reg [5:0] Read1;
	reg [5:0] Read2;
	reg [63:0] WriteData;
	reg [5:0] WriteReg;
	reg [1:0] ALUOp;
	reg [10:0] OpCodefield;
	reg RegWrite;
	reg clock;
	reg [8:0] SEin;
	reg [1:0] AluSrc;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	RFALUDM uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteData(WriteData), 
		.WriteReg(WriteReg), 
		.ALUOp(ALUOp), 
		.OpCodefield(OpCodefield), 
		.RegWrite(RegWrite), 
		.clock(clock), 
		.SEin(SEin), 
		.AluSrc(AluSrc), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteData = 0;
		WriteReg = 0;
		ALUOp = 0;
		OpCodefield = 0;
		RegWrite = 0;
		clock = 0;
		SEin = 0;
		AluSrc = 0;
		
		
		
		//keep memread as 1 and memwrite as 0, give addresses as 40 and then as 80 and see whether the ReadData is right. 
		//address is 40
		#50 MemRead = 1; 
	
		//now address is 80
		#50 MemRead = 1; Address = 80; 
		
		//write data 64 hold
		#50 WriteData = 64'haaaaaaaaaaaaaaaa; 		Address = 40; MemWrite = 1;
		
		
		//make clock go up
		#50 clock = 1;
        
		// Add stimulus here

	end
      
endmodule

