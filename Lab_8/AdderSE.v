`timescale 1ns / 1ps


module Adder_Branch(A, B, out);//is to get the sum of PC and Offset
	
	input [63:0]  A;
	input [63:0]  B;
	output [63:0] out;
	
	assign  out = A + B;
  
endmodule
