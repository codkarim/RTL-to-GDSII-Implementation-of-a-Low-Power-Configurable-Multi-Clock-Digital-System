// This block performs RX oversampling based on the prescale factor
// and applies 3-point majority voting to determine the final sampled bit.
module data_sampling #(parameter scale_size =6,parameter count_num =6)

(	input		wire							RX_IN,
	input		wire	[scale_size-1:0]		prescale,
	input		wire							CLK,RST,
	input		wire							dat_samp_en,
	input		wire	[count_num-1:0]			edge_cnt,
	output		reg								sampled_bit);
	
	wire	[4:0]		half_edge,half_edge_n1,half_edge_p1;
	reg		[2:0]		store;	
	
	assign half_edge = (prescale >> 'b1) - 'b1;  //prescale =32 , half edge =15
	assign half_edge_n1 = half_edge - 'b1;	
	assign half_edge_p1 = half_edge + 'b1;	
	
	//oversampling 
	always @ (posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					store <= 'b0;
				end
			else if(dat_samp_en)
				begin
					if (edge_cnt == half_edge_n1)
							store[0]  <= RX_IN;
					else if (edge_cnt == half_edge)		
							store[1]  <= RX_IN;
					else if (edge_cnt == half_edge_p1)		
							store[2]  <= RX_IN;
				end			
			else 			
				store <= 'b0;
		end
		
// Determines the final data bit using three input samples.
always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				sampled_bit <= 1'b0;
			else if (dat_samp_en)
				sampled_bit <= (store[0]  & (store[1] | store[2])) |
							   (store[1] & store[2]);
			else	
				sampled_bit <= 1'b0;
		end
				 
endmodule				 