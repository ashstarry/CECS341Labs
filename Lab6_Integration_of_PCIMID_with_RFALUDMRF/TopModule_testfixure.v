`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:37:40 04/05/2017
// Design Name:   PCIMID_RFALUDMRF_TopModule
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab6_Integration_of_PCIMID_with_RFALUDMRF/TopModule_TestFixure.v
// Project Name:  Lab6_Integration_of_PCIMID_with_RFALUDMRF
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

module TopModule_TestFixure;

	// Inputs
	reg Clock;


	// Outputs
	wire Branch;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	PCIMID_RFALUDMRF_TopModule uut (
		.Clock(Clock), 
		.Branch(Branch), 
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
	#50;Clock = 0;
	
	


        
		// Add stimulus here

	end
      
endmodule

