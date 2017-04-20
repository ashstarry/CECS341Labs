`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:54:12 04/20/2017
// Design Name:   PCIMID_RFALUDMRF_TopModule
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab7_Branch/Lab7_TestFixure.v
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

module Lab7_TestFixure;

	// Inputs
	reg Clock;

	// Instantiate the Unit Under Test (UUT)
	PCIMID_RFALUDMRF_TopModule uut (
		.Clock(Clock)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;

		Clock = 0;
		
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		#20;Clock = 0;
		#20;Clock = 1;		
		
		$stop;

	end
      
endmodule

