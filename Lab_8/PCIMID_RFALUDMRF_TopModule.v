`timescale 1ns / 1ps
module PCIMID_RFALUDMRF_TopModule(Clock);

     input Clock;
	 
	  
	   //Control wires
		
		wire Reg2Loc_Select0;
		wire ALUSrc_Select0, ALUSrc_Select1;
		wire MemtoReg_Select0, MemtoReg_Select1 ;
		wire RegWrite0,RegWrite1, RegWrite2, RegWrite3;
		wire MemRead0, MemRead1, MemRead2;
		wire MemWrite0, MemWrite1, MemWrite2;
		wire [1:0] ALUOp0,ALUOp1;
		wire Branch0, Branch1, Branch2;
		
	 
		
		wire  PCSrc_Select; 
		
      //Instruction memory wires		
		
	
		wire [63:0] SrcOut;	//	 ALUSrc;
		wire [63:0] ToRegOut;
		wire [4:0]  rrA2Out;
		wire [63:0] PcSrc_Out;
		wire [63:0]SL2_Out;//shift left 2 outout wire

		wire [3:0]  ALUoperation;
		//dublicates
		
		wire Zero_0, Zero_1;
		wire [63:0] ALUresult0, ALUresult1,  ALUresult2 ;
		wire [63:0] AdderOut0, AdderOut1;
		wire [63:0] A0,A1;//Read out data 1
		wire [63:0] B0, B1,B2;//read out data 2
		wire [63:0] PCout0, PCout1, PCout2;   
		wire [63:0] BranchAdder_Result0, BranchAdder_Result1;
		
		wire [63:0] ReadData0, ReadData1;
		wire [63:0] SEout0, SEout1;
		wire [31:0] InstrOut0, InstrOut1, InstrOut2, InstrOut3, InstrOut4;
		
	   //Stage1
		
		
		
		
	AdderPCout   AdderPCout(.in(                   PCout0            ), //adder that connects to pc and instruction memory
									.out(                  AdderOut0         ) //adderout wire
									 );
									  
						  PC PC (.PCin(                 PcSrc_Out         ), //pc module, adderout wire
									.PCout(                PCout0            ), 
									.Clock(                Clock             )       
									 );
									 
						  IM  IM(.Pc(                   PCout0            ), //instruction module, pc out wire
									.InstrOut(             InstrOut0         )    
									 );
									
						
									 
			   IF_ID   IF_ID( .clock_In(             Clock             ),
									.instr_In(             InstrOut0         ), 
								   .pcOut_In(             PCout0            ), 
								   .instr_Out(            PCout1            )
									);
									
				PCSrc_Mux    PCSrc_Mux (.Pc_Add(      AdderOut1         ),//Branch mux
				               .ALu_Add(              BranchAdder_Result1  ),
                           .PcSrc_Select(         PCSrc_Select      ),	
									.PcSrc_Out(            PcSrc_Out         )	
				               );
									 					 
	  //Stage2
	  
	    Reg2Loc Reg2Loc(.RmIn(                    InstrOut1 [20:16]  ), // reg, Rm        MUX
			                  .RtIn(         	    InstrOut1 [4:0]    ), //Rt
									.Select(      		    Reg2Loc_Select0    ), //select comming from reg2Loc
									.rrA2Out(      	    rrA2Out            )
									);   
	  
	                ID   ID(.Opcode(       	    InstrOut1 [31:21]  ), // CONNTROL MODULE = instruction decoder (Control), instruc out wire
									.Reg2Loc(      	    Reg2Loc_Select0    ), //to   Reg2Loc mux
									.ALUSrc(       	    ALUSrc_Select0     ), 
									.MemtoReg(            MemtoReg_Select0   ), 
									.RegWrite(            RegWrite0          ), 
									.MemRead(             MemRead0           ), 
									.MemWrite(            MemWrite0          ),
									.ALUOp(               ALUO0              ),
									.Branch(              Branch0            )
									 );
	  
		  registerfile Lab3a(.Read1(               InstrOut1 [9:5]    ), //register file, Rn
		                     .Read2(               rrA2Out            ), 
									.WriteReg(            InstrOut4 [4:0]    ), //rt
									.WriteData(           ToRegOut           ), 
									.RegWrite(            RegWrite           ), 
									.clock(               Clock              ), 
									.Data1(               A0                 ), 
									.Data2(               B0                 )
									);
									
		 	            SE SE(.SEin(                InstrOut1          ), //sign extender
		                     .SEout(               SEout0             )
									);
																		
			  ID_EX  ID_EX (  .ALUSrc_Select_In(   ALUSrc_Select0      ),       
				               .MemtoReg_Select_In( MemtoReg_Select0    ),    
				               .RegWrite_In(        RegWrite0           ),           
				               .MemRead_In(         MemRead0            ),            
				               .MemWrite_In(        MemWrite0           ),         
				               .ALUOp_In(           ALUOp0               ),              
				               .Branch_In(          Branch0             ),
									.pcOut_In(           PCout1              ),
				               .readData1_In(       A0                  ),
				               .readData2_In(       B0                  ),
				               .opcode_In(          InstrOut1  [31:21]  ), 
				               .writeReg_In(        InstrOut1  [4:0]    ),
									.signExt_In(         SEout0              ), 
									
									.ALUSrc_Select_Out(  ALUSrc_Select1      ),       
				               .MemtoReg_Select_Out(MemtoReg_Select1    ),    
				               .RegWrite_Out(       RegWrite1           ),           
				               .MemRead_Out(        MemRead1            ),            
				               .MemWrite_Out(       MemWrite1           ),         
				               .ALUOp_Out(          ALUOp1              ),              
				               .Branch_Out(         Branch1             ),
									.pcOut_Out(          PCout2              ),
				               .readData1_Out(      A1                  ),
				               .readData2_Out(      B1                  ),
								   .signExt_Out(        SEout1              ), 
				               .opcode_Out(         InstrOut1  [31:21]  ), 
				               .writeReg_Out(       InstrOut1  [4:0]    )            			 
								   );						
																			
		//Stage 3
		
      ALUwithControl Lab2c(.ALUOp(              ALUOp1             ), //alu with control
		                     .OpCodefield(        InstrOut2 [31:21]  ), 
									.A(                  A1                 ), 
									.B(                  SrcOut             ), 
									.ALUresult(          ALUresult0         ), 
									.Zero(               Zero_0             ), 
									.ALUoperation(       ALUoperation       )
									);
	          ALUSrc ALUSrc(.RegIn(              B1                 ), //alu source  MUX
								   .DispIn(             SEout1             ), 
								   .Select(             ALUSrc_Select1     ), 
								   .SrcOut(             SrcOut             )
									);
									
		   Shift_L2   Shift_L2(.in(               SEout1             ),
							      .out(                SL2_Out            )
							     );							
	
	   Adder_Branch Adder_Branch(.A(             PCout2             ), //Branch Adder
								   .B(                  SL2_Out            ), 
								   .out(                BranchAdder_Result0)
								  );
					  
	EX_MEM EX_MEM(          .RegWrite_In(         RegWrite1         ), 
					            .Branch_In(           Branch1           ),
								   .MemRead_In(          MemRead1          ),                    
				               .MemWrite_In(         MemWrite1         ),
									.MemtoReg_Select_In( MemtoReg_Select1    ),   
									.branchAdder_Result_In( BranchAdder_Result0 ),
								   .zero_In(             Zero_0            ),
								   .aluResult_In(        ALUresult0        ),
								   .readData2_In(        B1                 ),
								   .writeReg_In(         InstrOut2        ),
									
									.RegWrite_Out(        RegWrite2          ), 
					            .Branch_Out(          Branch2            ),
									.MemRead_Out(         MemRead2          ),            
				               .MemWrite_Out(        MemWrite2         ),
									.MemtoReg_Select_Out( MemtoReg_Select1    ),   
							      .branchAdder_Result_Out(   BranchAdder_Result1 ),
									.zero_Out(           Zero_1              ),
									.aluResult_Out(      ALUresult1          ),
									.readData2_Out(      B2                  ),
									.writeReg_Out(         InstrOut3           )
			                  );
	
		
	
	//Stage4
		       DataMemory DM(.Address(            ALUresult1          ), //data memory
		                     .clock(              Clock               ), 
									.MemRead(            MemRead2            ), 
									.MemWrite(           MemWrite2           ),
		                     .WriteData(          B2                  ), 
									.ReadData(           ReadData0           )
									);

		        gate1  gate1(    //select output//And Gate
								   .Branch_in(          Branch2             ), //branch gate
								   .Zero_in(            Zero_1              ), 
								   .PCSrc_out(          PCSrc_Select        )
								 
								  );
	               					
			 MEM_WB  MEM_WB(  .RegWrite_In(        RegWrite2           ),
									.MemtoReg_Select_In( MemtoReg_Select1     ),  
									.readDataMem_In(     ReadData0           ),
                           .aluResult_In(       ALUresult1          ), 
					            .instruOut2_In(      InstrOut3           ),
									
								     
									.RegWrite_Out(       RegWrite3           ),
									.MemtoReg_Select_Out(MemtoReg_Select2    ),
					            .readDataMem_Out(    ReadData1           ),
                           .aluResult_Out(      ALUresult2          ), 
					            .instruOut2_Out(     InstrOut4           )
                         );
						 
									
	//Stage 5
			
	  MemtoReg MemtoReg(.DMIn(                   ReadData1           ), //mem to reg  MUX 
			                  .ALUIn(              ALUresult2          ), 
									.Select(             MemtoReg_Select2     ), 
									.ToRegOut(           ToRegOut            )
									);
									
									
			
									

			 
									
 
							

endmodule
