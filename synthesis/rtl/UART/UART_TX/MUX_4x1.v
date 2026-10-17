module MUX_4x1 (
	input 	wire	 		IN0,IN1,IN2,IN3,
	input	wire			CLK,RST,
	input 	wire	[1:0]	SEL,
	output	reg				out	);
	
	reg		mux_out;
	
	always @(*)
		begin
			case (SEL)
				2'b00 : mux_out = IN0 ;
				2'b01 : mux_out = IN1 ;
				2'b10 : mux_out = IN2 ;
				2'b11 : mux_out = IN3 ;
			endcase
		end
		
	//regester output to avoid any STA problems	
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				out <= 1'b0;
			else
				out <= mux_out;
		end
		
endmodule