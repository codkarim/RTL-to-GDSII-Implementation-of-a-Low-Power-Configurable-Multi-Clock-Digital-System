// ************************* Description *********************** //
//  This module is implemented to:-                              //
//   -- generate read address in binary code                     //
//   -- generate empty flag to overcome fifo underflow           //
//   -- generate gray coded read pointer                         //
// ************************************************************* //

module	FIFO_RD#(parameter address =4)				   // pointer width = 4
(	input		wire						R_INC,	   // read control signal.
	input		wire						R_CLK,	   // read domian clock.
	input		wire						R_RST,	   // read domian active low reset.
	input		wire	[address -1:0]		sync_wr,   // synced gray coded write pointer.
	output		reg							r_empty,   // fifo empty flag.
	output		reg		[address -1:0]		r_ptr,	   // generated gray coded write address.
	output		reg		[address -1:0]		r_addr);   // generated binary read address.
	
	wire	[address -1:0] r_ptr_comb;
		
// converting binary read pointer to gray coded.		
	assign r_ptr_comb = r_addr ^ (r_addr >> 1);	

// increment binary address.			
	always @(posedge R_CLK or negedge R_RST)
		begin
			if(!R_RST)
				begin
					r_addr  <= 1'b0;	
				end
			else if(R_INC && !r_empty)
				begin
					r_addr  <= r_addr +1'b1;
				end
					
		end

// generation of empty flag
	always @(*)
		begin
			if(r_ptr_comb == sync_wr)
				begin
					r_empty = 1'b1;
				end
			else
				begin
					r_empty = 1'b0;
				end
		end
		
//register read pointer to avoid glitches.				
	always @(posedge R_CLK or negedge R_RST)
		begin
			if(!R_RST)
				begin
					r_ptr  <= 1'b0;	
				end
			else 
				begin
					r_ptr  <= r_ptr_comb;
				end
					
		end	
		
	
	
endmodule