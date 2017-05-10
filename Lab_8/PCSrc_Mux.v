`timescale 1ns / 1ps
module PCSrc_Mux(Pc_Add, ALu_Add,  PcSrc_Select, PcSrc_Out );
	input [63:0] Pc_Add;
	input [63:0] ALu_Add;
	input PcSrc_Select;
	output reg [63:0] PcSrc_Out;
    
	 
	 always @ ( Pc_Add, ALu_Add,PcSrc_Select)
		case(PcSrc_Select)
			0: PcSrc_Out <= Pc_Add;
			1: PcSrc_Out <= ALu_Add;
		endcase
endmodule 
