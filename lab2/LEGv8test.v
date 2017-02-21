`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:35:03 01/25/2017
// Design Name:   LEGv8
// Module Name:   D:/CECS341/lab2/LEGv8test.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LEGv8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LEGv8test;

	// Inputs
	reg [3:0] ALUoperation;
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] ALUresult;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	LEGv8 uut (
		.ALUoperation(ALUoperation), 
		.A(A), 
		.B(B), 
		.ALUresult(ALUresult), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUoperation = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//intialize A and B to given values
		A = 64'h5555555555555555;
		B = 64'haaaaaaaaaaaaaaaa;
		
		#100 ALUoperation = 0;
		#100 ALUoperation = 1;
		#100 ALUoperation = 2;
		#100 ALUoperation = 6;
		#100 ALUoperation = 7;
		#100 ALUoperation = 12;
		

	end
      
endmodule

