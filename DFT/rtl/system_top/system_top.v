// **************************** Description *************************** //
//	The system is responsible to do some operation based on the 		//
//	received commands from the master through UART_RX interface, 		//
//	once the operation is done, the system is responsible to send		//
//	the result to the master through UART_TX interface.					//
// ******************************************************************** //

module system_top #(parameter DATA_WIDTH = 8,parameter ADDR_WIDTH = 4,parameter NUM_OF_CHAINS = 4)	
(	input				wire				REF_CLK,
	input				wire				UART_CLK,
	input				wire				RST,
	input				wire				RX_IN,
	input				wire 	  [NUM_OF_CHAINS-1:0]	SI,
	input				wire				SE,
	input				wire				scan_clk,
	input				wire				scan_rst,
	input				wire				test_mode,
	output				wire      [NUM_OF_CHAINS-1:0]   SO,
	output				wire				TX_OUT,
	output				wire				framing_error,
	output				wire				parity_error);


///*************************************************///
//////////////////// Internal Signals /////////////////
///*************************************************///
 	
//////----------- regfile ----------//////
wire 						WrEn,RdEn;
wire	[ADDR_WIDTH-1:0]	addr;
wire  	[DATA_WIDTH-1:0]  	Wr_D;
wire	[DATA_WIDTH-1:0]	Rd_D; 
wire	[DATA_WIDTH-1:0]	operand_A,operand_B,UART_config,DIV_RATIO;
wire						Rd_D_vld;

//////----------- RST SYNC ----------//////
wire						RST_SYNC_1;
wire						RST_SYNC_2;

//////----------- ALU ----------//////
wire	[3:0]	ALU_FUN;
wire			ALU_EN;
wire			out_valid;
wire	[15:0]	ALU_OUT;

//////----------- CLK GATE ----------//////
wire      CLK_EN;
wire      test_EN;
wire   	  ALU_CLK;

//////----------- CLK Divider ----------//////
wire							clk_div_en;	     	
wire							TX_CLK;
wire							RX_CLK;

wire	[DATA_WIDTH-1:0]		div_ratio_mux;

//////----------- ASYNC FIFO ----------//////          
wire						W_INC;	   	   
wire						R_INC;        
wire	[DATA_WIDTH -1 :0]	FIFO_RD_DATA;   
wire	[DATA_WIDTH -1 :0]	FIFO_WR_DATA;   
wire						FULL;      
wire						EMPTY;    					

//////----------- UART ----------//////
wire							TX_BUSY; 
wire	[DATA_WIDTH-1:0]		RX_OUT_P;   
wire							RX_OUT_V;

//////----------- DATA SYN ----------//////
wire     [DATA_WIDTH-1:0]   sync_bus;
wire     				    enable_pulse;
  

/************* DFT SIGNALS ************************/

wire CLK_M_RF,CLK_M_ALU,CLK_M_UART,CLK_M_TX,CLK_M_RX;
wire RST_M,RST_S_1,RST_S_2;

///*************************************************///
///////////////////////Mux clocks & RST////////////////
///*************************************************///

// Muxing Primary --> REF clock
mux2X1 U0_clk_rf (
  	.IN_0(REF_CLK),
	.IN_1(scan_clk),
	.SEL(test_mode),
	.OUT(CLK_M_RF));

// Muxing primary --> UART clock
mux2X1 U0_clk_uart (
  	.IN_0(UART_CLK),
	.IN_1(scan_clk),
	.SEL(test_mode),
	.OUT(CLK_M_UART));

// Muxing Generated --> UART clock
mux2X1 U0_clk_TX (
  	.IN_0(TX_CLK),
	.IN_1(scan_clk),
	.SEL(test_mode),
	.OUT(CLK_M_TX));

// Muxing Generated --> UART clock
mux2X1 U0_clk_RX (
  	.IN_0(RX_CLK),
	.IN_1(scan_clk),
	.SEL(test_mode),
	.OUT(CLK_M_RX));

// Muxing resets
mux2X1	U0_RST (
	.IN_0(RST),
	.IN_1(scan_rst),
	.SEL(test_mode),
	.OUT(RST_M));

mux2X1	U1_RST (
	.IN_0(RST_SYNC_1),
	.IN_1(scan_rst),
	.SEL(test_mode),
	.OUT(RST_S_1));

mux2X1	U2_RST (
	.IN_0(RST_SYNC_2),
	.IN_1(scan_rst),
	.SEL(test_mode),
	.OUT(RST_S_2));


///*************************************************///
///////////////////////Register File///////////////////
///*************************************************///

regfile #(.MEM_WIDTH(DATA_WIDTH),.MEM_DEPTH(16),.ADDR_WIDTH(ADDR_WIDTH)) 
	U0_regfile (.WrEn(WrEn),
				.RdEn(RdEn),
				.CLK(CLK_M_RF),
				.RST(RST_S_1),
				.address(addr),
				.WrData(Wr_D),
				.REG0(operand_A),
				.REG1(operand_B),
				.REG2(UART_config),
				.REG3(DIV_RATIO),
				.RdData(Rd_D),
				.RdData_valid(Rd_D_vld));

