`timescale 1ns / 1ps

module ID_EX(    //to   Reg2Loc mux
				  ALUSrc_Select_In,       
				  MemtoReg_Select_In,    
				  RegWrite_In,           
				  MemRead_In,            
				  MemWrite_In,         
				  ALUOp_In,              
				  Branch_In,
              pcOut_In,
				  readData1_In,
				  readData2_In,
				  signExt_In,
				  opcode_In, 
				  writeReg_In,
				 
				  
				      //to   Reg2Loc mux
				  ALUSrc_Select_Out,       
				  MemtoReg_Select_Out,    
				  RegWrite_Out,           
				  MemRead_Out,            
				  MemWrite_Out,         
				  ALUOp_Out,              
				  Branch_Out,
				  pcOut_Out,
				  readData1_Out,
				  readData2_Out,
				  signExt_Out, 
				  opcode_Out, 
				  writeReg_Out				  		 
				);
				
			
				
				
				
		input	  ALUSrc_Select_In;      
		input	  MemtoReg_Select_In;    
		input	  RegWrite_In;           
		input	  MemRead_In;            
		input	  MemWrite_In;         
		input	  ALUOp_In;              
		input	  Branch_In;
      input   pcOut_In;
	   input	  readData1_In;
	   input	  readData2_In; 
	   input	  signExt_In;
	   input   opcode_In; 
		input	  writeReg_In;
	 
				  
				      //to   Reg2Loc mux
		output	ALUSrc_Select_Out;      
		output	MemtoReg_Select_Out;    
		output	RegWrite_Out;           
	   output	MemRead_Out;           
		output	MemWrite_Out;         
		output	ALUOp_Out;              
		output	Branch_Out;
		output	pcOut_Out;
		output	readData1_Out;
		output	readData2_Out; 
	  	output	signExt_Out;
	   output   opcode_Out;
	   output	writeReg_Out; 	


endmodule
