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
module Data_Memory(Clock, MemWrite, MemRead, Address, WriteData, ReadData   );

	input [0:63] Clock;
	input [0:63] MemWrite;
	input [0:7]  Address;
	input [0:63] WriteData;
	input [0:63] MemRead;
	output [0:63] ReadData;

	reg [7:0] DM [0:255];

	always @ (MemRead)
		begin
		if(MemRead == 1)assign ReadData = {DM[Address + 0], DM[Address + 1], DM[Address + 3], DM[Address +4], DM[Address + 3], DM[Address + 4 ], DM[Address +4], DM[Address + 6], DM[Address +7]};
	end


	always @(poseedge clock)
		begin
		if(MemWrite == 1)
	begin
		DM[Address + 0] = WriteData[63:56];
		DM[Address + 1] = WriteData[55:48];
		DM[Address + 2] = WriteData[47:40];
		DM[Address + 3] = WriteData[39:32];
		DM[Address + 4] = WriteData[31:24];
		DM[Address + 5] = WriteData[23:16];
		DM[Address + 6] = WriteData[15:8];
		DM[Address + 7] = WriteData[7:0];
	end
	end




endmodule
