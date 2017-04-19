`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:49 04/17/2017 
// Design Name: 
// Module Name:    gate1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module gate1( Branch_in, Zero_in, PCSrc_out);
	input Branch_in, Zero_in;
	output PCSrc_out;
	
	assign PCSrc_out = Branch_in & Zero_in;

endmodule
