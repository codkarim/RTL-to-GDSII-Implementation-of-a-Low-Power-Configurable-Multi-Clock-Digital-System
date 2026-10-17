module UART #(parameter DATA_WIDTH =8,parameter scale_size =6)
(	input		wire	[DATA_WIDTH-1:0]		TX_IN_P,      
	input		wire							TX_IN_V,      			
	input		wire							TX_CLK,
	input		wire							RST,
	input		wire							RX_IN_S,
	input		wire							RX_CLK,
	input		wire	[scale_size -1:0]		prescale,
	input		wire							PAR_EN,
	input		wire							PAR_TYP,

	output		wire							TX_OUT_S,
	output		wire							TX_OUT_V, 
	output		wire	[DATA_WIDTH-1:0]		RX_OUT_P,   
	output		wire							Parity_error,
	output		wire							stop_error,
	output		wire							RX_OUT_V); 
	
UART_RX #(.DATA_WIDTH(DATA_WIDTH),.scale_size(scale_size))
	U0_rx ( .RX_IN(RX_IN_S),
			.CLK(RX_CLK),
			.RST(RST),
			.prescale(prescale),
			.PAR_EN(PAR_EN),
			.PAR_TYP(PAR_TYP),
			.P_DATA(RX_OUT_P),
			.Parity_error(Parity_error),
			.stop_error(stop_error),
			.data_valid(RX_OUT_V));
	
	
UART_TX #(.DATA_WIDTH(DATA_WIDTH))
	U0_tx ( .P_DATA(TX_IN_P),
			.DATA_VALID(TX_IN_V),
			.PAR_EN(PAR_EN),
			.PAR_TYP(PAR_TYP),
			.CLK(TX_CLK),
			.RST(RST),
			.TX_OUT(TX_OUT_S),
			.busy(TX_OUT_V));	

endmodule											