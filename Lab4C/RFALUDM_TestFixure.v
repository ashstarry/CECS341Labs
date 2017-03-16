`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:04:57 03/14/2017
// Design Name:   RFALUDM
// Module Name:   C:/Users/jvarg/Documents/CECS341Labs/Lab4C/RFALUDM_TestFixure.v
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

module RFALUDM_TestFixure;

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
		MemtoReg_Select = 0;
		Reg2Loc_Select = 0;
		ALUSrc_Select = 0;
		

		MemRead = 1; DispIn = 9'b000101000; ALUSrc_Select = 1; RegWrite = 1; Rt = 1; ALUOp = 2'b11; Rn = 0;
		#50; RF_clock = 1;
		#50; RF_clock = 0; MemRead = 1; DispIn = 9'b001010000; ALUSrc_Select = 1; RegWrite = 1; Rt = 2;
		
		//begin reading phase
		#50; RF_clock = 1; Rn = 1; Rm = 2;
		
		//execute alu operations                                                                     //rf to alu B wire
		#50  ALUOp = 2'b10; OpCodefield = 11'b10001011000; Rt = 3; RF_clock = 0; MemtoReg_Select = 1; ALUSrc_Select = 0;Reg2Loc_Select = 0;  
		#50; RF_clock = 1;
		#50 ALUOp = 2'b10; OpCodefield = 11'b11001011000; Rt = 4; RF_clock = 0;
		#50; RF_clock = 1;
		
		//Load to prepare for  												  //write to memory
		#50; DM_clock = 0;Rn = 0;ALUOp = 2'b11; RF_clock = 0; MemtoReg_Select = 1;  ALUSrc_Select = 1; RegWrite = 0; Rt = 3;  MemWrite = 1; MemtoReg_Select = 1; Reg2Loc_Select = 1; DispIn = 0;//load register 3
		#50; DM_clock = 1;	                                                 
		#50; DM_clock = 0; Rt = 4; DispIn = 8; 
      //load register 3
		#50; DM_clock = 1;
		#50; Reg2Loc_Select = 0;Rn = 4; Rm = 3; DM_clock = 0;MemWrite = 0;
		
		
		#50;MemRead = 1; DispIn = 0; ALUOp = 2'b11; Rn = 0;ALUSrc_Select = 1;
		#50;  MemRead = 1; DispIn = 8; 
      end
endmodule

