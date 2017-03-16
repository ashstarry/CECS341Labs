`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:21 02/07/2017 
// Design Name: 
// Module Name:    registerfile 
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
module registerfile(
		input [4:0] Read1,
		input [4:0] Read2,
		input [4:0] WriteReg,
		input [63:0] WriteData,
		input RegWrite,
		input clock,
		output [63:0] Data1,
		output [63:0] Data2
    );
	 
	 reg [63:0] RF[0:31];
	 integer i = 0;
	 initial
			for (i = 0; i <  32; i = i + 1)
					RF[i] = 64'h0000000000000000;

	 
	 assign Data1 = RF[Read1];
	 assign Data2 = RF[Read2];
	 
	always @(posedge clock) 
		if (RegWrite == 1) RF[WriteReg] <= WriteData;

endmodule
