`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:50 05/09/2017 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM( RegWrite_In, 
					Branch_In,
					MemRead_In,            
				   MemWrite_In,
				   MemtoReg_Select_In, 
					branchAdder_Result_In,
				   zero_In,
					aluResult_In,
					readData2_In,
					 writeReg_In,
					
					RegWrite_Out, 
					Branch_Out,
					MemRead_Out,            
				   MemWrite_Out,
					MemtoReg_Select_Out, 
					branchAdder_Result_Out,
				   zero_Out,
					aluResult_Out,
					readData2_Out,
					 writeReg_Out,
			     );
				  
				  
				  
				    
	input			   RegWrite_In; 
	input				Branch_In;
	input	         MemRead_In;            
	input			   MemWrite_In;
	input			   MemtoReg_Select_In;
   input          branchAdder_Result_In;
	input			   zero_In;
	input				aluResult_In;
	input				readData2_In;
	input				 writeReg_In;
	
	output			RegWrite_Out; 
	output		   Branch_Out;
	output	      MemRead_Out;            
	output			MemWrite_Out;
	output			MemtoReg_Select_Out;
	output			branchAdder_Result_Out;
	output		   zero_Out;
	output			aluResult_Out;
	output			readData2_Out;
	output			 writeReg_Out;				  


endmodule
