`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:49 01/25/2017
// Design Name:   ALUwithControl
// Module Name:   D:/CECS341/lab2c/ALUwithControltest.v
// Project Name:  lab2c
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUwithControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUwithControltest;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpCodefield;
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] ALUresult;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALUwithControl uut (
		.ALUOp(ALUOp), 
		.OpCodefield(OpCodefield), 
		.A(A), 
		.B(B), 
		.ALUresult(ALUresult), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpCodefield = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 64'h5555555555555555;
		B = 64'haaaaaaaaaaaaaaaa;
		
		#100 ALUOp = 2'b10; OpCodefield = 11'b10001010000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b10101010000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b10001011000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b11001011000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b11111000010;
		#100 ALUOp = 2'b10; OpCodefield = 11'b11101010000;

	end
      
endmodule

