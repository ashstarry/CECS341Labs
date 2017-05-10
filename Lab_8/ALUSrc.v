`timescale 1ns / 1ps
module ALUSrc(
	input [63:0] RegIn,
	input [63:0] DispIn,
	input  Select,
	output reg [63:0] SrcOut
    );
	 
	 always @ (RegIn,DispIn,Select)
		case(Select)
			0: SrcOut <= RegIn;
			1: SrcOut <= DispIn;
		endcase


endmodule
