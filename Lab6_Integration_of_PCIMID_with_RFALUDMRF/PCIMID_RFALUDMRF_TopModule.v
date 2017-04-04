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
module PCIMID_RFALUDMRF_TopModule(PC_Clock,RF_Clock,DM_Clock, Zero);

      input PC_Clock;
		input RF_Clock;
		input DM_Clock;

	
		
	  output Zero;
	  
	   //Control wires
		wire Reg2Loc_Select;
		wire MemRead;
		wire MemtoReg_Select;
		wire [1:0] ALUOp;
		wire MemWrite;
		wire ALUSrc_Select;
		wire RegWrite;
		
      //Instruction memory wires		
		wire [31:0] InstrOut;
		wire [63:0] AdderOut;
		wire [63:0] PCout;

		wire [63:0] A;
		wire [63:0] SrcOut;	//	 ALUSrc;
		wire [63:0] ReadData;
		wire [63:0] SEout;
		wire [63:0] ALUresult;
		wire [3:0]  ALUoperation;
		wire [63:0] ToRegOut;
		wire [63:0] ReadData2Out;
		wire [4:0]  rrA2Out;


		//lab 5
		AdderPCout AdderPCout( .in(         PCout              ), //adder that connects to pc and instruction memory
									  .out(        AdderOut           ) //adderout wire
									 );
									  
						  PC  PC (.PCin(        AdderOut           ), //pc module, adderout wire
									 .PCout(       PCout              ), 
									 .Clock(       PC_Clock          )       
									 );
									 
						  IM   IM(.Pc(          PCout              ), //instruction module, pc out wire
									 .InstrOut(     InstrOut          )    
									 );
									
						  ID   ID(.Opcode(      InstrOut [31:21]   ), // CONNTROL MODULE = instruction decoder (Control), instruc out wire
									.Reg2Loc(      Reg2Loc_Select     ), //to   Reg2Loc mux
									.ALUSrc(       ALUSrc_Select      ), 
									.MemtoReg(     MemtoReg_Select    ), 
									.RegWrite(     RegWrite           ), 
									.MemRead(      MemRead            ), 
									.MemWrite(     MemWrite           ),
									.ALUOp(        ALUOp              )
									 );
									 
									 
			//lab4
		  registerfile Lab3a(.Read1(        InstrOut [9:5]     ), //register file, Rn
		                     .Read2(        rrA2Out            ), 
									.WriteReg(     InstrOut [4:0]     ), //rt
									.WriteData(    ToRegOut           ), 
									.RegWrite(     RegWrite           ), 
									.clock(        RF_Clock           ), 
									.Data1(        A                  ), 
									.Data2(        ReadData2Out       )
									);
									
		 	            SE SE(.SEin(         InstrOut [20:12]   ), //sign extender
		                     .SEout(        SEout              )
									);
									
      ALUwithControl Lab2c(.ALUOp(        ALUOp              ), //alu with control
		                     .OpCodefield(   InstrOut [31:21]  ), 
									.A(            A                  ), 
									.B(            SrcOut             ), 
									.ALUresult(    ALUresult          ), 
									.Zero(         Zero               ), 
									.ALUoperation( ALUoperation       )
									);
	
		       DataMemory DM(.Address(      ALUresult          ), //data memory
		                     .clock(        DM_clockero           ), 
									.MemRead(      MemRead            ), 
									.MemWrite(     MemWrite           ),
		                     .WriteData(    ReadData2Out       ), 
									.ReadData(     ReadData           )
									);
		
	               
					
				//MUXES					
				 ALUSrc ALUSrc(.RegIn(        ReadData2Out       ), //alu source  MUX
								   .DispIn(       SEout              ), 
								   .Select(       ALUSrc_Select      ), 
								   .SrcOut(       SrcOut             )
									);
									
		   MemtoReg MemtoReg(.DMIn(         ReadData           ), //mem to reg  MUX 
			                  .ALUIn(        ALUresult          ), 
									.Select(       MemtoReg_Select    ), 
									.ToRegOut(     ToRegOut           )
									);
	
		     Reg2Loc Reg2Loc(.RmIn(         InstrOut [20:16]   ), // reg, Rm        MUX
			                  .RtIn(         InstrOut [4:0]     ), //Rt
									.Select(       Reg2Loc_Select     ), 
									.rrA2Out(      rrA2Out            )
									);
			//missing modules for branch instructions
			
			//shift left 2
			
			//Add
			
			//Mux
			
			//And Gate
	

endmodule
