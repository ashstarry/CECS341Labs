`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:37 03/31/2017 
// Design Name: 
// Module Name:    PCIMID_RFALUDMRF_TopModule 
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
module PCIMID_RFALUDMRF_TopModule(Clock, Reg2Loc,ALUSrc, MemtoReg, 
											RegWrite, MemRead, MemWrite, ALUOp, 
											Rt, RegWrite, RF_clock, DM_clock, MemRead, 
											MemWrite,DispIn, ALUSrc_Select, MemtoReg_Select, 
											Reg2Loc_Select, Zero,);

      input Clock;
      input [1:0] ALUOp;
		input [10:0] OpCodefield;
		input [4:0] Rn;
		input [4:0] Rm;

		input [4:0] Rt;
		input RegWrite;
		input RF_clock;
		input DM_clock;
		input MemRead;
		input MemWrite;
		input [8:0] DispIn;
		input ALUSrc_Select;
		input MemtoReg_Select;
		input  Reg2Loc_Select;
		
		
		output Reg2Loc;
		output ALUSrc;
		output MemtoReg;
		output RegWrite;
		output MemRead;
		output MemWrite;
		output [1:0] ALUOp;
		
      output Zero;
		wire [31:0]  InstrOut;
		wire  [63:0] AdderOut;
		wire  [63:0] PCout;

		wire [63:0] A;
		wire [63:0] SrcOut;		
		wire [63:0] ReadData;
		wire [63:0] SEout;
		wire [63:0] ALUresult;
		wire [3:0] ALUoperation;
		wire [63:0] ToRegOut;
		wire [63:0] ReadData2Out;
		wire [4:0] rrA2Out;


		//lab 5
		AdderPCout AdderPCout( .in(         PCout           ), //adder that connects to pc and instruction memory
									  .out(        AdderOut        ) //adderout wire
									 );
									  
						  PC  PC (.PCin(        AdderOut        ), //pc module, adderout wire
									 .PCout(       PCout           ), 
									 .Clock(       Clock           )       
									 );
									 
						  IM   IM(.Pc(          PCout           ), //instruction module, pc out wire
									.InstrOut(     InstrOut  )    
									 );
									
						  ID   ID(.Opcode(      InstrOut [31:21]), // instruction decoder (Control), instruc out wire
									.Reg2Loc(      Reg2Loc         ), 
									.ALUSrc(       ALUSrc          ), 
									.MemtoReg(     MemtoReg        ), 
									.RegWrite(     RegWrite        ), 
									.MemRead(      MemRead         ), 
									.MemWrite(     MemWrite        ),
									.ALUOp(        ALUOp           )
									 );
		
		//lab4
      ALUwithControl Lab2c(.ALUOp(        ALUOp           ), //alu with control
		                     .OpCodefield(  OpCodefield     ), 
									.A(            A               ), 
									.B(            SrcOut          ), 
									.ALUresult(    ALUresult       ), 
									.Zero(         Zero            ), 
									.ALUoperation( ALUoperation    )
									);
		
		  registerfile Lab3a(.Read1(        Rn              ), //register file
		                     .Read2(        rrA2Out         ), 
									.WriteReg(     Rt              ), 
									.WriteData(    ToRegOut        ), 
									.RegWrite(     RegWrite        ), 
									.clock(        RF_clock        ), 
									.Data1(        A               ), 
									.Data2(        ReadData2Out    )
									);
		
		    
		
		       DataMemory DM(.Address(      ALUresult       ), //data memory
		                     .clock(        DM_clock        ), 
									.MemRead(      MemRead         ), 
									.MemWrite(     MemWrite        ),
		                     .WriteData(    ReadData2Out    ), 
									.ReadData(     ReadData        )
									);
		
	                	SE SE(.SEin(         DispIn          ), //sign extender
		                     .SEout(        SEout           )
									);
					
				//MUXES					
				 ALUSrc ALUSrc(.RegIn(        ReadData2Out    ), //alu source  MUX
								   .DispIn(       SEout           ), 
								   .Select(       ALUSrc_Select   ), 
								   .SrcOut(       SrcOut          )
									);
									
		   MemtoReg MemtoReg(.DMIn(         ReadData        ), //mem to reg  MUX 
			                  .ALUIn(        ALUresult       ), 
									.Select(       MemtoReg_Select ), 
									.ToRegOut(     ToRegOut        )
									);
	
		     Reg2Loc Reg2Loc(.RmIn(         Rm              ), // reg        MUX
			                  .RtIn(         Rt              ), 
									.Select(       Reg2Loc_Select  ), 
									.rrA2Out(      rrA2Out         )
									);
			//missing modules for branch instructions
			
			//shift left 2
			
			//Add
			
			//Mux
			
			//And Gate

endmodule
