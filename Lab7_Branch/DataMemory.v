`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:40 02/14/2017 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
	input [63:0] Address,
	input clock,
	input MemRead,
	input MemWrite,
	input [63:0] WriteData,
	output reg [63:0] ReadData
    );
	 
	 reg [7:0] DM [0:255];
	 
	 reg [7:0] addr = 0;
	 
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
	 
	 initial
	 begin
	 DM[0] = 8'h00;
	 DM[1] = 8'h00;
	 DM[2] = 8'h00;
	 DM[3] = 8'h00;
	 DM[4] = 8'h00;
	 DM[5] = 8'h00;
	 DM[6] = 8'h00;
	 
	 DM[40] = 8'h55;
	 DM[41] = 8'h55;
	 DM[42] = 8'h55;
	 DM[43] = 8'h55;
	 DM[44] = 8'h55;
	 DM[45] = 8'h55;
	 DM[46] = 8'h55;
	 DM[47] = 8'h55;
	 
	 DM[80] = 8'haa;
	 DM[81] = 8'haa;
	 DM[82] = 8'haa;
	 DM[83] = 8'haa;
	 DM[84] = 8'haa;
	 DM[85] = 8'haa;
	 DM[86] = 8'haa;
	 DM[87] = 8'haa;
	 
	 end

endmodule
