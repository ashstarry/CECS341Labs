`timescale 1ns / 1ps
module PC(PCin, PCout, Clock);

input [63:0] PCin;
input Clock;
output reg[63:0] PCout;

reg [63:0] regPC;


	always@(posedge Clock)
	 regPC <= PCin;
	

		always@(regPC)
			PCout <= regPC;
	

	
	initial begin
		regPC = 0;
	end

endmodule

