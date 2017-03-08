`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:06 02/21/2017 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(clock, MemWrite, MemRead, Address, WriteData, ReadData   );

	input  clock;
	input  MemWrite;
	input [63:0]  Address;
	input [63:0] WriteData;
	input  MemRead;
	output reg [63:0] ReadData;

	reg [7:0] DM [0:255];

	always @ (MemRead)
		begin
		if(MemRead == 1)
		assign ReadData = {DM[Address + 0], DM[Address + 1], DM[Address + 3], DM[Address +4], DM[Address + 3], DM[Address + 4 ], DM[Address + 5], DM[Address + 6], DM[Address +7]};
	end


		always @ (posedge clock)
	begin
	if (MemWrite ==1)
	begin
	DM[Address + 0] = WriteData [63:56];
	DM[Address  +1] = WriteData [55:48];
	DM[Address  +2] = WriteData [47:40];
	DM[Address  +3] = WriteData [39:32];
	DM[Address + 4] = WriteData [31:24];
	DM[Address  +5] = WriteData [23:16];
	DM[Address  +6] = WriteData [15:8];
	DM[Address  +7] = WriteData [7:0];
	end
	end		// This is "Big Endian", Higher significance byte is in lower address end.

	
	initial 
		begin
			DM[0] = 8'h00;	// beginning of 0th  double word 
			DM[1] = 8'h00;
			DM[2] = 8'h00;
			DM[3] = 8'h00;
			DM[4] = 8'h00;	
			DM[5] = 8'h00;
			DM[6] = 8'h00;
			DM[7] = 8'h00;	// end of 0th double word
			//…			// no need as we will not use these locations
			DM[40] = 8'h55;	// This is the beginning of the fifth double word.  Remember Byte addresses are in decimal here (without 0x prefix).
			DM[41] = 8'h55;
			DM[42] = 8'h55;
			DM[43] = 8'h55;
			DM[44] = 8'h55;
			DM[45] = 8'h55;
			DM[46] = 8'h55;
			DM[47] = 8'h55; 	//This is the end of the fifth double word
			//…….			// no need as we will not use these locations
			DM[80] = 8'haa;	//This is the beginning of the tenth (ath) double word
			DM[81] = 8'haa;
			DM[82] = 8'haa; 
			DM[83] = 8'haa;
			DM[84] = 8'haa;	
			DM[85] = 8'haa;
			DM[86] = 8'haa; 	
			DM[87] = 8'haa; 	//This is the end of the tenth (ath) double word
			//…			// no need as we will not use these locations
	end





endmodule
