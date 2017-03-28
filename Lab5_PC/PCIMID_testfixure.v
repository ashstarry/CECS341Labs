`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:57:31 03/27/2017
// Design Name:   PCIMID
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab5_PC/PCIMID_testfixure.v
// Project Name:  Lab5_PC
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

	// Instantiate the Unit Under Test (UUT)
	PCIMID uut (
		.Clock(Clock)
	);

	initial begin
		// Initialize Inputs
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
	end
      
endmodule

