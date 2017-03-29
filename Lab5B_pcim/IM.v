`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:22 03/28/2017 
// Design Name: 
// Module Name:    IM 
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
module IM(Address, clock, WriteData);
	input [63:0] Address;
	input clock;
	input MemRead;
	output reg [63:0] ReadData;
    
	 
	 reg [7:0] IM [0:255];
	 
	 reg [7:0] addr = 0;
	 
	 
	 
	 
	 
	 
	 
	 
	/*
	 always @ (MemRead, Address)
	 begin
	 if(MemRead ==1)
	 begin
	 addr = Address[7:0];
	 assign ReadData = {
		DM[addr + 0],
		DM[addr + 1],
		DM[addr + 2],
		DM[addr + 3],
		DM[addr + 4],
		DM[addr + 5],
		DM[addr + 6],
		DM[addr + 7]
	};
	end
	end
	 
	 always @ (posedge clock)
	 begin
	 if(MemWrite == 1)
	 begin
	 addr = Address[7:0];
	 DM[addr + 0] = WriteData[63:56];
	 DM[addr + 1] = WriteData[55:48];
	 DM[addr + 2] = WriteData[47:40];
	 DM[addr + 3] = WriteData[39:32];
	 DM[addr + 4] = WriteData[31:24];
	 DM[addr + 5] = WriteData[23:16];
	 DM[addr + 6] = WriteData[15:8];
	 DM[addr + 7] = WriteData[7:0];
	 end
	 end
	*/
	 initial
	 begin
	 IM[0] = 8'h00;
	 IM[1] = 8'h00;
	 IM[2] = 8'h00;
	 IM[3] = 8'h00;
	 IM[4] = 8'h00;
	 IM[5] = 8'h00;
	 IM[6] = 8'h00;
	 IM[40] = 8'h55;
	 IM[41] = 8'h55;
	 IM[42] = 8'h55;
	 IM[43] = 8'h55;
	 IM[44] = 8'h55;
	 IM[45] = 8'h55;
	 IM[46] = 8'h55;
	 IM[47] = 8'h55;
	 IM[80] = 8'haa;
	 IM[81] = 8'haa;
	 IM[82] = 8'haa;
	 IM[83] = 8'haa;
	 IM[84] = 8'haa;
	 IM[85] = 8'haa;
	 IM[86] = 8'haa;
	 IM[87] = 8'haa;
	 end


endmodule
