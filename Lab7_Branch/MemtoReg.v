`timescale 1ns / 1ps
module MemtoReg(
	input [63:0] DMIn,
	input [63:0] ALUIn,
	input Select,
	output reg [63:0] ToRegOut
    );
	 
	 always @ (DMIn,ALUIn,Select)
		case(Select)
			1: ToRegOut <= DMIn;
			0: ToRegOut <= ALUIn;
		endcase

endmodule
