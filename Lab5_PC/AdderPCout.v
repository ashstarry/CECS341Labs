`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:17 03/21/2017 
// Design Name: 
// Module Name:    AdderPCout 
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
module AdderPCout( AdderIn ,AdderOut);

input AdderIn;
wire AdderOut;

assign AdderOut = PCOUT + 4;


endmodule
