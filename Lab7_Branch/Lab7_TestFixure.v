`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:22:07 04/19/2017
// Design Name:   PCIMID_RFALUDMRF_TopModule
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab7_Branch/lab7_TestFixure.v
// Project Name:  Lab7_Branch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCIMID_RFALUDMRF_TopModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab7_TestFixure;

	// Inputs
	reg Clock;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	PCIMID_RFALUDMRF_TopModule uut (
		.Clock(Clock), 
		.Zero(Zero)
	);

	initial begin
	
	
		// Initialize Inputs
		Clock = 0;
		
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		#50;Clock = 0;
		#50;Clock = 1;
		$stop;
		// Add stimulus here

	end
      
endmodule

