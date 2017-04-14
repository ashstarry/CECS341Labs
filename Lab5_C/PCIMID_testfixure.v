`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:26:57 04/04/2017
// Design Name:   PCIMID
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab5_C/PCIMID_testfixure.v
// Project Name:  Lab5_C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCIMID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCIMID_testfixure;

	// Inputs
	reg Clock;

	// Outputs
	wire Reg2Loc;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire [1:0] ALUOp;
	wire Branch;

	// Instantiate the Unit Under Test (UUT)
	PCIMID uut (
		.Clock(Clock), 
		.Reg2Loc(Reg2Loc), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.ALUOp(ALUOp), 
		.Branch(Branch)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;

				Clock = 0;
		
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
	   #50; Clock = 0;
		#50; Clock = 1;
		#50; Clock = 0;
		
		
		$stop;
		

	end
      
endmodule

