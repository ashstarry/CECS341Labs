`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:02:42 03/21/2017
// Design Name:   AdderPCout
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab5_PC/PC_TestFixure.v
// Project Name:  Lab5_PC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AdderPCout
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_TestFixure;

	// Inputs
	reg AdderIn;
	reg AdderOut;

	// Instantiate the Unit Under Test (UUT)
	AdderPCout uut (
		.AdderIn(AdderIn), 
		.AdderOut(AdderOut)
	);

	initial begin
		// Initialize Inputs
		AdderIn = 0;
		AdderOut = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

