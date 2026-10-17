module UART_TX #(parameter DATA_WIDTH =8) 
(
	input		wire	[DATA_WIDTH-1:0]	P_DATA,
	input		wire						DATA_VALID,
	input		wire						PAR_EN,
	input		wire						PAR_TYP,
	input		wire						CLK,
	input		wire						RST,
	output		wire						TX_OUT,
	output		wire						busy);


	localparam 		start = 1'b0,
					stop  = 1'b1;
									
	wire	[1:0]	mux_sel;									
	wire			ser_data,par_bit;
	wire			ser_en,ser_done;
	

MUX_4x1	  U0_MUX (
	.CLK(CLK),
	.RST(RST),
	.IN0(start),
	.IN1(ser_data),
	.IN2(par_bit),
	.IN3(stop),
	.SEL(mux_sel),
	.out(TX_OUT));

	
parity_calc #(.DATA_WIDTH(DATA_WIDTH))
  U0_PARITY (
	.CLK(CLK),
	.RST(RST),
	.P_DATA_par(P_DATA),
	.PARITY_TYPE(PAR_TYP),
	.Data_Valid_par(DATA_VALID),
	.parity_bit(par_bit),
	.busy(busy));	


Serializer #(.DATA_WIDTH(DATA_WIDTH))
  U0_SER (
	.CLK(CLK),
	.RST(RST),
	.P_DATA_SER(P_DATA),
	.ser_en(ser_en),
	.ser_done(ser_done),
	.DATA_VALID(DATA_VALID),
	.SER_OUT(ser_data),
	.busy(busy));
	
	
FSM	   U0_FSM (
	.CLK(CLK),
	.RST(RST),
	.VALID_FSM(DATA_VALID),
	.PAR_EN_FSM(PAR_EN),
	.ser_done_fsm(ser_done),
	.ser_en_fsm(ser_en),
	.SEL_FSM(mux_sel),
	.busy(busy));
	
	
	
	
endmodule