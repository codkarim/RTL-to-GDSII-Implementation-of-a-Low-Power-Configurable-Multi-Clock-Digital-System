module FSM_RX #(parameter count_num =6,parameter scale_size =6)
(	input		wire						RX_IN,
	input		wire	[scale_size-1:0]	prescale,
	input		wire						RST,CLK,
	input		wire						PAR_EN,
	
	input		wire	[3:0]				bit_cnt_fsm,
	input		wire	[count_num-1:0]		edge_cnt_fsm,
	
	input		wire						par_err_fsm,
	input		wire						strt_glitch_fsm,
	input		wire						stp_err_fsm,
	
	output		reg							count_en_fsm,
	output		reg							data_en_fsm,
	
	output		reg							par_en_fsm,
	output		reg							strt_en_fsm,
	output		reg							stp_en_fsm,
	
	output		reg							deser_en_fsm,
	output		reg							data_valid);
	
	
	
	typedef  enum	bit [2:0] {	IDLE   = 3'b000,
								START  = 3'b001,
								DATA   = 3'b011,
								PARITY = 3'b010,
								STOP   = 3'b110,
								ER_CHK = 3'b111
	}	 state_e;
	
	state_e  current,next;
	
	
	wire [scale_size-1:0]	check_edge;
	wire [scale_size-1:0]	er_chk_edge;
	
	assign check_edge = (prescale);
	assign er_chk_edge = (prescale - 'b1);
	
	reg	   data_valid_c;
	
//state transiton 
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					current <= IDLE; 
				end
			else
				begin
					current <= next;
				end
		end
	
	
	
// next state logic	
		always @(*)
		begin
			case (current)
				IDLE    :  	begin
								if(!RX_IN)		//Receive Uart Frame
									begin
										next = START;
									end
								else
									begin
										next = IDLE;
									end
							end
							
				START   : 	begin
								if (!strt_glitch_fsm)	// check that start bit not a glitch
									begin
										if (edge_cnt_fsm != check_edge)		
											begin
												next = START; 
											end
										else
											begin	
												next = DATA;
											end	
									end
								else
									begin
										next = IDLE;
									end
							end
				DATA    :  	begin
								if(bit_cnt_fsm == 'd8 && edge_cnt_fsm == check_edge)
									begin
										if(PAR_EN)
											begin
												next = PARITY;
											end
										else	
											begin
												next = STOP;
											end
									end		
								else
									begin
										next = DATA;
									end
							end
		
				PARITY  :  	begin
								if(edge_cnt_fsm != check_edge)
									begin	
										next = PARITY;
									end
								else	
									begin
										next = STOP;
									end			
							end
						
				STOP    :  	begin
								if(edge_cnt_fsm != er_chk_edge)
									begin
										next = STOP;
									end
								else
									begin
										next = ER_CHK ; 
									end		
							end
				
				ER_CHK  :  	begin
							if (!RX_IN)		 // to accept consequent frames without any gap.
									begin
										next = START;
									end
								else
									begin
										next = IDLE;
									end
							end
							
				default :	begin
								next = IDLE;
							end	
				
			endcase
		end
	

// output logic	
	always @(*)
		begin
			count_en_fsm  = 1'b0;
			data_en_fsm   = 1'b0;
			deser_en_fsm  = 1'b0;
			strt_en_fsm   = 1'b0;
			par_en_fsm    = 1'b0;
			stp_en_fsm    = 1'b0;
			data_valid_c  = 1'b0;
			case (current)
				IDLE    :  	begin
								data_en_fsm   = 1'b0;
								deser_en_fsm  = 1'b0;
								strt_en_fsm   = 1'b0;
								par_en_fsm    = 1'b0;
								stp_en_fsm    = 1'b0;
								data_valid_c  = 1'b0;
								if(!RX_IN)
									begin
										count_en_fsm  = 1'b1;
									end
								else
									begin
									    count_en_fsm  = 1'b0;
									end
							end
							
				START   : 	begin
								count_en_fsm  = 1'b1;
								data_en_fsm   = 1'b1;
								deser_en_fsm  = 1'b0;
								strt_en_fsm   = 1'b1;
								par_en_fsm    = 1'b0;
								stp_en_fsm    = 1'b0;
								data_valid_c  = 1'b0;
							end	
							
				DATA    :  	begin
								count_en_fsm  = 1'b1;
								data_en_fsm   = 1'b1;
								deser_en_fsm  = 1'b1;
								strt_en_fsm   = 1'b0;
								par_en_fsm    = 1'b0;
								stp_en_fsm    = 1'b0;
								data_valid_c  = 1'b0;
							end
		
				PARITY  :  	begin
								count_en_fsm  = 1'b1;
								data_en_fsm   = 1'b1;
								deser_en_fsm  = 1'b0;
								strt_en_fsm   = 1'b0;
								par_en_fsm    = 1'b1;
								stp_en_fsm    = 1'b0;
								data_valid_c  = 1'b0;
							end
						
				STOP    :  	begin
								count_en_fsm  = 1'b1;
								data_en_fsm   = 1'b1;
								deser_en_fsm  = 1'b0;
								strt_en_fsm   = 1'b0;
								par_en_fsm    = 1'b0;
								stp_en_fsm    = 1'b1;
								if (edge_cnt_fsm == er_chk_edge &&(!stp_err_fsm && !par_err_fsm) )
									begin
										data_valid_c = 1'b1;
									end
								else
									begin
										data_valid_c = 1'b0;
									end
							end
				
				ER_CHK  :  	begin
								count_en_fsm  = 1'b0;
								data_en_fsm   = 1'b0;
								deser_en_fsm  = 1'b0;
								strt_en_fsm   = 1'b0;
								par_en_fsm    = 1'b0;
								stp_en_fsm    = 1'b0;
								data_valid_c  = 1'b0;
							
							end
							
				default :	begin
								count_en_fsm  = 1'b0;
								data_en_fsm   = 1'b0;
								par_en_fsm    = 1'b0;
								strt_en_fsm   = 1'b0;
								stp_en_fsm    = 1'b0;
								deser_en_fsm  = 1'b0;
								data_valid_c  = 1'b0;
							end	
				
			endcase
		end
		
//register data_valid to avoid comb_loop or any setup violation		
	always @ (posedge CLK or negedge RST)
		begin
			if(!RST)
				data_valid <= 1'b0;
			else
				data_valid <= data_valid_c;
		end
	
endmodule