
// ************************* Description *********************** //
//  This module is implemented to:-                              //
//   -- generate write address in binary code                    //
//   -- generate full flag to overcome fifo overwrite            //
//   -- generate gray coded write pointer                        //
// ************************************************************* //

module FIFO_WR #(parameter address =4)					// pointer width = 4
(	input		wire						W_INC,		// write control signal.
	input		wire						W_CLK,		// write domian clock.
	input		wire						W_RST,		// write domian active low reset.
	input		wire	[address -1:0]		sync_rd,	// synced gray coded read pointer. 
	output		reg							w_full,		// fifo full flag.
	output		reg		[address -1:0]		w_ptr,		// generated gray coded write address [registered].
	output		reg		[address -1:0]		w_addr);	// generated binary write address.
		
	wire	[address -1:0]		w_ptr_comb;
	
// converting binary write pointer to gray coded.	
	assign w_ptr_comb = w_addr ^ (w_addr >> 1);	

// increment binary address.		
	always @(posedge W_CLK or negedge W_RST)
		begin
			if(!W_RST)
				begin
					w_addr <=  'b0;
				end
			else if(W_INC && ! w_full)
				begin
					w_addr <= w_addr + 'b1;
				end
		end
		
//register write pointer to avoid glitches.		
	always @(posedge W_CLK or negedge W_RST)
		begin
			if(!W_RST)
				begin
					w_ptr <=  'b0;
				end
			else 
				begin
					w_ptr <= w_ptr_comb;
				end
		end	
		
// generation of full flag		
	always @(*)
		begin
			if ( (w_ptr_comb[address-1] != sync_rd[address-1]) && (w_ptr_comb[address-2] != sync_rd[address-2]) && (w_ptr_comb[address-3:0] == sync_rd[address-3:0]) )
				begin
					w_full = 1'b1;
				end
			else
				begin
					w_full = 1'b0;
				end
		end
			
endmodule