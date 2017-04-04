`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:02:30 03/31/2017
// Design Name:   PCIMID_RFALUDMRF_TopModule
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab6_Integration_of_PCIMID_with_RFALUDMRF/TopModule_testfixure.v
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

module TopModule_testfixure;

	// Inputs
	reg PC_Clock;
	reg RF_Clock;
	reg DM_Clock;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	PCIMID_RFALUDMRF_TopModule uut (
		.PC_Clock(PC_Clock), 
		.RF_Clock(RF_Clock), 
		.DM_Clock(DM_Clock), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		PC_Clock = 0;
		RF_Clock = 0;
		DM_Clock = 0;

		#50;PC_Clock = 1;
		#50;PC_Clock = 0;
		#50;PC_Clock = 1;
		#50;PC_Clock = 0;
	
		
	
		
        
		// Add stimulus here

	end
      
endmodule

