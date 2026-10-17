// This block verifies that the received stop bit is equal to logic '1'.
// A stop flag is asserted if a mismatch is detected.
module stop_check  (		
		input		wire						sampl_bit_stp,
		input		wire						stop_en,
		input		wire						CLK,RST,
		output		reg							stp_error);
	
	
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					stp_error <= 1'b0;	
				end
			else if(stop_en && !sampl_bit_stp)
				begin
					stp_error <= 1'b1;
				end
			else
				begin
					stp_error <= 1'b0;
				end	
		end
endmodule