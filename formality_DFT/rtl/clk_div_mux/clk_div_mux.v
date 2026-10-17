module clk_div_mux #(parameter divide_ratio = 8,parameter scale_size =6)
(	input		wire	[scale_size -1:0]		prescale,
	output		reg		[divide_ratio -1:0]		i_div_ratio);

	always@(*)
		begin
			case(prescale)
				6'b100000 : i_div_ratio = 'd1;
				6'b010000 : i_div_ratio = 'd2;
				6'b001000 : i_div_ratio = 'd4;
				6'b000100 : i_div_ratio = 'd8;
				default   : i_div_ratio = 'd1;	
			endcase
		end
endmodule