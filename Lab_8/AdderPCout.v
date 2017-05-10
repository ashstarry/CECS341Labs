`timescale 1ns / 1ps
module AdderPCout( in, out);

input [63:0] in;
output reg [63:0] out;

always@(in)
	out <= in + 4;

endmodule
