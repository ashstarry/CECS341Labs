`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:53 02/23/2017 
// Design Name: 
// Module Name:    SE 
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
module SE(
	input [8:0]SEin,
	output [63:0] SEout
    );
	 
	assign SEout = {{55{SEin[8]}}, SEin};

endmodule
