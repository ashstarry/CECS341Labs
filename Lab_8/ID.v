`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:56 03/30/2017 
// Design Name: 
// Module Name:    ID 
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
module ID(Opcode, Reg2Loc,ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);



input [10:0]  Opcode;//11 bit opcode
output reg  Reg2Loc;
output reg ALUSrc;
output reg MemtoReg;
output reg RegWrite;
output reg MemRead;
output reg MemWrite;
output reg Branch;
output reg [1:0] ALUOp;


//we need
//4 R type opcodes
//one STUR Opcode
	always @(Opcode)
	begin
				case(Opcode)
				11'b11111000010: begin //load
									  Reg2Loc <= 0; ALUSrc <=1; MemtoReg <= 1; RegWrite <= 1;
									  MemRead <= 1; MemWrite <= 0; ALUOp <= 00; Branch <= 0;
									  end
				
				11'b10001011000: begin //RF add
									  Reg2Loc <= 0; ALUSrc <=0; MemtoReg <= 0; RegWrite <= 1;
									  MemRead <= 0; MemWrite <= 0; ALUOp <= 10; Branch <= 0;
									  end
									  
				11'b11001011000: begin //RF subtract
										Reg2Loc <= 0; ALUSrc <=0; MemtoReg <= 0; RegWrite <= 1;
									  MemRead <= 0; MemWrite <= 0;  ALUOp <= 10; Branch <= 0;
									  end
									  
				11'b10001010000: begin //RF and 
									  Reg2Loc <= 0; ALUSrc <=0; MemtoReg <= 0; RegWrite <= 1;
									  MemRead <= 0; MemWrite <= 0;  ALUOp <= 10; Branch <= 0;
									  end
									  
				11'b10101010000: begin //RF or
									  Reg2Loc <= 0; ALUSrc <=0; MemtoReg <= 0; RegWrite <= 1;
									  MemRead <= 0; MemWrite <= 0; ALUOp <= 10; Branch <= 0;
									  end
									  
				11'b11111000000: begin //Store
									  Reg2Loc <= 1; ALUSrc <=1; MemtoReg <= 0; RegWrite <= 0;
										MemRead <=0; MemWrite <= 1; ALUOp <= 00; Branch <= 0;
									  end
									  
				endcase					  
								case(Opcode [10:3])				  
										8'b10110100:  begin//branch
									  	Reg2Loc <= 1; ALUSrc <=0; MemtoReg <= 1; RegWrite <= 0;
										MemRead <=0; MemWrite <= 0; ALUOp <= 01; Branch <= 1;
										end
										
									endcase		  
 end

		
	

			
 
endmodule
