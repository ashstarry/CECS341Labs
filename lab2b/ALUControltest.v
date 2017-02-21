`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:42 01/25/2017
// Design Name:   ALUControl
// Module Name:   D:/CECS341/lab2b/ALUControltest.v
// Project Name:  lab2b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUControltest;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpCodefield;

	// Outputs
	wire [3:0] ALUoperation;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALUOp(ALUOp), 
		.OpCodefield(OpCodefield), 
		.ALUoperation(ALUoperation)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpCodefield = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 ALUOp = 2'b10; OpCodefield = 11'b10001010000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b10101010000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b10001011000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b11001011000;
		#100 ALUOp = 2'b10; OpCodefield = 11'b11111000010;
		#100 ALUOp = 2'b10; OpCodefield = 11'b11101010000;

	end
      
endmodule

