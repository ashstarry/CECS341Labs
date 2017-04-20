`timescale 1ns / 1ps
module PCIMID_RFALUDMRF_TopModule(Clock);

     input Clock;
	
	  
	  
	   //Control wires
		wire Reg2Loc_Select;
		wire MemRead;
		wire MemtoReg_Select;
		wire [1:0] ALUOp;
		wire MemWrite;
		wire ALUSrc_Select;
		wire RegWrite;
		wire  PCSrc_Select; 
		wire Zero;
      //Instruction memory wires		
		wire [31:0] InstrOut;
		wire [63:0] AdderOut;
		wire [63:0] PCout;

		wire [63:0] A;
		wire [63:0] SrcOut;	//	 ALUSrc;
		wire [63:0] ReadData;
		wire [63:0] SEout; //sign extender wire to shift left 2
		wire [63:0] ALUresult;
		wire [3:0]  ALUoperation;
		wire [63:0] ToRegOut;
		wire [63:0] ReadData2Out;
		wire [4:0]  rrA2Out;
		wire [63:0] PcSrc_Out;
		wire [63:0]BranchAdder_Result;
		wire [63:0] PCSrc; //PC mux
		wire [63:0]SL2_Out;//shift left 2 outout wire

		//and wires
	
      wire Branch;

		//lab 5
		AdderPCout AdderPCout( .in(         PCout              ), //adder that connects to pc and instruction memory
									  .out(        AdderOut           ) //adderout wire
									 );
									  
						  PC  PC (.PCin(     PcSrc_Out             ), //pc module, adderout wire
									 .PCout(       PCout              ), 
									 .Clock(       Clock              )       
									 );
									 
						  IM   IM(.Pc(          PCout              ), //instruction module, pc out wire
									 .InstrOut(    InstrOut           )    
									 );
									
						  ID   ID(.Opcode(      InstrOut [31:21]   ), // CONNTROL MODULE = instruction decoder (Control), instruc out wire
									.Reg2Loc(      Reg2Loc_Select     ), //to   Reg2Loc mux
									.ALUSrc(       ALUSrc_Select      ), 
									.MemtoReg(     MemtoReg_Select    ), 
									.RegWrite(     RegWrite           ), 
									.MemRead(      MemRead            ), 
									.MemWrite(     MemWrite           ),
									.ALUOp(        ALUOp              ),
									.Branch(       Branch             )
									 );
									 
									 
			//lab4
		  registerfile Lab3a(.Read1(        InstrOut [9:5]     ), //register file, Rn
		                     .Read2(        rrA2Out            ), 
									.WriteReg(     InstrOut [4:0]     ), //rt
									.WriteData(    ToRegOut           ), 
									.RegWrite(     RegWrite           ), 
									.clock(        Clock              ), 
									.Data1(        A                  ), 
									.Data2(        ReadData2Out       )
									);
									
		 	            SE SE(.SEin(          InstrOut    ), //sign extender
		                     .SEout(         SEout              )
									);
									
      ALUwithControl Lab2c(.ALUOp(         ALUOp              ), //alu with control
		                     .OpCodefield(   InstrOut [31:21]  ), 
									.A(             A                  ), 
									.B(             SrcOut             ), 
									.ALUresult(     ALUresult          ), 
									.Zero(          Zero               ), 
									.ALUoperation(  ALUoperation       )
									);
	
		       DataMemory DM(.Address(       ALUresult          ), //data memory
		                     .clock(         Clock              ), 
									.MemRead(       MemRead            ), 
									.MemWrite(      MemWrite           ),
		                     .WriteData(     ReadData2Out       ), 
									.ReadData(      ReadData           )
									);
		//lab7
	
		gate1      gate1(    //select output//And Gate
								 .Branch_in(        Branch            ), 
								 .Zero_in(          Zero              ), 
								 .PCSrc_out(       PCSrc_Select       )
								 
								 );
	               
    Adder_Branch   Adder_Branch(.A(      PCout                ), //Branch Adder
								  .B(           SL2_Out               ), 
								  .out(   BranchAdder_Result          )
								  );
					  
		
  	Shift_L2   Shift_L2(.in(             SEout                 ),
							 .out(             SL2_Out               )
							     );
										  
										  
	PCSrc_Mux    PCSrc_Mux (.Pc_Add(        AdderOut           ),//Branch mux
				               .ALu_Add(      BranchAdder_Result  ),
                           .PcSrc_Select( PCSrc_Select    ),	
									.PcSrc_Out(      PcSrc_Out         )	
				               );

				
				 ALUSrc ALUSrc(.RegIn(        ReadData2Out        ), //alu source  MUX
								   .DispIn(       SEout               ), 
								   .Select(       ALUSrc_Select       ), 
								   .SrcOut(       SrcOut              )
									);
									
		   MemtoReg MemtoReg(.DMIn(         ReadData            ), //mem to reg  MUX 
			                  .ALUIn(        ALUresult           ), 
									.Select(       MemtoReg_Select     ), 
									.ToRegOut(     ToRegOut            )
									);
	
		     Reg2Loc Reg2Loc(.RmIn(         InstrOut [20:16]   ), // reg, Rm        MUX
			                  .RtIn(         InstrOut [4:0]     ), //Rt
									.Select(       Reg2Loc_Select     ), 
									.rrA2Out(      rrA2Out            )
									);
		
			
			
			
			
			
			
			
			
	

endmodule
