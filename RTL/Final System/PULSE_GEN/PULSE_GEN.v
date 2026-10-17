module PULSE_GEN (
	input	wire	 CLK,
	input	wire	 RST,
	input   wire 	 LVL_SIG,
	output  wire 	 pulse_SIG);
	
	reg	    LVL_SIG_flop;	
	reg		pulse_flop;
	
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					LVL_SIG_flop <= 1'b0;
					pulse_flop   <= 1'b0;
				end	
			else
				begin
					LVL_SIG_flop <= LVL_SIG;
					pulse_flop   <= LVL_SIG_flop;
				end	
		end
	
//----------------- pulse generator --------------------//	
	assign pulse_SIG = LVL_SIG_flop & !pulse_flop;
	
		
endmodule
