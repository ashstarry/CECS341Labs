`timescale 1ns / 1ps
module gate1( Branch_in, Zero_in, PCSrc_out);
	input Branch_in, Zero_in;
	output PCSrc_out;
	
	assign PCSrc_out = Branch_in & Zero_in;

endmodule
