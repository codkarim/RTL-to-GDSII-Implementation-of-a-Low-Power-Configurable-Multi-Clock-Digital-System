// this design implements memory that can read a data or write a data according to enable signals 

module regfile # (
    parameter ADDR_WIDTH = 4,
    parameter MEM_DEPTH = 16,
    parameter MEM_WIDTH = 8)
	
(
    input  wire                   	WrEn,		
	input  wire                   	RdEn,		
    input  wire                   	CLK,
	input  wire                   	RST,
    input  wire  [ADDR_WIDTH-1:0] 	address,	
    input  wire  [MEM_WIDTH-1:0]  	WrData,
	
    output wire  [MEM_WIDTH-1:0]	REG0,	
    output wire  [MEM_WIDTH-1:0]	REG1,
    output wire  [MEM_WIDTH-1:0]	REG2,
    output wire  [MEM_WIDTH-1:0]	REG3,
	output reg   [MEM_WIDTH-1:0]  	RdData,
	output reg   				  	RdData_valid);	//asserted when read data

    // register file of 16 registers each of 8 bits width
    reg [MEM_WIDTH-1:0] memory [MEM_DEPTH-1:0];        
	
	integer i;
	
    always @(posedge CLK or negedge RST) 
		begin
			if (!RST)
				begin
					RdData <= 'b0;
					RdData_valid <= 'b0;
					for(i=0;i <MEM_DEPTH;i=i+1)
						begin
							if (i == 2)
								memory [i] <= 'b100000_01; //prescale =32,par_typ=0,par_en = 1
							else if (i ==3)
								memory [i] <= 'b0010_0000; // div_ratio = 32
							else	
								memory[i] <= 'b0;
						end
				end
	
			else if (WrEn && !RdEn)   	//write operation
				begin
					memory[address] <= WrData;
				end
			else if (RdEn && !WrEn) 	//read operation
				begin
					RdData <= memory[address];
					RdData_valid <= 'b1;	
				end
			else
				RdData_valid <= 'b0;
		end
		
//assign configuration registers
	assign REG0 = memory[0];
	assign REG1 = memory[1];
	assign REG2 = memory[2];
	assign REG3 = memory[3];

endmodule
