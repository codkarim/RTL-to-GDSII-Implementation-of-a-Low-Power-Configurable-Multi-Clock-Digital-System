module UART_RX #(parameter scale_size =6, parameter DATA_WIDTH =8,parameter count_num =6)

(	input		wire							RX_IN,
	input		wire							CLK,RST,
	input		wire	[scale_size -1:0]		prescale,
	input		wire							PAR_EN,
	input		wire							PAR_TYP,
	output		wire	[DATA_WIDTH-1:0]		P_DATA,
	output		wire							Parity_error,
	output		wire							stop_error,
	output		wire							data_valid);

//data_sampling signals
	wire		dat_samp_en,sampled_bit;
	
//stop,start,parity,deserializer signals	
	wire		start_en,strt_glitch;
	wire		stop_en;
	wire		par_chk_en;
	wire		deser_en;
	
//edge_bit_counter signals	
	wire						enable;
	wire	[count_num-1:0]		edge_cnt;
	wire	[3:0]				bit_cnt;


data_sampling	# (.scale_size(scale_size),.count_num(count_num))
	U0_SAMP (.CLK(CLK),
			 .RST(RST),
			 .RX_IN(RX_IN),
			 .prescale(prescale),
			 .dat_samp_en(dat_samp_en),
			 .edge_cnt(edge_cnt),
			 .sampled_bit(sampled_bit));
		
		
		
stop_check	U0_STOP (
		.CLK(CLK),
		.RST(RST),
		.stop_en(stop_en),
		.sampl_bit_stp(sampled_bit),
		.stp_error(stop_error));		



start_check	 U0_START (
		.start_en(start_en),
		.sampl_bit_strt(sampled_bit),
		.strt_glitch(strt_glitch));
		
		
		
par_check	# (.DATA_WIDTH(DATA_WIDTH),.scale_size(scale_size),.count_num(count_num))
	U0_PARITY     (.CLK(CLK),
				   .RST(RST),
				   .bit_cnt(bit_cnt),
				   .prescale(prescale),
				   .edge_cnt(edge_cnt),
			       .sampl_bit_par(sampled_bit),
				   .PAR_TYP(PAR_TYP),
			       .par_chk_en(par_chk_en),
			       .P_DATA_PAR(P_DATA),
			       .par_err(Parity_error));
				   
				   
				   
deserializer	 # (.scale_size(scale_size),.DATA_WIDTH(DATA_WIDTH),.count_num(count_num))
	U0_desrializer (.CLK(CLK),
				    .RST(RST),
			        .sampled_bit(sampled_bit),
					.prescale(prescale),
				    .deser_en(deser_en),
					.edge_cnt(edge_cnt),
			        .P_DATA(P_DATA));



edge_bit_counter  # (.scale_size(scale_size),.count_num(count_num))
		U0_count    (.CLK(CLK),
				     .RST(RST),
					 .prescale(prescale),
			         .enable(enable),
					 .PAR_EN(PAR_EN),
				     .bit_cnt(bit_cnt),
			         .edge_cnt(edge_cnt));					
		


FSM_RX  # (.scale_size(scale_size),.count_num(count_num))
		U0_FSM  (.CLK(CLK),
				 .RST(RST),
				 .prescale(prescale),
			     .RX_IN(RX_IN),
				 .PAR_EN(PAR_EN),
				 .bit_cnt_fsm(bit_cnt),
			     .edge_cnt_fsm(edge_cnt),
				 .par_err_fsm(Parity_error),
				 .strt_glitch_fsm(strt_glitch),
				 .stp_err_fsm(stop_error),
				 .count_en_fsm(enable),
				 .data_en_fsm(dat_samp_en),
				 .par_en_fsm(par_chk_en),
				 .strt_en_fsm(start_en),
				 .stp_en_fsm(stop_en),
				 .deser_en_fsm(deser_en),
				 .data_valid(data_valid));		
		
		


endmodule