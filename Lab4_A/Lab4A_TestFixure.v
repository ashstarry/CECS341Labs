`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:37:27 02/22/2017
// Design Name:   Data_Memory
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab4_A/Lab4A_TestFixure.v
// Project Name:  Lab4_A
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Lab4A_TestFixure;

	// Inputs
	reg [0:63] Clock;
	reg [0:63] MemWrite;
	reg [0:63] MemRead;
	reg [0:7] Address;
	reg [0:63] WriteData;

	// Outputs
	wire [0:63] ReadData;

	// Instantiate the Unit Under Test (UUT)
	Data_Memory uut (
		.Clock(Clock), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Address(Address), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		MemWrite = 0;
		MemRead = 0;
		Address = 0;
		WriteData = 0;

		//keep memread as 1 and memwrite as 0, give addresses as 40 and then as 80 and see whether the ReadData is right. 
		//address is 40
		#50 MemRead = 1; Address = 40; 
	
		//now address is 80
		#50 MemRead = 1; Address = 80; 
		
		//write data 64 hold
		#50 WriteData = 64'haaaaaaaaaaaaaaaa;
		
		//make clock go up
		#50 Clock = 1;

	end
      
endmodule