///*************************************************///
/////////////////////Asynchronous FIFO/////////////////
///*************************************************///
ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH))
	U0_ASYNC_FIFO(.W_CLK(CLK_M_RF),
				  .W_RST(RST_S_1),
				  .W_INC(W_INC),
				  .R_CLK(CLK_M_TX),
				  .R_RST(RST_S_2),
				  .R_INC(R_INC),
				  .WR_DATA(FIFO_WR_DATA),
				  .RD_DATA(FIFO_RD_DATA),
				  .FULL(FULL),
				  .EMPTY(EMPTY));
	
///*************************************************///
/////////////////////Data Synchronizer/////////////////
///*************************************************///	
DATA_SYN #(.BUS_WIDTH(DATA_WIDTH))
	U0_DATA_SYN(.bus_enable(RX_OUT_V),
				.CLK(CLK_M_RF),
				.RST(RST_S_1),
				.unsync_bus(RX_OUT_P),
				.sync_bus(sync_bus),
				.enable_pulse(enable_pulse));
	
///*************************************///
///////////////////// ALU /////////////////
///*************************************///	
ALU #(.op_width(DATA_WIDTH),.out_width(16),.func_width(4))
	U0_ALU (.A(operand_A),
			.B(operand_B),
			.ALU_FUN(ALU_FUN),
			.EN(ALU_EN),
			.CLK(ALU_CLK),
			.RST(RST_S_1),
			.out_valid(out_valid),
			.ALU_OUT(ALU_OUT));

	
///*************************************///
///////////////////// UART ////////////////
///*************************************///	
UART #(.DATA_WIDTH(DATA_WIDTH),.scale_size(6))
	U0_UART(.TX_IN_P(FIFO_RD_DATA),
			.TX_IN_V(~EMPTY),
			.TX_CLK(CLK_M_TX),
			.RST(RST_S_2),
			.RX_IN_S(RX_IN),
			.RX_CLK(CLK_M_RX),
			.prescale(UART_config[7:2]),
			.PAR_EN(UART_config[0]),
			.PAR_TYP(UART_config[1]),
			.TX_OUT_S(TX_OUT),
			.TX_OUT_V(TX_BUSY),
			.RX_OUT_P(RX_OUT_P),
			.Parity_error(parity_error),
			.stop_error(framing_error),
			.RX_OUT_V(RX_OUT_V));
						
///*************************************///
/////////////// Clock Gating //////////////
///*************************************///		
CLK_GATE U0_gating_clk( .CLK_EN(CLK_EN),
			.test_EN(test_mode),
			.CLK(CLK_M_RF),	
			.GATED_CLK(ALU_CLK));	
						
///*************************************///
//////////// RST Synchronizers ////////////
///*************************************///	

RST_SYNC U0_rst_1 ( .CLK(CLK_M_RF),
					.RST(RST_M),
					.SYNC_RST(RST_SYNC_1));
	

RST_SYNC U0_rst_2 ( .CLK(CLK_M_UART),
					.RST(RST_M),
					.SYNC_RST(RST_SYNC_2));
	
///*************************************///
//////////// Pulse Generator //////////////
///*************************************///	
PULSE_GEN U0_pulse (.CLK(CLK_M_TX),
					.RST(RST_S_2),
					.LVL_SIG(TX_BUSY),
					.pulse_SIG(R_INC));	

	
///*************************************///
///////////// Clock Dividers ///////////////
///*************************************///		
ClkDiv #(.divide_ratio(8))
	U0_divider_rx(.i_ref_clk(CLK_M_UART),
				  .i_rst_n(RST_S_2),	
				  .i_clk_en(clk_div_en),	
				  .i_div_ratio(div_ratio_mux),	
				  .o_div_clk(RX_CLK));
				  
ClkDiv #(.divide_ratio(8))
	U0_divider_tx(.i_ref_clk(CLK_M_UART),
				  .i_rst_n(RST_S_2),	
				  .i_clk_en(clk_div_en),	
				  .i_div_ratio(DIV_RATIO),	
				  .o_div_clk(TX_CLK));			  
		
clk_div_mux #(.divide_ratio(8),.scale_size(6))		
	U0_mux_div (.prescale(UART_config[7:2]),
				.i_div_ratio(div_ratio_mux));	

	
///*************************************///
///////////// System control //////////////
///*************************************///				
SYS_CTRL #(.ALU_width(16),.func_WIDTH(4),.addr_width(4),.DATA_WIDTH(DATA_WIDTH))
	U0_ctrl (.ALU_OUT(ALU_OUT),
			 .out_valid(out_valid),	
			 .CLK(CLK_M_RF),	
			 .RST(RST_S_1),	
			 .RX_D_VLD(enable_pulse),	
			 .RX_P_DATA(sync_bus),	
			 .RdData(Rd_D),	
			 .RdData_vld(Rd_D_vld),	
			 .FIFO_FULL(FULL),	
			 .CLK_EN(CLK_EN),	
			 .ALU_EN(ALU_EN),	
			 .ALU_FUN(ALU_FUN),	
			 .addr(addr),	
			 .WrEn(WrEn),	
			 .RdEn(RdEn),	
			 .WrData(Wr_D),	
			 .Tx_P_DATA(FIFO_WR_DATA),	
			 .Tx_D_VLD(W_INC),	
			 .clk_div_en(clk_div_en));
						 	
endmodule
