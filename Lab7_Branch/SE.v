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
module SE(SEin, SEout);
		input [31:0]SEin;
	   output reg [63:0] SEout;
		
		
		always @(SEin)
			case(SEin [31:24])
			 8'b10110100: SEout = {{ 45{SEin[23]}}, SEin[23:5]};
			default SEout = {{55{SEin[20]}}, SEin[20:12]};
		endcase
		
endmodule
