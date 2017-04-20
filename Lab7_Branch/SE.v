`timescale 1ns / 1ps
module SE(SEin, SEout);
		input [31:0]SEin;
	   output reg [63:0] SEout;
		
		
		always @(SEin)
			case(SEin [31:24])
			 8'b10110100: SEout = {{ 45{SEin[23]}}, SEin[23:5]};
			default: SEout = {{55{SEin[20]}}, SEin[20:12]};
		endcase
		
endmodule
