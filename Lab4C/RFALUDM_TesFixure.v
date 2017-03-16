`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:35:36 03/14/2017
// Design Name:   RFALUDM
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab4C/RFALUDM_TesFixure.v
// Project Name:  Lab4C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RFALUDM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFALUDM_TesFixure;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpCodefield;
	reg [4:0] Rn;
	reg [4:0] Rm;
	reg [4:0] Rt;
	reg RegWrite;
	reg RF_clock;
	reg DM_clock;
	reg MemRead;
	reg MemWrite;
	reg [8:0] DispIn;
	reg ALUSrc_Select;
	reg MemtoReg_Select;
	reg Reg2Loc_Select;
	reg [63:0] WriteData;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	RFALUDM uut (
		.ALUOp(ALUOp), 
		.OpCodefield(OpCodefield), 
		.Rn(Rn), 
		.Rm(Rm), 
		.Rt(Rt), 
		.RegWrite(RegWrite), 
		.RF_clock(RF_clock), 
		.DM_clock(DM_clock), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.DispIn(DispIn), 
		.ALUSrc_Select(ALUSrc_Select), 
		.MemtoReg_Select(MemtoReg_Select), 
		.Reg2Loc_Select(Reg2Loc_Select), 
		.WriteData(WriteData), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpCodefield = 0;
		Rn = 0;
		Rm = 0;
		Rt = 0;
		RegWrite = 0;
		RF_clock = 0;
		DM_clock = 0;
		MemRead = 0;
		MemWrite = 0;
		DispIn = 0;
		ALUSrc_Select = 0;
		MemtoReg_Select = 1;
		Reg2Loc_Select = 0;
		WriteData = 0;

		MemRead = 1; DispIn = 9'b000101000; ALUSrc_Select = 1; RegWrite = 1; WriteReg = 5; ALUOp = 2'b11; Read1 = 0;
		#50; RF_clock = 1;
		#50; RF_clock = 0; MemRead = 1; DispIn = 9'b001010000; ALUSrc_Select = 1; RegWrite = 1; WriteReg = 10;
		#50; RF_clock = 1; Read1 = 5; Read2 = 10;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10001010000; Rt = 1; RF_clock = 0; MemtoReg_Select = 0; ALUSrc_Select = 0;
		#50; RF_clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10101010000; Rt = 2; RF_clock = 0;
		#50; RF_clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b10001011000; Rt = 3; RF_clock = 0;
		#50; RF_clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11001011000; Rt = 4; RF_clock = 0;
		#50; RF_clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11111000010; Rt = 6; RF_clock = 0;
		#50; RF_clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11101010000; Rt = 7; RF_clock = 0;
		#50; RF_clock = 1;
		#50; Rn = 1; Rm = 2;
		#50; Rn = 3; Rm = 4;
		#50; Rn = 6; Rm = 7;

	end
      
endmodule

