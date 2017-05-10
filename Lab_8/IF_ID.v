`timescale 1ns / 1ps

module IF_ID(clock_In,
             instr_In, 
             pcOut_In, 
				 instr_Out,
				 pcOut_Out
				 );
	
     input clock_In;
	  input  [31:0]  instr_In;
     input  [63:0]  pcOut_In;  
	  output [31:0]  instr_Out;
	  output [63:0]  pcOut_Out;
	
	  reg  [95:0] regIF;
     
	  
	   = {instr_In,  pcOut_In};	  
	  
	  always@(posedge clock_In) 
	  regIf = instr_In + pcOut_In;
	  
	  
	  
	

endmodule
		
 