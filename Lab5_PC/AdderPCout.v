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
module AdderPCout( in, out);

input [63:0] in;
output reg [63:0] out;

always@(in)
	out <= in + 4;

endmodule
