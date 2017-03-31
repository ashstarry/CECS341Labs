`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:31 03/27/2017 
// Design Name: 
// Module Name:    PCIMID 
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
module PCIMID(Clock, Reg2Loc,ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, ALUOp);

input Clock;




output Reg2Loc;
output ALUSrc;
output MemtoReg;
output RegWrite;
output MemRead;
output MemWrite;
output [1:0] ALUOp;

wire [31:0]  InstrOut;
wire  [63:0] AdderOut;
wire  [63:0] PCout;

//ID(Opcode, Reg2Loc,ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
//AdderPCout( AdderIn ,AdderOut);
//PC(PCin, PCout, Clock);
	
		//IM  IM(.Pc(PCout), .InstrOut(InstrOut));
	//AdderPCout AdderPCout( .in(PCout), .out(AdderOut));
	//PC   PC(.PCin(AdderOut), .PCout(PCout), .Clock(Clock));
	
	AdderPCout AdderPCout( .in(       PCout           ), //adder 
								  .out(      AdderOut        ) //adderout wire
								 );
								  
	              PC  PC (.PCin(      AdderOut        ), //pc module, adderout wire
								 .PCout(     PCout           ), 
								 .Clock(     Clock           )       
								 );
								 
	              IM  IM(.Pc(         PCout           ), //instruction module, pc out wire
					         .InstrOut(   InstrOut  )    
								 );
								
	              ID  ID(.Opcode(     InstrOut [31:21]), // instruction decoder (Control), instruc out wire
					         .Reg2Loc(    Reg2Loc         ), 
								.ALUSrc(     ALUSrc          ), 
								.MemtoReg(   MemtoReg        ), 
								.RegWrite(   RegWrite        ), 
			               .MemRead(    MemRead         ), 
								.MemWrite(   MemWrite        ),
								.ALUOp(      ALUOp           )
								 );
endmodule
