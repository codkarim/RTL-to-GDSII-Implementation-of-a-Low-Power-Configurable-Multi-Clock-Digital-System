module parity_calc #(parameter DATA_WIDTH =8)
(	
	input		wire							CLK,RST,
	input 		wire	[DATA_WIDTH-1:0]		P_DATA_par,
	input		wire							PARITY_TYPE,
	input		wire							Data_Valid_par,
	input		wire							busy,
	output		reg								parity_bit);


	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				parity_bit <= 1'b0;
			else if (Data_Valid_par && !busy)			//busy is important (to not change parity bit) if valid enabled 
				begin
					if (!PARITY_TYPE)
						parity_bit <= ^ P_DATA_par;			//even parity
					else
						parity_bit <= ~^ P_DATA_par;			//odd parity
				end
		end


endmodule