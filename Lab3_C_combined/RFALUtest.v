`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:43:46 02/14/2017
// Design Name:   RFALU
// Module Name:   D:/CECS341/lab3c/RFALUtest.v
// Project Name:  lab3c
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RFALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFALUtest;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpCodefield;
	reg [5:0] Read1;
	reg [5:0] Read2;
	reg [5:0] WriteReg;
	reg [63:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [63:0] ALUresult;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	RFALU uut (
		.ALUOp(ALUOp), 
		.OpCodefield(OpCodefield), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.clock(clock), 
		.ALUresult(ALUresult), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpCodefield = 0;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		//write to registers 5 and 10
		RegWrite = 1; WriteData = 64'h5555555555555555; WriteReg = 6'b000101;
		#50; clock = 1;
		#50; RegWrite = 1; WriteData = 64'haaaaaaaaaaaaaaaa; WriteReg = 6'b001010; clock = 0;
		#50; clock = 1;
		

		//cycle through ALU ops and write to registers
		#50; Read1 = 6'b000101; Read2 = 6'b001010; RegWrite = 1; clock = 0; assign WriteData = ALUresult;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10001010000; WriteReg = 1; clock = 0;
		#50; clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10101010000; WriteReg = 2; clock = 0;
		#50; clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10001011000; WriteReg = 3; clock = 0;//adding
		#50; clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11001011000; WriteReg = 4; clock = 0;
		#50; clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11111000010; WriteReg = 6; clock = 0;
		#50; clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11101010000; WriteReg = 7; clock = 0;
		#50; clock = 1;
		//read registers
		#50; Read1 = 1; Read2 = 2; clock = 0; RegWrite =0;
		#50; Read1 = 3; Read2 = 4;
		#50; Read1 = 6; Read2 = 7;

	end
      
endmodule

