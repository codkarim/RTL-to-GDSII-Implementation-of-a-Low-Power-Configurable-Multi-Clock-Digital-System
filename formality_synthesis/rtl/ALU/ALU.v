module ALU #(parameter op_width = 8,parameter out_width = 2* op_width, parameter func_width = 4)
(	input	wire	[op_width-1:0]		A,
	input	wire	[op_width-1:0]		B,
	input	wire	[func_width-1:0]	ALU_FUN,
	input	wire						EN,
	input	wire						CLK,
	input	wire						RST,
	output  reg							out_valid,
	output  reg		[out_width-1:0]		ALU_OUT);

  //internal_signals
	reg		[out_width-1:0]		ALU_OUT_COMB;
	reg							out_valid_comb;
	
	always@(posedge CLK or negedge RST)
		if(!RST)
			begin
				ALU_OUT   <= 'b0;			
				out_valid <= 'b0;			
			end
		else
			begin
				ALU_OUT <= ALU_OUT_COMB;
				out_valid <= out_valid_comb;
			end
	
	always@(*)
		begin
			ALU_OUT_COMB   = 'b0;
			out_valid_comb = 'b0;
			if (EN)
			begin
				out_valid_comb = 'b1;	
				case (ALU_FUN) 
		    //arthimitic operation (ADD,SUB,MUL,DIV) 
				    4'b0000 :	begin
									ALU_OUT_COMB = A + B ;
								end
				    4'b0001 :	begin
									ALU_OUT_COMB = A - B ;
								end
				    4'b0010 :	begin
									ALU_OUT_COMB = A * B ;
								end
				    4'b0011 :	begin
									ALU_OUT_COMB = A / B ;
								end
								      
			// LOGICAL Operation (AND,OR,NAND,NOR,XOR,XNOR)
				    4'b0100 :	begin
									ALU_OUT_COMB = A & B ;
								end
				    4'b0101 :	begin
									ALU_OUT_COMB = A | B ;
								end
				    4'b0110 :	begin
								    ALU_OUT_COMB = ~ (A & B) ;
								end
				    4'b0111 :	begin
									ALU_OUT_COMB = ~ (A | B) ;
								end
				    4'b1000 :	begin
									ALU_OUT_COMB = A ^ B ;
								end
				    4'b1001 :	begin
									ALU_OUT_COMB = ~ (A ^ B) ;
								end
								      
	        // Comparison Operation (EQUAL,GREATER,LESS) 			
				    4'b1010 :	begin
									if(A == B)
											begin
												ALU_OUT_COMB = 16'd1  ;
											end
									else	
											begin
												ALU_OUT_COMB = 16'd0 ;
											end
								end
									
				    4'b1011 :	begin
									if(A > B)
										begin
												ALU_OUT_COMB = 16'd2  ;
											end
									else	
											begin
												ALU_OUT_COMB = 16'd0 ;
											end
								end
				    4'b1100 : 	begin
									if(A < B)
										    begin
												ALU_OUT_COMB = 16'd3  ;
											end
									else	
											begin
												ALU_OUT_COMB = 16'd0 ;
											end
								end
								
			// SHIFT Operation(shift right, shift left)
				    4'b1101 :	begin
									      ALU_OUT_COMB = A >> 1 ;
								end
				    4'b1110 :	begin
									      ALU_OUT_COMB = A << 1 ;
								end
				    4'b1111 : 	begin
									      ALU_OUT_COMB = 16'b0 ;
								end
					endcase
				end
			else
				begin
				out_valid_comb ='b0;
				end
		end
	
endmodule