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
module PCIMID(Clock);

input Clock;
wire [63:0] AdderOut;
wire [63:0] PCout;



//AdderPCout( AdderIn ,AdderOut);
//PC(PCin, PCout, Clock);


	AdderPCout AdderPCout( .in(PCout), .out(AdderOut));
	PC   PC(.PCin(AdderOut), .PCout(PCout), .Clock(Clock));
endmodule
