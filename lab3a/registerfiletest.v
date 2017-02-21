`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:12:40 02/09/2017
// Design Name:   registerfile
// Module Name:   D:/CECS341/lab3a/registerfiletest.v
// Project Name:  lab3a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registerfiletest;

	// Inputs
	reg [5:0] Read1;
	reg [5:0] Read2;
	reg [5:0] WriteReg;
	reg [63:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [63:0] Data1;
	wire [63:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	registerfile uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.clock(clock), 
		.Data1(Data1), 
		.Data2(Data2)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#50;
		#50; RegWrite = 1; WriteData = 64'h5555555555555555; WriteReg = 6'b000101;
		#50; clock = 1;
		#50; RegWrite = 1; WriteData = 64'haaaaaaaaaaaaaaaa; WriteReg = 6'b001010; clock = 0;
		#50; clock = 1;
		#50; Read1 = 6'b000101; Read2 = 6'b001010; RegWrite = 0; clock = 0;
        
		// Add stimulus here

	end
      
endmodule

