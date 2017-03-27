`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:34 03/21/2017 
// Design Name: 
// Module Name:    PC 
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
module PC(PCin, PCout, Clock);

input PCin;
input Clock;
output reg[63:0] PCout;



reg [63:0] regPC;


always@(posedge Clock) 
	 regPC <= PCin;
always@(regPC)	

 PCout <= 	regPC;
	
initial begin
	regPC = 0;
	end

endmodule
