`timescale 1ns / 1ps


module Lab4A_TesFixure;

	// Inputs
	reg clock;
	reg MemWrite;
	reg MemRead;
	reg [7:0] Address;
	reg [63:0] WriteData;

	// Outputs
	wire [63:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	Data_Memory uut (
		.clock(clock), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Address(Address), 
		.WriteData(WriteData), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		MemWrite = 0;
		MemRead = 1;
		Address = 40;
		WriteData = 0;

		//keep memread as 1 and memwrite as 0, give addresses as 40 and then as 80 and see whether the ReadData is right. 
		//address is 40
		#50 MemRead = 1; 
	
		//now address is 80
		#50 MemRead = 1; Address = 80; 
		
		//write data 64 hold
		#50 WriteData = 64'haaaaaaaaaaaaaaaa; 		Address = 40; MemWrite = 1;
		
		
		//make clock go up
		#50 clock = 1;
		
		

	end
      
endmodule

