// This module is responsible for counting RX edges and frame bits.
module edge_bit_counter #(parameter count_num =6,scale_size =6)
(
	input		wire							RST,CLK,
	input		wire	[scale_size-1:0]		prescale,
	input		wire							enable,
	input		wire							PAR_EN,
	output		reg		[3:0]					bit_cnt,
	output		reg		[count_num -1:0]		edge_cnt);
	
	wire	edge_high;
	reg		bit_high;
		
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					edge_cnt <=  'b0;
					bit_cnt  <=  'b0;
				end
			else if (enable)
				begin
					if (!edge_high)		//edge counter
						begin	
							edge_cnt <= edge_cnt + 1;
						end
					else if (!bit_high)	//bit counter
						begin
							edge_cnt <= 'b1;
							bit_cnt  <= bit_cnt + 'b1; 
						end
					else 	
						begin
							bit_cnt  <= 'b0;	
							edge_cnt <= 'b0;
						end		
				end	
			else 
				begin
					bit_cnt  <= 'b0;	
					edge_cnt <= 'b0;
				end	
		end

//to deterimine frame length	
	always @ (*)
		begin
			if (PAR_EN)
				bit_high  = (bit_cnt  == 'd10);
			else
				bit_high  = (bit_cnt  == 'd9);	
		end
	
//to deterimine prescale of RX	
	assign  edge_high = (edge_cnt == prescale);
	 
	
endmodule