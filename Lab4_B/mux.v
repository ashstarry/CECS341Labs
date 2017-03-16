`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:35 01/23/2017 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input[63:0] In0,
    input [63:0]In1,
    input  Sel,
    output reg [63:0] Out
    );
	 
always@(In0,In1,Sel)
case(Sel)
0:Out<=In0;
1:Out<=In1;

endcase

endmodule
