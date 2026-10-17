//this block Detects glitches on the RX input.
//and resets the FSM to the IDLE state to prevent false frame detection.
module start_check (
		input		wire		sampl_bit_strt,
		input		wire		start_en,
		output		reg			strt_glitch);
		
		
	always @(*)
		begin
			if(start_en && sampl_bit_strt )
				begin
					strt_glitch = 1'b1;
				end
			else
				begin
					strt_glitch = 1'b0;
				end
		end
	
		
		
endmodule