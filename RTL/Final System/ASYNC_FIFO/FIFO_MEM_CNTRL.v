module FIFO_MEM_CNTRL#(parameter DATA_WIDTH = 8,parameter mem_depth = 8,parameter mem_address = 4)

(	input		wire	[DATA_WIDTH -1 :0]		WR_DATA_mem,
	input		wire							W_CLK,W_RST,		
	input		wire							wfull,
	input		wire							winc,
	input		wire	[mem_address -1:0]		w_mem_addr,
	input		wire	[mem_address -1:0]		r_mem_addr,
	output		reg		[DATA_WIDTH -1 :0]		RD_DATA_mem);
	
	wire							wr_en;
	
//FIFO 2D array Memory.	
	reg		[DATA_WIDTH -1:0]	memory	[mem_depth -1:0];
	
	integer i ;

// writing data	
	always @(posedge W_CLK or negedge W_RST)
		begin
			if (!W_RST)
			begin
				for (i=0; i < mem_depth ; i=i+1)
					begin
						memory [i] <= 'b0;
					end
			end		
			else if(wr_en)
				begin
					memory [w_mem_addr[mem_address -2:0]] <= WR_DATA_mem;
				end	
			
		end

// read data	
	always @(*)
		begin
			RD_DATA_mem  = memory[r_mem_addr[mem_address -2:0]];
		end
	
	
	assign wr_en = ~wfull & winc;
	
endmodule