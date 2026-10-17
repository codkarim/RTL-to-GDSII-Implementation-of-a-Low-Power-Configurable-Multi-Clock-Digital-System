// This block computes the expected parity bit and compares it against the received frame parity.
// A parity_error flag is asserted if a mismatch is detected.
module par_check #(parameter DATA_WIDTH =8,count_num =6,scale_size =6)
(	input		wire							sampl_bit_par,
	input		wire							PAR_TYP,
	input		wire							par_chk_en,
	input		wire							CLK,RST,
	input		wire	[scale_size-1:0]		prescale,
	input		wire	[3:0]					bit_cnt,
	input		wire	[count_num -1:0]		edge_cnt,
	input		wire	[DATA_WIDTH-1:0]		P_DATA_PAR,
	output		reg								par_err);
	
	
	wire	par_done;
	reg		par_bit;

//check parity error	
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				par_err	 <= 1'b0;
				
			else if (par_chk_en)
				begin	
					if ((sampl_bit_par != par_bit))
						par_err <= 1'b1;
					else	
						par_err <= 1'b0;
				end
				
			else if (par_done)
				par_err <= 1'b0; 	
		end

//calculate parity bit		
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				par_bit <= 'b0;		//Even Parity	
			else if(par_chk_en)
				begin
					case (PAR_TYP)
						1'b0 :	begin
									par_bit <= ^ P_DATA_PAR;	//Even Parity
								end
						
						1'b1 :	begin
									par_bit <= ~^ P_DATA_PAR;	//Odd Parity
								end
					endcase			
				end
			
		end	
		
// Store the parity error flag until the ERR_CHK state is reached.
	assign par_done = (bit_cnt  == 'd10 && edge_cnt == prescale);    
	
endmodule