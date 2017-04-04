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
module IM(Pc, InstrOut);

	 input [63:0]Pc;
	 output reg [31:0] InstrOut;
	
	 reg [7:0] IM [0:255];
	 reg [7:0] addr = 0;

	
	  always@(Pc)
			 begin
			 addr = Pc[7:0];
			 assign InstrOut = {
				IM[addr + 0],
				IM[addr + 1],
				IM[addr + 2],
				IM[addr + 3]
			 };
	  end

	 initial
	 begin
	 //load1
	 IM[0] = 8'b11111000;//Load1 beginning 
	 IM[1] = 8'b010_00010;// register 5 value
	 IM[2] = 8'b0000_00_00;
	 IM[3] = 8'b000_00101;//load1 ending 
	 
	 //load2
	 IM[4] = 8'b11111000;//load2 beginning
	 IM[5] = 8'b01000101;//register 6 value
	 IM[6] = 8'b00000000;
	 IM[7] = 8'b00001010;//load1 ending 
	 
	 //AluOp1
	 
	 //add
	 IM[8] = 8'b10001011;	
	 IM[9] = 8'b00001010;	//add reg5 with reg6 to reg 1
	 IM[10] = 8'b00000000;
	 IM[11] = 8'b10100001;	
	 
	 //subtract
	 IM[12] = 8'b11001011;	
	 IM[13] = 8'b00001010;	//subtract reg5 with reg6 to reg 2
	 IM[14] = 8'b00000000;
	 IM[15] = 8'b10100010;	
	 
	 //and
	 
	 IM[16] = 8'b10001010;	
	 IM[17] = 8'b00001010;	//and reg5 with reg6 to reg 3
	 IM[18] = 8'b00000000;
	 IM[19] = 8'b10100011;
	 
	 //or
	 IM[20] = 8'b10101010;	
	 IM[21] = 8'b00001010;	//or reg5 with reg6 to reg 3
	 IM[22] = 8'b00000000;
	 IM[23] = 8'b10100100;
	 
	 //store
	 
	  //Store 1
	 IM[24] = 8'b11111000;	
	 IM[25] = 8'b00000000;	//Store x1 to 0
	 IM[26] = 8'b00000000;
	 IM[27] = 8'b00000001;
	 
	   //Store 2
	 IM[28] = 8'b11111000;	
	 IM[29] = 8'b00000000;	//Store x2 to 8
	 IM[30] = 8'b10000000;
	 IM[31] = 8'b00000010;
	 
	   //Store 3
	 IM[32] = 8'b11111000;	
	 IM[33] = 8'b00000001;//Store x3 to 16 
	 IM[34] = 8'b00000000;
	 IM[35] = 8'b00000011;
	 
	   //Store 4
	 IM[36] = 8'b11111000;	
	 IM[37] = 8'b00000001;	//Store x4 to 24
	 IM[38] = 8'b10000000;
	 IM[39] = 8'b00000100;
	 
	
	 end
endmodule
