`timescale 1ns / 1ps
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
	 IM[0]  = 8'b11111000;//Load2 beginning  from address 40
	 IM[1]  = 8'b010_00010;
	 IM[2]  = 8'b1000_00_00;
	 IM[3]  = 8'b000_00101;// register 5 value//load1 ending 
	 
	 //load2
	 IM[4]  = 8'b11111000;//load3 beginning from address 80
	 IM[5]  = 8'b010_00101;
	 IM[6]  = 8'b0000_00_00;
	 IM[7]  = 8'b000_01010;//register 10 value//load1 ending 
	 

	 
	 //AluOp1
	  //and to r3
	 IM[8]   = 8'b10001010;	
	 IM[9]   = 8'b000_01010;	//and reg5 with reg10to reg 1
	 IM[10]  = 8'b000000_00;  // x3,x5,x10
	 IM[11]  = 8'b101_00001;
	 	 
	 //or to r4
	 IM[12]  = 8'b10101010;	
	 IM[13]  = 8'b000_01010;	//and reg5 with reg10to reg 1
	 IM[14]  = 8'b000000_00;  // x3,x5,x10
	 IM[15]  = 8'b101_00010;
	 
	 
	 //add to r1
	 IM[16]  = 8'b10001011;	
	 IM[17]  = 8'b000_01010;	//add reg5 with reg10to reg 1
	 IM[18]  = 8'b000000_00;  // x1,x5,x10
	 IM[19]  = 8'b101_00011;	
	 
	 
	 //sub to r2
	 IM[20]  = 8'b11001011;	
	 IM[21]  = 8'b000_01010;	//subtract reg5 with reg10to reg 1
	 IM[22]  = 8'b000000_00;  // x2,x5,x10
	 IM[23]  = 8'b101_00100;
	 
	 
	 
	//branch
	 IM[24]  = 8'b10110100_;	
	 IM[25]  = 8'b00000000;	//
	 IM[26]  = 8'b00000000;  // x3,x5,x10
	 IM[27]  = 8'b101_11111;
	 
	 
	
	 //Store to 8
	 IM[28]  = 8'b11111000;	
	 IM[29]  = 8'b000_00000;	//Store x1 to 
	 IM[30]  = 8'b1000_00_00;
	 IM[31]  = 8'b000_00001;
	 
	  //Store to 16
	 IM[32]  = 8'b11111000;	
	 IM[33]  = 8'b000_00001;	//Store x2 to 0
	 IM[34]  = 8'b0000_00_00;
	 IM[35]  = 8'b000_00010;
	 
	  //Store to 24
	 IM[36]  = 8'b11111000;	
	 IM[37]  = 8'b000_00001;	//Store x3 to 0
	 IM[38]  = 8'b1000_00_00;
	 IM[39]  = 8'b000_00011;
	 
	  //Store to 32
	 IM[40]  = 8'b11111000;	
	 IM[41]  = 8'b000_00010;	//Store x4 to 0
	 IM[42]  = 8'b0000_00_00;
	 IM[43]  = 8'b000_00100;
	 

	 //Store to 48
	 IM[44]  = 8'b11111000;	
	 IM[45]  = 8'b000_00011;	//Store x1 to 0
	 IM[46]  = 8'b0000_00_00;
	 IM[47]  = 8'b000_00001;
	 
	  //Store to 56
	 IM[48]  = 8'b11111000;	
	 IM[49]  = 8'b000_00011;	//Store x2 to 0
	 IM[50]  = 8'b1000_00_00;
	 IM[51]  = 8'b000_00010;
	 
	  //Store to 64
	 IM[52]  = 8'b11111000;	
	 IM[53]  = 8'b000_00100;	//Store x3 to 0
	 IM[54]  = 8'b0000_00_00;
	 IM[55]  = 8'b000_00011;
	 
	  //Store to 72
	 IM[56]  = 8'b11111000;	
	 IM[57]  = 8'b000_00100;	//Store x4 to 0
	 IM[58]  = 8'b1000_00_00;
	 IM[59]  = 8'b000_00100;

	
	 end
endmodule
