`timescale 1ns / 1ps
module MEM_WB( RegWrite_In, 
					MemtoReg_Select_In, 
					readDataMem_In,
               aluResult_In, 
					instruOut2_In,
					
					RegWrite_Out, 
					MemtoReg_Select_Out, 
					readDataMem_Out,
               aluResult_Out, 
					instruOut2_Out
             );
input RegWrite_In; 
input MemtoReg_Select_In; 				 
input readDataMem_In;
input aluResult_In;
input instruOut2_In; 


output RegWrite_Out;
output MemtoReg_Select_Out;
output readDataMem_Out;
output aluResult_Out;
output instruOut2_Out;


endmodule
