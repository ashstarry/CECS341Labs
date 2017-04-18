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
	 IM[0] = 8'b11111000;//load1 beginning from address 8
	 IM[1] = 8'b010_00000;//register 0 value
	 IM[2] = 8'b1000_00_00;
	 IM[3] = 8'b000_00000;//load1 ending 
	 
	 //load2
	 IM[4] = 8'b11111000;//Load2 beginning  from address 40
	 IM[5] = 8'b010_00010;// register 1 value
	 IM[6] = 8'b1000_00_00;
	 IM[7] = 8'b000_00001;//load1 ending 
	 
	 //load3
	 IM[8] = 8'b11111000;//load3 beginning from address 80
	 IM[9] = 8'b010_00101;//register 2 value
	 IM[10] = 8'b0000_00_00;
	 IM[11] = 8'b00000010;//load1 ending 
	 

	 
	 //AluOp1
	 
	 //add
	 IM[12]  = 8'b10001011;	
	 IM[13]  = 8'b000_00001;	//add reg5 with reg10to reg 1
	 IM[14] = 8'b000000_00;  // x5,x0,x1
	 IM[15] = 8'b000_00101;	
	 
	 	 //add
	 IM[16]  = 8'b10001011;	
	 IM[17]  = 8'b000_00010;	//add reg5 with reg10to reg 1
	 IM[18] = 8'b000000_00;  // x3,x5,x2
	 IM[19] = 8'b101_00011;
	 

	 
	 //store
	 
	  //Store 1
	 IM[20] = 8'b11111000;	
	 IM[21] = 8'b000_00000;	//Store x3 to 0
	 IM[22] = 8'b0000_00_00;
	 IM[23] = 8'b000_000011;
	 

	
	 end
endmodule
