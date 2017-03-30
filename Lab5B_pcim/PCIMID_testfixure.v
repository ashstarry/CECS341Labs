`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:00 03/29/2017
// Design Name:   PCIMID
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab5B_pcim/PCIMID_testfixure.v
// Project Name:  Lab5B_pcim
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
	wire [31:0] InstrOut;

	// Instantiate the Unit Under Test (UUT)
	PCIMID uut (
		.Clock(Clock), 
		.InstrOut(InstrOut)
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
		#50; Clock = 1;
		#50; Clock = 0;
		#50; Clock = 1;
		#50; Clock = 0;
		#50; Clock = 1;
		#50; Clock = 0;
		#50; Clock = 1;
		#50; Clock = 0;
		
		
		$stop; //STAHP
	
        
		// Add stimulus here

	end
      
endmodule

