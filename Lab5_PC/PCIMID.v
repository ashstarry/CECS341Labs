`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:07 03/21/2017 
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
module PCIMID();
input PCin;
input Clock;

output AdderOut;
output [63:0] PCout;

wire AdderIn;
	AdderPCout AdderPCout( .AdderIn(AdderIn) , .AdderOut(AdderOut));
	PC                 PC(.PCin(PCin), .PCout(PCout), .Clock(Clock));
