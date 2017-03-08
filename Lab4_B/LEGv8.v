`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:49 01/25/2017 
// Design Name: 
// Module Name:    LEGv8 
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
module LEGv8(
    input [3:0] ALUoperation,
    input [63:0] A,
    input [63:0] B,
    output reg [63:0] ALUresult,
    output Zero
    );

	assign Zero = (ALUresult == 0);
	always @(ALUoperation, A, B) begin
		case(ALUoperation)
			0: ALUresult <= A & B;
			1: ALUresult <= A | B;
			2: ALUresult <= A + B;
			6: ALUresult <= A - B;
			7: ALUresult <= B;
			12: ALUresult <= ~(A | B);
		endcase
	end
			
endmodule
