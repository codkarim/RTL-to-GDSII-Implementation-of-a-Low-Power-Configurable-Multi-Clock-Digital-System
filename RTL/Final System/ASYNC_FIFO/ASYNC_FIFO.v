module ASYNC_FIFO #(parameter DATA_WIDTH = 8,parameter mem_depth = 8,parameter address = 4)

(	input		wire						W_CLK,     // write domian operating clock.
	input		wire						W_RST,     // write domian active low reset.
	input		wire						W_INC,	   // write control signal.
	input		wire						R_CLK,	   // read domian operating clock.	
	input		wire						R_RST,     // read domian active low reset. 
	input		wire						R_INC,     // read control signal.
	input		wire	[DATA_WIDTH -1 :0]	WR_DATA,   // write data bus.
	output		wire	[DATA_WIDTH -1 :0]	RD_DATA,   // read data bus.
	output		wire						FULL,      // fifo full flag.
	output		wire						EMPTY);    // fifo empty flag.
	
	wire	[address -1:0]		Wr_addr,Rd_addr;

	wire	[address -1 :0]		rptr,wptr;
	
//synchronized  gray coded read & write pointer. 	
	wire	[address -1:0 ]		wq2_rptr,rq2_wptr;
	
//FIFO Memory
FIFO_MEM_CNTRL #(.DATA_WIDTH(DATA_WIDTH), .mem_depth(mem_depth))
	U0_memory  (.WR_DATA_mem(WR_DATA),
				.W_CLK(W_CLK),
				.W_RST(W_RST),
				.w_mem_addr(Wr_addr),
				.r_mem_addr(Rd_addr),
				.wfull(FULL),
				.winc(W_INC),
				.RD_DATA_mem(RD_DATA));

//synchronize the read pointer into the write clock domain.
DF_SYNC #(.BUS_WIDTH(address))
	U0_SYNC_r2w	   (.CLK(W_CLK),
					.RST(W_RST),
					.Async(rptr),
					.sync(wq2_rptr));
					

//synchronize the write pointer into the read clock domain.
DF_SYNC #(.BUS_WIDTH(address))
	U0_SYNC_w2r	   (.CLK(R_CLK),
					.RST(R_RST),
					.Async(wptr),
					.sync(rq2_wptr));					
	
//to generate write addres in binary code,full flag and gray coded write pointer. 	
FIFO_WR #(.address(address))
	U0_FIFO_WR	   (.W_INC(W_INC),
					.W_CLK(W_CLK),
					.W_RST(W_RST),
					.sync_rd(wq2_rptr),
					.w_full(FULL),
					.w_ptr(wptr),
					.w_addr(Wr_addr));	
		
//to generate read addres in binary code,empty flag and gray coded read pointer.		
FIFO_RD #(.address(address))
	U0_FIFO_RD	   (.R_INC(R_INC),
					.R_CLK(R_CLK),
					.R_RST(R_RST),
					.sync_wr(rq2_wptr),
					.r_empty(EMPTY),
					.r_ptr(rptr),
					.r_addr(Rd_addr));					

	
endmodule

