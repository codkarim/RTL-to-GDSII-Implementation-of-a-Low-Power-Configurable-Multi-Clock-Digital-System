module system_top (
	REF_CLK, 
	UART_CLK, 
	RST, 
	RX_IN, 
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO, 
	TX_OUT, 
	framing_error, 
	parity_error);
   input REF_CLK;
   input UART_CLK;
   input RST;
   input RX_IN;
   input [3:0] SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output [3:0] SO;
   output TX_OUT;
   output framing_error;
   output parity_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire CLK_M_RF__L6_N13;
   wire CLK_M_RF__L6_N12;
   wire CLK_M_RF__L6_N11;
   wire CLK_M_RF__L6_N10;
   wire CLK_M_RF__L6_N9;
   wire CLK_M_RF__L6_N8;
   wire CLK_M_RF__L6_N7;
   wire CLK_M_RF__L6_N6;
   wire CLK_M_RF__L6_N5;
   wire CLK_M_RF__L6_N4;
   wire CLK_M_RF__L6_N3;
   wire CLK_M_RF__L6_N2;
   wire CLK_M_RF__L6_N1;
   wire CLK_M_RF__L6_N0;
   wire CLK_M_RF__L5_N13;
   wire CLK_M_RF__L5_N12;
   wire CLK_M_RF__L5_N11;
   wire CLK_M_RF__L5_N10;
   wire CLK_M_RF__L5_N9;
   wire CLK_M_RF__L5_N8;
   wire CLK_M_RF__L5_N7;
   wire CLK_M_RF__L5_N6;
   wire CLK_M_RF__L5_N5;
   wire CLK_M_RF__L5_N4;
   wire CLK_M_RF__L5_N3;
   wire CLK_M_RF__L5_N2;
   wire CLK_M_RF__L5_N1;
   wire CLK_M_RF__L5_N0;
   wire CLK_M_RF__L4_N3;
   wire CLK_M_RF__L4_N2;
   wire CLK_M_RF__L4_N1;
   wire CLK_M_RF__L4_N0;
   wire CLK_M_RF__L3_N1;
   wire CLK_M_RF__L3_N0;
   wire CLK_M_RF__L2_N1;
   wire CLK_M_RF__L2_N0;
   wire CLK_M_RF__L1_N1;
   wire CLK_M_RF__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire CLK_M_UART__L11_N0;
   wire CLK_M_UART__L10_N0;
   wire CLK_M_UART__L9_N0;
   wire CLK_M_UART__L8_N0;
   wire CLK_M_UART__L7_N0;
   wire CLK_M_UART__L6_N1;
   wire CLK_M_UART__L6_N0;
   wire CLK_M_UART__L5_N0;
   wire CLK_M_UART__L4_N0;
   wire CLK_M_UART__L3_N0;
   wire CLK_M_UART__L2_N1;
   wire CLK_M_UART__L2_N0;
   wire CLK_M_UART__L1_N0;
   wire CLK_M_TX__L4_N1;
   wire CLK_M_TX__L4_N0;
   wire CLK_M_TX__L3_N0;
   wire CLK_M_TX__L2_N0;
   wire CLK_M_TX__L1_N0;
   wire CLK_M_RX__L4_N1;
   wire CLK_M_RX__L4_N0;
   wire CLK_M_RX__L3_N0;
   wire CLK_M_RX__L2_N0;
   wire CLK_M_RX__L1_N0;
   wire FE_OFN5_SE;
   wire FE_OFN4_RST_S_2;
   wire FE_OFN3_RST_S_1;
   wire FE_OFN1_RST_S_1;
   wire FE_OFN0_RST_S_1;
   wire CLK_M_RF;
   wire CLK_M_UART;
   wire TX_CLK;
   wire CLK_M_TX;
   wire RX_CLK;
   wire CLK_M_RX;
   wire RST_M;
   wire RST_SYNC_1;
   wire RST_S_1;
   wire RST_SYNC_2;
   wire RST_S_2;
   wire WrEn;
   wire RdEn;
   wire Rd_D_vld;
   wire W_INC;
   wire R_INC;
   wire FULL;
   wire EMPTY;
   wire RX_OUT_V;
   wire enable_pulse;
   wire ALU_EN;
   wire ALU_CLK;
   wire out_valid;
   wire TX_BUSY;
   wire CLK_EN;
   wire n2;
   wire n8;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n17;
   wire n18;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire [3:0] addr;
   wire [7:0] Wr_D;
   wire [7:0] operand_A;
   wire [7:0] operand_B;
   wire [7:0] UART_config;
   wire [7:0] DIV_RATIO;
   wire [7:0] Rd_D;
   wire [7:0] FIFO_WR_DATA;
   wire [7:0] FIFO_RD_DATA;
   wire [7:0] RX_OUT_P;
   wire [7:0] sync_bus;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] div_ratio_mux;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   assign SO[0] = RST_SYNC_2 ;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX32M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKINVX40M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKBUFX40M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX24M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX24M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX24M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX24M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX40M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX40M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M CLK_M_RF__L6_I13 (.Y(CLK_M_RF__L6_N13), 
	.A(CLK_M_RF__L5_N13));
   CLKINVX32M CLK_M_RF__L6_I12 (.Y(CLK_M_RF__L6_N12), 
	.A(CLK_M_RF__L5_N12));
   CLKINVX32M CLK_M_RF__L6_I11 (.Y(CLK_M_RF__L6_N11), 
	.A(CLK_M_RF__L5_N11));
   CLKINVX32M CLK_M_RF__L6_I10 (.Y(CLK_M_RF__L6_N10), 
	.A(CLK_M_RF__L5_N10));
   CLKINVX32M CLK_M_RF__L6_I9 (.Y(CLK_M_RF__L6_N9), 
	.A(CLK_M_RF__L5_N9));
   CLKINVX32M CLK_M_RF__L6_I8 (.Y(CLK_M_RF__L6_N8), 
	.A(CLK_M_RF__L5_N8));
   CLKINVX32M CLK_M_RF__L6_I7 (.Y(CLK_M_RF__L6_N7), 
	.A(CLK_M_RF__L5_N7));
   CLKINVX32M CLK_M_RF__L6_I6 (.Y(CLK_M_RF__L6_N6), 
	.A(CLK_M_RF__L5_N6));
   CLKINVX32M CLK_M_RF__L6_I5 (.Y(CLK_M_RF__L6_N5), 
	.A(CLK_M_RF__L5_N5));
   CLKINVX32M CLK_M_RF__L6_I4 (.Y(CLK_M_RF__L6_N4), 
	.A(CLK_M_RF__L5_N4));
   CLKINVX32M CLK_M_RF__L6_I3 (.Y(CLK_M_RF__L6_N3), 
	.A(CLK_M_RF__L5_N3));
   CLKINVX32M CLK_M_RF__L6_I2 (.Y(CLK_M_RF__L6_N2), 
	.A(CLK_M_RF__L5_N2));
   CLKINVX32M CLK_M_RF__L6_I1 (.Y(CLK_M_RF__L6_N1), 
	.A(CLK_M_RF__L5_N1));
   CLKINVX32M CLK_M_RF__L6_I0 (.Y(CLK_M_RF__L6_N0), 
	.A(CLK_M_RF__L5_N0));
   CLKBUFX40M CLK_M_RF__L5_I13 (.Y(CLK_M_RF__L5_N13), 
	.A(CLK_M_RF__L4_N3));
   CLKBUFX40M CLK_M_RF__L5_I12 (.Y(CLK_M_RF__L5_N12), 
	.A(CLK_M_RF__L4_N3));
   CLKBUFX40M CLK_M_RF__L5_I11 (.Y(CLK_M_RF__L5_N11), 
	.A(CLK_M_RF__L4_N3));
   CLKBUFX40M CLK_M_RF__L5_I10 (.Y(CLK_M_RF__L5_N10), 
	.A(CLK_M_RF__L4_N2));
   CLKBUFX40M CLK_M_RF__L5_I9 (.Y(CLK_M_RF__L5_N9), 
	.A(CLK_M_RF__L4_N2));
   CLKBUFX40M CLK_M_RF__L5_I8 (.Y(CLK_M_RF__L5_N8), 
	.A(CLK_M_RF__L4_N2));
   CLKBUFX40M CLK_M_RF__L5_I7 (.Y(CLK_M_RF__L5_N7), 
	.A(CLK_M_RF__L4_N1));
   CLKBUFX40M CLK_M_RF__L5_I6 (.Y(CLK_M_RF__L5_N6), 
	.A(CLK_M_RF__L4_N1));
   CLKBUFX40M CLK_M_RF__L5_I5 (.Y(CLK_M_RF__L5_N5), 
	.A(CLK_M_RF__L4_N1));
   CLKBUFX40M CLK_M_RF__L5_I4 (.Y(CLK_M_RF__L5_N4), 
	.A(CLK_M_RF__L4_N0));
   CLKBUFX40M CLK_M_RF__L5_I3 (.Y(CLK_M_RF__L5_N3), 
	.A(CLK_M_RF__L4_N0));
   CLKBUFX40M CLK_M_RF__L5_I2 (.Y(CLK_M_RF__L5_N2), 
	.A(CLK_M_RF__L4_N0));
   CLKBUFX40M CLK_M_RF__L5_I1 (.Y(CLK_M_RF__L5_N1), 
	.A(CLK_M_RF__L4_N0));
   CLKBUFX40M CLK_M_RF__L5_I0 (.Y(CLK_M_RF__L5_N0), 
	.A(CLK_M_RF__L4_N0));
   CLKBUFX40M CLK_M_RF__L4_I3 (.Y(CLK_M_RF__L4_N3), 
	.A(CLK_M_RF__L3_N1));
   CLKBUFX40M CLK_M_RF__L4_I2 (.Y(CLK_M_RF__L4_N2), 
	.A(CLK_M_RF__L3_N1));
   CLKBUFX40M CLK_M_RF__L4_I1 (.Y(CLK_M_RF__L4_N1), 
	.A(CLK_M_RF__L3_N1));
   CLKBUFX40M CLK_M_RF__L4_I0 (.Y(CLK_M_RF__L4_N0), 
	.A(CLK_M_RF__L3_N1));
   CLKBUFX40M CLK_M_RF__L3_I1 (.Y(CLK_M_RF__L3_N1), 
	.A(CLK_M_RF__L2_N1));
   CLKINVX32M CLK_M_RF__L3_I0 (.Y(CLK_M_RF__L3_N0), 
	.A(CLK_M_RF__L2_N0));
   CLKBUFX12M CLK_M_RF__L2_I1 (.Y(CLK_M_RF__L2_N1), 
	.A(CLK_M_RF__L1_N1));
   CLKINVX24M CLK_M_RF__L2_I0 (.Y(CLK_M_RF__L2_N0), 
	.A(CLK_M_RF__L1_N0));
   CLKINVX6M CLK_M_RF__L1_I1 (.Y(CLK_M_RF__L1_N1), 
	.A(CLK_M_RF));
   CLKBUFX24M CLK_M_RF__L1_I0 (.Y(CLK_M_RF__L1_N0), 
	.A(CLK_M_RF));
   CLKINVX40M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   CLKINVX40M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKBUFX12M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX40M CLK_M_UART__L11_I0 (.Y(CLK_M_UART__L11_N0), 
	.A(CLK_M_UART__L10_N0));
   CLKBUFX40M CLK_M_UART__L10_I0 (.Y(CLK_M_UART__L10_N0), 
	.A(CLK_M_UART__L9_N0));
   CLKBUFX20M CLK_M_UART__L9_I0 (.Y(CLK_M_UART__L9_N0), 
	.A(CLK_M_UART__L8_N0));
   CLKBUFX20M CLK_M_UART__L8_I0 (.Y(CLK_M_UART__L8_N0), 
	.A(CLK_M_UART__L7_N0));
   CLKBUFX20M CLK_M_UART__L7_I0 (.Y(CLK_M_UART__L7_N0), 
	.A(CLK_M_UART__L6_N1));
   CLKBUFX20M CLK_M_UART__L6_I1 (.Y(CLK_M_UART__L6_N1), 
	.A(CLK_M_UART__L5_N0));
   CLKINVX32M CLK_M_UART__L6_I0 (.Y(CLK_M_UART__L6_N0), 
	.A(CLK_M_UART__L5_N0));
   CLKBUFX20M CLK_M_UART__L5_I0 (.Y(CLK_M_UART__L5_N0), 
	.A(CLK_M_UART__L4_N0));
   CLKBUFX20M CLK_M_UART__L4_I0 (.Y(CLK_M_UART__L4_N0), 
	.A(CLK_M_UART__L3_N0));
   CLKBUFX20M CLK_M_UART__L3_I0 (.Y(CLK_M_UART__L3_N0), 
	.A(CLK_M_UART__L2_N1));
   BUFX16M CLK_M_UART__L2_I1 (.Y(CLK_M_UART__L2_N1), 
	.A(CLK_M_UART__L1_N0));
   CLKINVX6M CLK_M_UART__L2_I0 (.Y(CLK_M_UART__L2_N0), 
	.A(CLK_M_UART__L1_N0));
   CLKINVX6M CLK_M_UART__L1_I0 (.Y(CLK_M_UART__L1_N0), 
	.A(CLK_M_UART));
   CLKINVX40M CLK_M_TX__L4_I1 (.Y(CLK_M_TX__L4_N1), 
	.A(CLK_M_TX__L3_N0));
   CLKINVX40M CLK_M_TX__L4_I0 (.Y(CLK_M_TX__L4_N0), 
	.A(CLK_M_TX__L3_N0));
   CLKINVX32M CLK_M_TX__L3_I0 (.Y(CLK_M_TX__L3_N0), 
	.A(CLK_M_TX__L2_N0));
   CLKBUFX40M CLK_M_TX__L2_I0 (.Y(CLK_M_TX__L2_N0), 
	.A(CLK_M_TX__L1_N0));
   CLKBUFX12M CLK_M_TX__L1_I0 (.Y(CLK_M_TX__L1_N0), 
	.A(CLK_M_TX));
   CLKINVX40M CLK_M_RX__L4_I1 (.Y(CLK_M_RX__L4_N1), 
	.A(CLK_M_RX__L3_N0));
   CLKINVX40M CLK_M_RX__L4_I0 (.Y(CLK_M_RX__L4_N0), 
	.A(CLK_M_RX__L3_N0));
   CLKINVX40M CLK_M_RX__L3_I0 (.Y(CLK_M_RX__L3_N0), 
	.A(CLK_M_RX__L2_N0));
   CLKBUFX40M CLK_M_RX__L2_I0 (.Y(CLK_M_RX__L2_N0), 
	.A(CLK_M_RX__L1_N0));
   CLKBUFX12M CLK_M_RX__L1_I0 (.Y(CLK_M_RX__L1_N0), 
	.A(CLK_M_RX));
   BUFX4M FE_OFC5_SE (.Y(FE_OFN5_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC4_RST_S_2 (.Y(FE_OFN4_RST_S_2), 
	.A(RST_S_2));
   CLKINVX8M FE_OFC3_RST_S_1 (.Y(FE_OFN3_RST_S_1), 
	.A(FE_OFN0_RST_S_1));
   BUFX4M FE_OFC1_RST_S_1 (.Y(FE_OFN1_RST_S_1), 
	.A(RST_S_1));
   CLKINVX1M FE_OFC0_RST_S_1 (.Y(FE_OFN0_RST_S_1), 
	.A(RST_S_1));
   BUFX2M U7 (.Y(n2), 
	.A(test_mode));
   INVXLM U14 (.Y(n23), 
	.A(n36));
   INVXLM U15 (.Y(n24), 
	.A(n23));
   CLKINVX2M U16 (.Y(n25), 
	.A(n23));
   INVXLM U17 (.Y(n26), 
	.A(n38));
   INVXLM U18 (.Y(n27), 
	.A(n26));
   DLY1X4M U19 (.Y(n28), 
	.A(n35));
   DLY1X1M U20 (.Y(n29), 
	.A(n35));
   DLY1X1M U21 (.Y(n30), 
	.A(n32));
   INVXLM U22 (.Y(n31), 
	.A(n37));
   INVXLM U23 (.Y(n32), 
	.A(n31));
   CLKINVX2M U24 (.Y(n33), 
	.A(n31));
   INVXLM U25 (.Y(n34), 
	.A(FE_OFN5_SE));
   INVXLM U26 (.Y(n35), 
	.A(n34));
   INVXLM U27 (.Y(n36), 
	.A(n34));
   CLKINVX2M U28 (.Y(n37), 
	.A(n34));
   INVXLM U29 (.Y(n38), 
	.A(n34));
   mux2X1_1 U0_clk_rf (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L8_N0), 
	.SEL(n2), 
	.OUT(CLK_M_RF));
   mux2X1_4 U0_clk_uart (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(n2), 
	.OUT(CLK_M_UART));
   mux2X1_3 U0_clk_TX (.IN_0(TX_CLK), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(n2), 
	.OUT(CLK_M_TX));
   mux2X1_2 U0_clk_RX (.IN_0(RX_CLK), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(n2), 
	.OUT(CLK_M_RX));
   mux2X1_0 U0_RST (.IN_0(RST), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(RST_M));
   mux2X1_6 U1_RST (.IN_0(RST_SYNC_1), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(RST_S_1));
   mux2X1_5 U2_RST (.IN_0(RST_SYNC_2), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(RST_S_2));
   regfile_ADDR_WIDTH4_MEM_DEPTH16_MEM_WIDTH8_test_1 U0_regfile (.WrEn(WrEn), 
	.RdEn(RdEn), 
	.CLK(CLK_M_RF__L6_N0), 
	.RST(FE_OFN0_RST_S_1), 
	.address({ addr[3],
		addr[2],
		addr[1],
		addr[0] }), 
	.WrData({ Wr_D[7],
		Wr_D[6],
		Wr_D[5],
		Wr_D[4],
		Wr_D[3],
		Wr_D[2],
		Wr_D[1],
		Wr_D[0] }), 
	.REG0({ operand_A[7],
		operand_A[6],
		operand_A[5],
		operand_A[4],
		operand_A[3],
		operand_A[2],
		operand_A[1],
		operand_A[0] }), 
	.REG1({ operand_B[7],
		operand_B[6],
		operand_B[5],
		operand_B[4],
		operand_B[3],
		operand_B[2],
		operand_B[1],
		operand_B[0] }), 
	.REG2({ UART_config[7],
		UART_config[6],
		UART_config[5],
		UART_config[4],
		UART_config[3],
		UART_config[2],
		UART_config[1],
		UART_config[0] }), 
	.REG3({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.RdData({ Rd_D[7],
		Rd_D[6],
		Rd_D[5],
		Rd_D[4],
		Rd_D[3],
		Rd_D[2],
		Rd_D[1],
		Rd_D[0] }), 
	.RdData_valid(Rd_D_vld), 
	.test_si2(SI[0]), 
	.test_si1(n11), 
	.test_so2(n8), 
	.test_so1(SO[1]), 
	.test_se(FE_OFN5_SE), 
	.FE_OFN1_RST_S_1(FE_OFN1_RST_S_1), 
	.FE_OFN3_RST_S_1(FE_OFN3_RST_S_1), 
	.CLK_M_RF__L6_N1(CLK_M_RF__L6_N1), 
	.CLK_M_RF__L6_N2(CLK_M_RF__L6_N2), 
	.CLK_M_RF__L6_N3(CLK_M_RF__L6_N3), 
	.CLK_M_RF__L6_N4(CLK_M_RF__L6_N4), 
	.CLK_M_RF__L6_N5(CLK_M_RF__L6_N5), 
	.CLK_M_RF__L6_N6(CLK_M_RF__L6_N6), 
	.CLK_M_RF__L6_N7(CLK_M_RF__L6_N7), 
	.CLK_M_RF__L6_N8(CLK_M_RF__L6_N8));
   ASYNC_FIFO_DATA_WIDTH8_test_1 U0_ASYNC_FIFO (.W_CLK(CLK_M_RF__L6_N11), 
	.W_RST(RST_S_1), 
	.W_INC(W_INC), 
	.R_CLK(CLK_M_TX__L4_N0), 
	.R_RST(RST_S_2), 
	.R_INC(R_INC), 
	.WR_DATA({ FIFO_WR_DATA[7],
		FIFO_WR_DATA[6],
		FIFO_WR_DATA[5],
		FIFO_WR_DATA[4],
		FIFO_WR_DATA[3],
		FIFO_WR_DATA[2],
		FIFO_WR_DATA[1],
		FIFO_WR_DATA[0] }), 
	.RD_DATA({ FIFO_RD_DATA[7],
		FIFO_RD_DATA[6],
		FIFO_RD_DATA[5],
		FIFO_RD_DATA[4],
		FIFO_RD_DATA[3],
		FIFO_RD_DATA[2],
		FIFO_RD_DATA[1],
		FIFO_RD_DATA[0] }), 
	.FULL(FULL), 
	.EMPTY(EMPTY), 
	.test_si2(SI[2]), 
	.test_si1(out_valid), 
	.test_so2(n18), 
	.test_so1(SO[3]), 
	.test_se(FE_OFN5_SE), 
	.FE_OFN1_RST_S_1(FE_OFN1_RST_S_1), 
	.FE_OFN4_RST_S_2(FE_OFN4_RST_S_2), 
	.CLK_M_TX__L4_N1(CLK_M_TX__L4_N1), 
	.CLK_M_RF__L6_N12(CLK_M_RF__L6_N12), 
	.CLK_M_RF__L6_N13(CLK_M_RF__L6_N13), 
	.CLK_M_RF__L6_N6(CLK_M_RF__L6_N6), 
	.CLK_M_RF__L6_N8(CLK_M_RF__L6_N8), 
	.CLK_M_RF__L6_N9(CLK_M_RF__L6_N9));
   DATA_SYN_BUS_WIDTH8_test_1 U0_DATA_SYN (.bus_enable(RX_OUT_V), 
	.CLK(CLK_M_RF__L6_N10), 
	.RST(RST_S_1), 
	.unsync_bus({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.sync_bus({ sync_bus[7],
		sync_bus[6],
		sync_bus[5],
		sync_bus[4],
		sync_bus[3],
		sync_bus[2],
		sync_bus[1],
		sync_bus[0] }), 
	.enable_pulse(enable_pulse), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(n25), 
	.CLK_M_RF__L6_N13(CLK_M_RF__L6_N13));
   ALU_op_width8_out_width16_func_width4_test_1 U0_ALU (.A({ operand_A[7],
		operand_A[6],
		operand_A[5],
		operand_A[4],
		operand_A[3],
		operand_A[2],
		operand_A[1],
		operand_A[0] }), 
	.B({ operand_B[7],
		operand_B[6],
		operand_B[5],
		operand_B[4],
		operand_B[3],
		operand_B[2],
		operand_B[1],
		operand_B[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.EN(ALU_EN), 
	.CLK(ALU_CLK__L3_N0), 
	.RST(RST_S_1), 
	.out_valid(out_valid), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.test_si(SI[3]), 
	.test_se(n33), 
	.FE_OFN3_RST_S_1(FE_OFN3_RST_S_1));
   UART_DATA_WIDTH8_scale_size6_test_1 U0_UART (.TX_IN_P({ FIFO_RD_DATA[7],
		FIFO_RD_DATA[6],
		FIFO_RD_DATA[5],
		FIFO_RD_DATA[4],
		FIFO_RD_DATA[3],
		FIFO_RD_DATA[2],
		FIFO_RD_DATA[1],
		FIFO_RD_DATA[0] }), 
	.TX_IN_V(EMPTY), 
	.TX_CLK(CLK_M_TX__L4_N0), 
	.RST(RST_S_2), 
	.RX_IN_S(RX_IN), 
	.RX_CLK(CLK_M_RX__L4_N0), 
	.prescale({ UART_config[7],
		UART_config[6],
		UART_config[5],
		UART_config[4],
		UART_config[3],
		UART_config[2] }), 
	.PAR_EN(UART_config[0]), 
	.PAR_TYP(UART_config[1]), 
	.TX_OUT_S(SO[2]), 
	.TX_OUT_V(TX_BUSY), 
	.RX_OUT_P({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.Parity_error(parity_error), 
	.stop_error(framing_error), 
	.RX_OUT_V(RX_OUT_V), 
	.test_si2(SI[1]), 
	.test_si1(n17), 
	.test_so1(n15), 
	.test_se(n28), 
	.FE_OFN4_RST_S_2(FE_OFN4_RST_S_2), 
	.CLK_M_RX__L4_N1(CLK_M_RX__L4_N1), 
	.CLK_M_TX__L4_N1(CLK_M_TX__L4_N1));
   CLK_GATE U0_gating_clk (.CLK_EN(CLK_EN), 
	.test_EN(n2), 
	.CLK(CLK_M_RF__L3_N0), 
	.GATED_CLK(ALU_CLK));
   RST_SYNC_test_0 U0_rst_1 (.CLK(CLK_M_RF__L6_N13), 
	.RST(RST_M), 
	.SYNC_RST(RST_SYNC_1), 
	.test_si(n8), 
	.test_se(n29));
   RST_SYNC_test_1 U0_rst_2 (.CLK(CLK_M_UART__L11_N0), 
	.RST(RST_M), 
	.SYNC_RST(RST_SYNC_2), 
	.test_si(RST_SYNC_1), 
	.test_se(n37));
   PULSE_GEN_test_1 U0_pulse (.CLK(CLK_M_TX__L4_N1), 
	.RST(FE_OFN4_RST_S_2), 
	.LVL_SIG(TX_BUSY), 
	.pulse_SIG(R_INC), 
	.test_si(n12), 
	.test_so(n11), 
	.test_se(n30));
   ClkDiv_divide_ratio8_test_0 U0_divider_rx (.i_ref_clk(CLK_M_UART__L11_N0), 
	.i_rst_n(FE_OFN4_RST_S_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		div_ratio_mux[3],
		div_ratio_mux[2],
		div_ratio_mux[1],
		div_ratio_mux[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n14), 
	.test_so(n13), 
	.test_se(n27), 
	.CLK_M_UART__L2_N0(CLK_M_UART__L2_N0), 
	.CLK_M_UART__L6_N0(CLK_M_UART__L6_N0));
   ClkDiv_divide_ratio8_test_1 U0_divider_tx (.i_ref_clk(CLK_M_UART__L11_N0), 
	.i_rst_n(FE_OFN4_RST_S_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(n13), 
	.test_so(n12), 
	.test_se(n24), 
	.CLK_M_UART__L2_N0(CLK_M_UART__L2_N0), 
	.CLK_M_UART__L6_N0(CLK_M_UART__L6_N0));
   clk_div_mux_divide_ratio8_scale_size6 U0_mux_div (.prescale({ UART_config[7],
		UART_config[6],
		UART_config[5],
		UART_config[4],
		UART_config[3],
		UART_config[2] }), 
	.i_div_ratio({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		div_ratio_mux[3],
		div_ratio_mux[2],
		div_ratio_mux[1],
		div_ratio_mux[0] }));
   SYS_CTRL_ALU_width16_func_WIDTH4_addr_width4_DATA_WIDTH8_test_1 U0_ctrl (.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.out_valid(out_valid), 
	.CLK(CLK_M_RF__L6_N10), 
	.RST(RST_S_1), 
	.RX_D_VLD(enable_pulse), 
	.RX_P_DATA({ sync_bus[7],
		sync_bus[6],
		sync_bus[5],
		sync_bus[4],
		sync_bus[3],
		sync_bus[2],
		sync_bus[1],
		sync_bus[0] }), 
	.RdData({ Rd_D[7],
		Rd_D[6],
		Rd_D[5],
		Rd_D[4],
		Rd_D[3],
		Rd_D[2],
		Rd_D[1],
		Rd_D[0] }), 
	.RdData_vld(Rd_D_vld), 
	.FIFO_FULL(FULL), 
	.CLK_EN(CLK_EN), 
	.ALU_EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.addr({ addr[3],
		addr[2],
		addr[1],
		addr[0] }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.WrData({ Wr_D[7],
		Wr_D[6],
		Wr_D[5],
		Wr_D[4],
		Wr_D[3],
		Wr_D[2],
		Wr_D[1],
		Wr_D[0] }), 
	.Tx_P_DATA({ FIFO_WR_DATA[7],
		FIFO_WR_DATA[6],
		FIFO_WR_DATA[5],
		FIFO_WR_DATA[4],
		FIFO_WR_DATA[3],
		FIFO_WR_DATA[2],
		FIFO_WR_DATA[1],
		FIFO_WR_DATA[0] }), 
	.Tx_D_VLD(W_INC), 
	.test_si(n15), 
	.test_so(n14), 
	.test_se(n37), 
	.CLK_M_RF__L6_N7(CLK_M_RF__L6_N7));
   BUFX2M U13 (.Y(TX_OUT), 
	.A(SO[2]));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct 15 01:44:08 2026
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN1_RST;
   wire FE_PHN0_RST;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC1_RST (.Y(FE_PHN1_RST), 
	.A(FE_PHN0_RST));
   DLY4X1M FE_PHC0_RST (.Y(FE_PHN0_RST), 
	.A(IN_0));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(FE_PHN1_RST));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X8M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module regfile_ADDR_WIDTH4_MEM_DEPTH16_MEM_WIDTH8_test_1 (
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	address, 
	WrData, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	RdData, 
	RdData_valid, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_RST_S_1, 
	FE_OFN3_RST_S_1, 
	CLK_M_RF__L6_N1, 
	CLK_M_RF__L6_N2, 
	CLK_M_RF__L6_N3, 
	CLK_M_RF__L6_N4, 
	CLK_M_RF__L6_N5, 
	CLK_M_RF__L6_N6, 
	CLK_M_RF__L6_N7, 
	CLK_M_RF__L6_N8);
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   input [3:0] address;
   input [7:0] WrData;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   output [7:0] RdData;
   output RdData_valid;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_RST_S_1;
   input FE_OFN3_RST_S_1;
   input CLK_M_RF__L6_N1;
   input CLK_M_RF__L6_N2;
   input CLK_M_RF__L6_N3;
   input CLK_M_RF__L6_N4;
   input CLK_M_RF__L6_N5;
   input CLK_M_RF__L6_N6;
   input CLK_M_RF__L6_N7;
   input CLK_M_RF__L6_N8;

   // Internal wires
   wire FE_OFN15_operand_B_1_;
   wire FE_OFN14_operand_B_6_;
   wire FE_OFN13_operand_A_7_;
   wire FE_OFN12_operand_A_6_;
   wire FE_OFN11_operand_A_5_;
   wire FE_OFN10_operand_A_4_;
   wire FE_OFN9_operand_A_3_;
   wire FE_OFN8_operand_B_4_;
   wire FE_OFN7_operand_B_7_;
   wire FE_OFN6_operand_B_0_;
   wire FE_OFN2_RST_S_1;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \memory[15][7] ;
   wire \memory[15][6] ;
   wire \memory[15][5] ;
   wire \memory[15][4] ;
   wire \memory[15][3] ;
   wire \memory[15][2] ;
   wire \memory[15][1] ;
   wire \memory[15][0] ;
   wire \memory[14][7] ;
   wire \memory[14][6] ;
   wire \memory[14][5] ;
   wire \memory[14][4] ;
   wire \memory[14][3] ;
   wire \memory[14][2] ;
   wire \memory[14][1] ;
   wire \memory[14][0] ;
   wire \memory[13][7] ;
   wire \memory[13][6] ;
   wire \memory[13][5] ;
   wire \memory[13][4] ;
   wire \memory[13][3] ;
   wire \memory[13][2] ;
   wire \memory[13][1] ;
   wire \memory[13][0] ;
   wire \memory[12][7] ;
   wire \memory[12][6] ;
   wire \memory[12][5] ;
   wire \memory[12][4] ;
   wire \memory[12][3] ;
   wire \memory[12][2] ;
   wire \memory[12][1] ;
   wire \memory[12][0] ;
   wire \memory[11][7] ;
   wire \memory[11][6] ;
   wire \memory[11][5] ;
   wire \memory[11][4] ;
   wire \memory[11][3] ;
   wire \memory[11][2] ;
   wire \memory[11][1] ;
   wire \memory[11][0] ;
   wire \memory[10][7] ;
   wire \memory[10][6] ;
   wire \memory[10][5] ;
   wire \memory[10][4] ;
   wire \memory[10][3] ;
   wire \memory[10][2] ;
   wire \memory[10][1] ;
   wire \memory[10][0] ;
   wire \memory[9][7] ;
   wire \memory[9][6] ;
   wire \memory[9][5] ;
   wire \memory[9][4] ;
   wire \memory[9][3] ;
   wire \memory[9][2] ;
   wire \memory[9][1] ;
   wire \memory[9][0] ;
   wire \memory[8][7] ;
   wire \memory[8][6] ;
   wire \memory[8][5] ;
   wire \memory[8][4] ;
   wire \memory[8][3] ;
   wire \memory[8][2] ;
   wire \memory[8][1] ;
   wire \memory[8][0] ;
   wire \memory[7][7] ;
   wire \memory[7][6] ;
   wire \memory[7][5] ;
   wire \memory[7][4] ;
   wire \memory[7][3] ;
   wire \memory[7][2] ;
   wire \memory[7][1] ;
   wire \memory[7][0] ;
   wire \memory[6][7] ;
   wire \memory[6][6] ;
   wire \memory[6][5] ;
   wire \memory[6][4] ;
   wire \memory[6][3] ;
   wire \memory[6][2] ;
   wire \memory[6][1] ;
   wire \memory[6][0] ;
   wire \memory[5][7] ;
   wire \memory[5][6] ;
   wire \memory[5][5] ;
   wire \memory[5][4] ;
   wire \memory[5][3] ;
   wire \memory[5][2] ;
   wire \memory[5][1] ;
   wire \memory[5][0] ;
   wire \memory[4][7] ;
   wire \memory[4][6] ;
   wire \memory[4][5] ;
   wire \memory[4][4] ;
   wire \memory[4][3] ;
   wire \memory[4][2] ;
   wire \memory[4][1] ;
   wire \memory[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n412;
   wire n414;
   wire n415;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n444;
   wire n445;
   wire n446;
   wire n447;

   assign N11 = address[0] ;
   assign N12 = address[1] ;
   assign N13 = address[2] ;
   assign N14 = address[3] ;
   assign test_so2 = \memory[15][7]  ;
   assign test_so1 = \memory[5][6]  ;

   BUFX5M FE_OFC15_operand_B_1_ (.Y(REG1[1]), 
	.A(FE_OFN15_operand_B_1_));
   BUFX4M FE_OFC14_operand_B_6_ (.Y(REG1[6]), 
	.A(FE_OFN14_operand_B_6_));
   BUFX4M FE_OFC13_operand_A_7_ (.Y(REG0[7]), 
	.A(FE_OFN13_operand_A_7_));
   CLKBUFX4M FE_OFC12_operand_A_6_ (.Y(REG0[6]), 
	.A(FE_OFN12_operand_A_6_));
   CLKBUFX2M FE_OFC11_operand_A_5_ (.Y(REG0[5]), 
	.A(FE_OFN11_operand_A_5_));
   CLKBUFX2M FE_OFC10_operand_A_4_ (.Y(REG0[4]), 
	.A(FE_OFN10_operand_A_4_));
   CLKBUFX2M FE_OFC9_operand_A_3_ (.Y(REG0[3]), 
	.A(FE_OFN9_operand_A_3_));
   BUFX2M FE_OFC8_operand_B_4_ (.Y(REG1[4]), 
	.A(FE_OFN8_operand_B_4_));
   BUFX6M FE_OFC7_operand_B_7_ (.Y(REG1[7]), 
	.A(FE_OFN7_operand_B_7_));
   BUFX8M FE_OFC6_operand_B_0_ (.Y(REG1[0]), 
	.A(FE_OFN6_operand_B_0_));
   INVX8M FE_OFC2_RST_S_1 (.Y(FE_OFN2_RST_S_1), 
	.A(RST));
   SDFFRQX2M \memory_reg[15][7]  (.SI(\memory[15][6] ), 
	.SE(n446), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[15][7] ), 
	.D(n312), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[15][6]  (.SI(\memory[15][5] ), 
	.SE(n445), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[15][6] ), 
	.D(n311), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[15][5]  (.SI(\memory[15][4] ), 
	.SE(n444), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[15][5] ), 
	.D(n310), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[15][4]  (.SI(\memory[15][3] ), 
	.SE(n447), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[15][4] ), 
	.D(n309), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[15][3]  (.SI(\memory[15][2] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[15][3] ), 
	.D(n308), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[15][2]  (.SI(\memory[15][1] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[15][2] ), 
	.D(n307), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[15][1]  (.SI(\memory[15][0] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[15][1] ), 
	.D(n306), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[15][0]  (.SI(\memory[14][7] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[15][0] ), 
	.D(n305), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[13][7]  (.SI(\memory[13][6] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[13][7] ), 
	.D(n296), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[13][6]  (.SI(\memory[13][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][6] ), 
	.D(n295), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[13][5]  (.SI(\memory[13][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][5] ), 
	.D(n294), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[13][4]  (.SI(\memory[13][3] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][4] ), 
	.D(n293), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[13][3]  (.SI(\memory[13][2] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][3] ), 
	.D(n292), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[13][2]  (.SI(\memory[13][1] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][2] ), 
	.D(n291), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[13][1]  (.SI(\memory[13][0] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][1] ), 
	.D(n290), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[13][0]  (.SI(\memory[12][7] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[13][0] ), 
	.D(n289), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[11][7]  (.SI(\memory[11][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][7] ), 
	.D(n280), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[11][6]  (.SI(\memory[11][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][6] ), 
	.D(n279), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[11][5]  (.SI(\memory[11][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][5] ), 
	.D(n278), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[11][4]  (.SI(\memory[11][3] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][4] ), 
	.D(n277), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[11][3]  (.SI(\memory[11][2] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][3] ), 
	.D(n276), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[11][2]  (.SI(\memory[11][1] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][2] ), 
	.D(n275), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[11][1]  (.SI(\memory[11][0] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][1] ), 
	.D(n274), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[11][0]  (.SI(\memory[10][7] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[11][0] ), 
	.D(n273), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][7]  (.SI(\memory[9][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][7] ), 
	.D(n264), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][6]  (.SI(\memory[9][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][6] ), 
	.D(n263), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][5]  (.SI(\memory[9][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][5] ), 
	.D(n262), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][4]  (.SI(\memory[9][3] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][4] ), 
	.D(n261), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][3]  (.SI(\memory[9][2] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][3] ), 
	.D(n260), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][2]  (.SI(\memory[9][1] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][2] ), 
	.D(n259), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][1]  (.SI(\memory[9][0] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][1] ), 
	.D(n258), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[9][0]  (.SI(\memory[8][7] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[9][0] ), 
	.D(n257), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[7][7]  (.SI(\memory[7][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[7][7] ), 
	.D(n248), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][6]  (.SI(\memory[7][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[7][6] ), 
	.D(n247), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][5]  (.SI(\memory[7][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[7][5] ), 
	.D(n246), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][4]  (.SI(\memory[7][3] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[7][4] ), 
	.D(n245), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][3]  (.SI(\memory[7][2] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[7][3] ), 
	.D(n244), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][2]  (.SI(\memory[7][1] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[7][2] ), 
	.D(n243), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][1]  (.SI(\memory[7][0] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[7][1] ), 
	.D(n242), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[7][0]  (.SI(\memory[6][7] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[7][0] ), 
	.D(n241), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[5][7]  (.SI(test_si2), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][7] ), 
	.D(n232), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[5][6]  (.SI(\memory[5][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[5][6] ), 
	.D(n231), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[5][5]  (.SI(\memory[5][4] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][5] ), 
	.D(n230), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[5][4]  (.SI(\memory[5][3] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][4] ), 
	.D(n229), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[5][3]  (.SI(\memory[5][2] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][3] ), 
	.D(n228), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[5][2]  (.SI(\memory[5][1] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][2] ), 
	.D(n227), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[5][1]  (.SI(\memory[5][0] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][1] ), 
	.D(n226), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[5][0]  (.SI(\memory[4][7] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[5][0] ), 
	.D(n225), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[14][7]  (.SI(\memory[14][6] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[14][7] ), 
	.D(n304), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[14][6]  (.SI(\memory[14][5] ), 
	.SE(n445), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[14][6] ), 
	.D(n303), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[14][5]  (.SI(\memory[14][4] ), 
	.SE(n444), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[14][5] ), 
	.D(n302), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[14][4]  (.SI(\memory[14][3] ), 
	.SE(n447), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[14][4] ), 
	.D(n301), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[14][3]  (.SI(\memory[14][2] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[14][3] ), 
	.D(n300), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[14][2]  (.SI(\memory[14][1] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[14][2] ), 
	.D(n299), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[14][1]  (.SI(\memory[14][0] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[14][1] ), 
	.D(n298), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[14][0]  (.SI(\memory[13][7] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[14][0] ), 
	.D(n297), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[12][7]  (.SI(\memory[12][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][7] ), 
	.D(n288), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][6]  (.SI(\memory[12][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][6] ), 
	.D(n287), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][5]  (.SI(\memory[12][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][5] ), 
	.D(n286), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][4]  (.SI(\memory[12][3] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][4] ), 
	.D(n285), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][3]  (.SI(\memory[12][2] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][3] ), 
	.D(n284), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][2]  (.SI(\memory[12][1] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][2] ), 
	.D(n283), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][1]  (.SI(\memory[12][0] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][1] ), 
	.D(n282), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[12][0]  (.SI(\memory[11][7] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[12][0] ), 
	.D(n281), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[10][7]  (.SI(\memory[10][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][7] ), 
	.D(n272), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[10][6]  (.SI(\memory[10][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][6] ), 
	.D(n271), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[10][5]  (.SI(\memory[10][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][5] ), 
	.D(n270), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[10][4]  (.SI(\memory[10][3] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][4] ), 
	.D(n269), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[10][3]  (.SI(\memory[10][2] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][3] ), 
	.D(n268), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[10][2]  (.SI(\memory[10][1] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][2] ), 
	.D(n267), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRQX2M \memory_reg[10][1]  (.SI(\memory[10][0] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][1] ), 
	.D(n266), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[10][0]  (.SI(\memory[9][7] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[10][0] ), 
	.D(n265), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[8][7]  (.SI(\memory[8][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][7] ), 
	.D(n256), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[8][6]  (.SI(\memory[8][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][6] ), 
	.D(n255), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[8][5]  (.SI(\memory[8][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][5] ), 
	.D(n254), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[8][4]  (.SI(\memory[8][3] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][4] ), 
	.D(n253), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[8][3]  (.SI(\memory[8][2] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][3] ), 
	.D(n252), 
	.CK(CLK_M_RF__L6_N2));
   SDFFRQX2M \memory_reg[8][2]  (.SI(\memory[8][1] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][2] ), 
	.D(n251), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[8][1]  (.SI(\memory[8][0] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][1] ), 
	.D(n250), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[8][0]  (.SI(\memory[7][7] ), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[8][0] ), 
	.D(n249), 
	.CK(CLK));
   SDFFRQX2M \memory_reg[6][7]  (.SI(\memory[6][6] ), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[6][7] ), 
	.D(n240), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[6][6]  (.SI(\memory[6][5] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[6][6] ), 
	.D(n239), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[6][5]  (.SI(\memory[6][4] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(\memory[6][5] ), 
	.D(n238), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[6][4]  (.SI(\memory[6][3] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[6][4] ), 
	.D(n237), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[6][3]  (.SI(\memory[6][2] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[6][3] ), 
	.D(n236), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[6][2]  (.SI(\memory[6][1] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[6][2] ), 
	.D(n235), 
	.CK(CLK_M_RF__L6_N1));
   SDFFRQX2M \memory_reg[6][1]  (.SI(\memory[6][0] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[6][1] ), 
	.D(n234), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[6][0]  (.SI(\memory[5][7] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[6][0] ), 
	.D(n233), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[4][7]  (.SI(\memory[4][6] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][7] ), 
	.D(n224), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[4][6]  (.SI(\memory[4][5] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][6] ), 
	.D(n223), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[4][5]  (.SI(\memory[4][4] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][5] ), 
	.D(n222), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \memory_reg[4][4]  (.SI(\memory[4][3] ), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][4] ), 
	.D(n221), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[4][3]  (.SI(\memory[4][2] ), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][3] ), 
	.D(n220), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[4][2]  (.SI(\memory[4][1] ), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][2] ), 
	.D(n219), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[4][1]  (.SI(\memory[4][0] ), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][1] ), 
	.D(n218), 
	.CK(CLK_M_RF__L6_N5));
   SDFFRQX2M \memory_reg[4][0]  (.SI(REG3[7]), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(\memory[4][0] ), 
	.D(n217), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[3][0]  (.SI(REG2[7]), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG3[0]), 
	.D(n209), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[7]), 
	.D(n184), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[6]), 
	.D(n183), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[5]), 
	.D(n182), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[4]), 
	.D(n181), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(RdData[3]), 
	.D(n180), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[2]), 
	.D(n179), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[1]), 
	.D(n178), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRQX2M \RdData_reg[0]  (.SI(test_si1), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData[0]), 
	.D(n177), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \memory_reg[2][1]  (.SI(REG2[0]), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG2[1]), 
	.D(n202), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRHQX2M \memory_reg[1][6]  (.SI(REG1[5]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN14_operand_B_6_), 
	.D(n199), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRHQX2M \memory_reg[0][7]  (.SI(REG0[6]), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN13_operand_A_7_), 
	.D(n192), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX2M \memory_reg[0][6]  (.SI(REG0[5]), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN12_operand_A_6_), 
	.D(n191), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX2M \memory_reg[0][5]  (.SI(REG0[4]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN11_operand_A_5_), 
	.D(n190), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX2M \memory_reg[0][4]  (.SI(REG0[3]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN10_operand_A_4_), 
	.D(n189), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRQX2M \memory_reg[0][3]  (.SI(REG0[2]), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN9_operand_A_3_), 
	.D(n188), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRQX2M \memory_reg[0][2]  (.SI(REG0[1]), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(REG0[2]), 
	.D(n187), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRQX2M \memory_reg[0][1]  (.SI(REG0[0]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(REG0[1]), 
	.D(n186), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRQX2M \memory_reg[0][0]  (.SI(RdData_valid), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(REG0[0]), 
	.D(n185), 
	.CK(CLK_M_RF__L6_N7));
   SDFFSQX2M \memory_reg[2][0]  (.SN(FE_OFN3_RST_S_1), 
	.SI(REG1[7]), 
	.SE(test_se), 
	.Q(REG2[0]), 
	.D(n201), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRHQX4M \memory_reg[1][1]  (.SI(REG1[0]), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN15_operand_B_1_), 
	.D(n194), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX4M \memory_reg[1][5]  (.SI(REG1[4]), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(REG1[5]), 
	.D(n198), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX2M \memory_reg[1][4]  (.SI(REG1[3]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN8_operand_B_4_), 
	.D(n197), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX2M \memory_reg[1][7]  (.SI(REG1[6]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN7_operand_B_7_), 
	.D(n200), 
	.CK(CLK_M_RF__L6_N3));
   SDFFRHQX4M \memory_reg[1][3]  (.SI(REG1[2]), 
	.SE(n447), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(REG1[3]), 
	.D(n196), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX4M \memory_reg[1][2]  (.SI(REG1[1]), 
	.SE(n446), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(REG1[2]), 
	.D(n195), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRHQX4M \memory_reg[1][0]  (.SI(REG0[7]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_S_1), 
	.Q(FE_OFN6_operand_B_0_), 
	.D(n193), 
	.CK(CLK_M_RF__L6_N4));
   SDFFRQX2M \memory_reg[3][6]  (.SI(REG3[5]), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG3[6]), 
	.D(n215), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[3][7]  (.SI(REG3[6]), 
	.SE(n447), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(REG3[7]), 
	.D(n216), 
	.CK(CLK_M_RF__L6_N6));
   SDFFSQX2M \memory_reg[3][5]  (.SN(FE_OFN3_RST_S_1), 
	.SI(REG3[4]), 
	.SE(n444), 
	.Q(REG3[5]), 
	.D(n214), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M RdData_valid_reg (.SI(RdData[7]), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(RdData_valid), 
	.D(n313), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \memory_reg[3][4]  (.SI(REG3[3]), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG3[4]), 
	.D(n213), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[3][2]  (.SI(REG3[1]), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG3[2]), 
	.D(n211), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[3][3]  (.SI(REG3[2]), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG3[3]), 
	.D(n212), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[3][1]  (.SI(REG3[0]), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG3[1]), 
	.D(n210), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[2][2]  (.SI(REG2[1]), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG2[2]), 
	.D(n203), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \memory_reg[2][4]  (.SI(REG2[3]), 
	.SE(n444), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG2[4]), 
	.D(n205), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \memory_reg[2][3]  (.SI(REG2[2]), 
	.SE(n447), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG2[3]), 
	.D(n204), 
	.CK(CLK_M_RF__L6_N7));
   SDFFSQX2M \memory_reg[2][7]  (.SN(FE_OFN3_RST_S_1), 
	.SI(REG2[6]), 
	.SE(n447), 
	.Q(REG2[7]), 
	.D(n208), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[2][6]  (.SI(REG2[5]), 
	.SE(n446), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG2[6]), 
	.D(n207), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \memory_reg[2][5]  (.SI(REG2[4]), 
	.SE(n445), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(REG2[5]), 
	.D(n206), 
	.CK(CLK_M_RF__L6_N7));
   NOR2BX2M U140 (.Y(n167), 
	.B(N11), 
	.AN(n175));
   NOR2BX2M U141 (.Y(n159), 
	.B(N12), 
	.AN(N13));
   NOR2BX2M U142 (.Y(n162), 
	.B(n409), 
	.AN(N13));
   NOR2BX2M U143 (.Y(n152), 
	.B(N11), 
	.AN(n163));
   NOR2X2M U144 (.Y(n156), 
	.B(N13), 
	.A(n409));
   NOR2X2M U145 (.Y(n151), 
	.B(N13), 
	.A(N12));
   INVX2M U146 (.Y(n438), 
	.A(WrData[5]));
   INVX2M U147 (.Y(n437), 
	.A(WrData[6]));
   INVX2M U148 (.Y(n412), 
	.A(n140));
   INVX2M U149 (.Y(n414), 
	.A(n139));
   INVX2M U150 (.Y(n410), 
	.A(n138));
   OR2X2M U151 (.Y(n138), 
	.B(n440), 
	.A(n409));
   INVX2M U154 (.Y(n415), 
	.A(n141));
   NOR2BX2M U155 (.Y(n154), 
	.B(n440), 
	.AN(n163));
   NOR2BX2M U156 (.Y(n169), 
	.B(n440), 
	.AN(n175));
   NAND2X2M U157 (.Y(n155), 
	.B(n152), 
	.A(n156));
   NAND2X2M U158 (.Y(n158), 
	.B(n152), 
	.A(n159));
   NAND2X2M U159 (.Y(n161), 
	.B(n152), 
	.A(n162));
   NAND2X2M U160 (.Y(n153), 
	.B(n151), 
	.A(n154));
   NAND2X2M U161 (.Y(n157), 
	.B(n154), 
	.A(n156));
   NAND2X2M U162 (.Y(n160), 
	.B(n154), 
	.A(n159));
   NAND2X2M U163 (.Y(n164), 
	.B(n154), 
	.A(n162));
   NAND2X2M U164 (.Y(n166), 
	.B(n151), 
	.A(n167));
   NAND2X2M U165 (.Y(n168), 
	.B(n151), 
	.A(n169));
   NAND2X2M U166 (.Y(n170), 
	.B(n156), 
	.A(n167));
   NAND2X2M U167 (.Y(n171), 
	.B(n156), 
	.A(n169));
   NAND2X2M U168 (.Y(n172), 
	.B(n159), 
	.A(n167));
   NAND2X2M U169 (.Y(n173), 
	.B(n159), 
	.A(n169));
   NAND2X2M U170 (.Y(n174), 
	.B(n162), 
	.A(n167));
   NAND2X2M U171 (.Y(n176), 
	.B(n162), 
	.A(n169));
   NAND2X2M U172 (.Y(n150), 
	.B(n152), 
	.A(n151));
   INVX2M U173 (.Y(n431), 
	.A(n149));
   OR2X2M U174 (.Y(n139), 
	.B(N12), 
	.A(n440));
   OR2X2M U175 (.Y(n140), 
	.B(N11), 
	.A(n409));
   OR2X2M U176 (.Y(n141), 
	.B(N12), 
	.A(N11));
   INVX2M U177 (.Y(n409), 
	.A(N12));
   INVX2M U178 (.Y(n440), 
	.A(N11));
   NOR2BX2M U179 (.Y(n163), 
	.B(N14), 
	.AN(n165));
   INVX2M U180 (.Y(n408), 
	.A(N13));
   INVX2M U181 (.Y(n407), 
	.A(N14));
   AND2X2M U182 (.Y(n175), 
	.B(n165), 
	.A(N14));
   NAND2BX2M U183 (.Y(n149), 
	.B(RdEn), 
	.AN(WrEn));
   NOR2BX2M U184 (.Y(n165), 
	.B(RdEn), 
	.AN(WrEn));
   INVX2M U195 (.Y(n436), 
	.A(WrData[0]));
   INVX2M U196 (.Y(n435), 
	.A(WrData[1]));
   INVX2M U197 (.Y(n434), 
	.A(WrData[2]));
   INVX2M U198 (.Y(n433), 
	.A(WrData[4]));
   INVX2M U199 (.Y(n432), 
	.A(WrData[7]));
   INVX2M U200 (.Y(n439), 
	.A(WrData[3]));
   AO22X1M U206 (.Y(n177), 
	.B1(n149), 
	.B0(RdData[0]), 
	.A1(n431), 
	.A0(N43));
   AO22X1M U207 (.Y(n178), 
	.B1(n149), 
	.B0(RdData[1]), 
	.A1(n431), 
	.A0(N42));
   AO22X1M U208 (.Y(n179), 
	.B1(n149), 
	.B0(RdData[2]), 
	.A1(n431), 
	.A0(N41));
   AO22X1M U209 (.Y(n180), 
	.B1(n149), 
	.B0(RdData[3]), 
	.A1(n431), 
	.A0(N40));
   AO22X1M U210 (.Y(n181), 
	.B1(n149), 
	.B0(RdData[4]), 
	.A1(n431), 
	.A0(N39));
   AO22X1M U211 (.Y(n182), 
	.B1(n149), 
	.B0(RdData[5]), 
	.A1(n431), 
	.A0(N38));
   AO22X1M U212 (.Y(n183), 
	.B1(n149), 
	.B0(RdData[6]), 
	.A1(n431), 
	.A0(N37));
   AO22X1M U213 (.Y(n184), 
	.B1(n149), 
	.B0(RdData[7]), 
	.A1(n431), 
	.A0(N36));
   OAI2BB2X1M U214 (.Y(n249), 
	.B1(n166), 
	.B0(n436), 
	.A1N(n166), 
	.A0N(\memory[8][0] ));
   OAI2BB2X1M U215 (.Y(n250), 
	.B1(n166), 
	.B0(n435), 
	.A1N(n166), 
	.A0N(\memory[8][1] ));
   OAI2BB2X1M U216 (.Y(n251), 
	.B1(n166), 
	.B0(n434), 
	.A1N(n166), 
	.A0N(\memory[8][2] ));
   OAI2BB2X1M U217 (.Y(n252), 
	.B1(n166), 
	.B0(n439), 
	.A1N(n166), 
	.A0N(\memory[8][3] ));
   OAI2BB2X1M U218 (.Y(n253), 
	.B1(n166), 
	.B0(n433), 
	.A1N(n166), 
	.A0N(\memory[8][4] ));
   OAI2BB2X1M U219 (.Y(n254), 
	.B1(n166), 
	.B0(n438), 
	.A1N(n166), 
	.A0N(\memory[8][5] ));
   OAI2BB2X1M U220 (.Y(n255), 
	.B1(n166), 
	.B0(n437), 
	.A1N(n166), 
	.A0N(\memory[8][6] ));
   OAI2BB2X1M U221 (.Y(n256), 
	.B1(n166), 
	.B0(n432), 
	.A1N(n166), 
	.A0N(\memory[8][7] ));
   OAI2BB2X1M U222 (.Y(n265), 
	.B1(n170), 
	.B0(n436), 
	.A1N(n170), 
	.A0N(\memory[10][0] ));
   OAI2BB2X1M U223 (.Y(n266), 
	.B1(n170), 
	.B0(n435), 
	.A1N(n170), 
	.A0N(\memory[10][1] ));
   OAI2BB2X1M U224 (.Y(n267), 
	.B1(n170), 
	.B0(n434), 
	.A1N(n170), 
	.A0N(\memory[10][2] ));
   OAI2BB2X1M U225 (.Y(n268), 
	.B1(n170), 
	.B0(n439), 
	.A1N(n170), 
	.A0N(\memory[10][3] ));
   OAI2BB2X1M U226 (.Y(n269), 
	.B1(n170), 
	.B0(n433), 
	.A1N(n170), 
	.A0N(\memory[10][4] ));
   OAI2BB2X1M U227 (.Y(n270), 
	.B1(n170), 
	.B0(n438), 
	.A1N(n170), 
	.A0N(\memory[10][5] ));
   OAI2BB2X1M U228 (.Y(n271), 
	.B1(n170), 
	.B0(n437), 
	.A1N(n170), 
	.A0N(\memory[10][6] ));
   OAI2BB2X1M U229 (.Y(n272), 
	.B1(n170), 
	.B0(n432), 
	.A1N(n170), 
	.A0N(\memory[10][7] ));
   OAI2BB2X1M U230 (.Y(n281), 
	.B1(n172), 
	.B0(n436), 
	.A1N(n172), 
	.A0N(\memory[12][0] ));
   OAI2BB2X1M U231 (.Y(n282), 
	.B1(n172), 
	.B0(n435), 
	.A1N(n172), 
	.A0N(\memory[12][1] ));
   OAI2BB2X1M U232 (.Y(n283), 
	.B1(n172), 
	.B0(n434), 
	.A1N(n172), 
	.A0N(\memory[12][2] ));
   OAI2BB2X1M U233 (.Y(n284), 
	.B1(n172), 
	.B0(n439), 
	.A1N(n172), 
	.A0N(\memory[12][3] ));
   OAI2BB2X1M U234 (.Y(n285), 
	.B1(n172), 
	.B0(n433), 
	.A1N(n172), 
	.A0N(\memory[12][4] ));
   OAI2BB2X1M U235 (.Y(n286), 
	.B1(n172), 
	.B0(n438), 
	.A1N(n172), 
	.A0N(\memory[12][5] ));
   OAI2BB2X1M U236 (.Y(n287), 
	.B1(n172), 
	.B0(n437), 
	.A1N(n172), 
	.A0N(\memory[12][6] ));
   OAI2BB2X1M U237 (.Y(n288), 
	.B1(n172), 
	.B0(n432), 
	.A1N(n172), 
	.A0N(\memory[12][7] ));
   OAI2BB2X1M U238 (.Y(n297), 
	.B1(n174), 
	.B0(n436), 
	.A1N(n174), 
	.A0N(\memory[14][0] ));
   OAI2BB2X1M U239 (.Y(n298), 
	.B1(n174), 
	.B0(n435), 
	.A1N(n174), 
	.A0N(\memory[14][1] ));
   OAI2BB2X1M U240 (.Y(n299), 
	.B1(n174), 
	.B0(n434), 
	.A1N(n174), 
	.A0N(\memory[14][2] ));
   OAI2BB2X1M U241 (.Y(n300), 
	.B1(n174), 
	.B0(n439), 
	.A1N(n174), 
	.A0N(\memory[14][3] ));
   OAI2BB2X1M U242 (.Y(n301), 
	.B1(n174), 
	.B0(n433), 
	.A1N(n174), 
	.A0N(\memory[14][4] ));
   OAI2BB2X1M U243 (.Y(n302), 
	.B1(n174), 
	.B0(n438), 
	.A1N(n174), 
	.A0N(\memory[14][5] ));
   OAI2BB2X1M U244 (.Y(n303), 
	.B1(n174), 
	.B0(n437), 
	.A1N(n174), 
	.A0N(\memory[14][6] ));
   OAI2BB2X1M U245 (.Y(n304), 
	.B1(n174), 
	.B0(n432), 
	.A1N(n174), 
	.A0N(\memory[14][7] ));
   OAI2BB2X1M U246 (.Y(n185), 
	.B1(n436), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[0]));
   OAI2BB2X1M U247 (.Y(n186), 
	.B1(n435), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[1]));
   OAI2BB2X1M U248 (.Y(n187), 
	.B1(n434), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[2]));
   OAI2BB2X1M U249 (.Y(n188), 
	.B1(n439), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[3]));
   OAI2BB2X1M U250 (.Y(n189), 
	.B1(n433), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[4]));
   OAI2BB2X1M U251 (.Y(n190), 
	.B1(n438), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[5]));
   OAI2BB2X1M U252 (.Y(n191), 
	.B1(n437), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[6]));
   OAI2BB2X1M U253 (.Y(n192), 
	.B1(n432), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[7]));
   OAI2BB2X1M U254 (.Y(n193), 
	.B1(n153), 
	.B0(n436), 
	.A1N(n153), 
	.A0N(REG1[0]));
   OAI2BB2X1M U255 (.Y(n194), 
	.B1(n153), 
	.B0(n435), 
	.A1N(n153), 
	.A0N(REG1[1]));
   OAI2BB2X1M U256 (.Y(n195), 
	.B1(n153), 
	.B0(n434), 
	.A1N(n153), 
	.A0N(REG1[2]));
   OAI2BB2X1M U257 (.Y(n196), 
	.B1(n153), 
	.B0(n439), 
	.A1N(n153), 
	.A0N(REG1[3]));
   OAI2BB2X1M U258 (.Y(n197), 
	.B1(n153), 
	.B0(n433), 
	.A1N(n153), 
	.A0N(REG1[4]));
   OAI2BB2X1M U259 (.Y(n198), 
	.B1(n153), 
	.B0(n438), 
	.A1N(n153), 
	.A0N(REG1[5]));
   OAI2BB2X1M U260 (.Y(n199), 
	.B1(n153), 
	.B0(n437), 
	.A1N(n153), 
	.A0N(REG1[6]));
   OAI2BB2X1M U261 (.Y(n200), 
	.B1(n153), 
	.B0(n432), 
	.A1N(n153), 
	.A0N(REG1[7]));
   OAI2BB2X1M U262 (.Y(n217), 
	.B1(n158), 
	.B0(n436), 
	.A1N(n158), 
	.A0N(\memory[4][0] ));
   OAI2BB2X1M U263 (.Y(n218), 
	.B1(n158), 
	.B0(n435), 
	.A1N(n158), 
	.A0N(\memory[4][1] ));
   OAI2BB2X1M U264 (.Y(n219), 
	.B1(n158), 
	.B0(n434), 
	.A1N(n158), 
	.A0N(\memory[4][2] ));
   OAI2BB2X1M U265 (.Y(n220), 
	.B1(n158), 
	.B0(n439), 
	.A1N(n158), 
	.A0N(\memory[4][3] ));
   OAI2BB2X1M U266 (.Y(n221), 
	.B1(n158), 
	.B0(n433), 
	.A1N(n158), 
	.A0N(\memory[4][4] ));
   OAI2BB2X1M U267 (.Y(n222), 
	.B1(n158), 
	.B0(n438), 
	.A1N(n158), 
	.A0N(\memory[4][5] ));
   OAI2BB2X1M U268 (.Y(n223), 
	.B1(n158), 
	.B0(n437), 
	.A1N(n158), 
	.A0N(\memory[4][6] ));
   OAI2BB2X1M U269 (.Y(n224), 
	.B1(n158), 
	.B0(n432), 
	.A1N(n158), 
	.A0N(\memory[4][7] ));
   OAI2BB2X1M U270 (.Y(n225), 
	.B1(n160), 
	.B0(n436), 
	.A1N(n160), 
	.A0N(\memory[5][0] ));
   OAI2BB2X1M U271 (.Y(n226), 
	.B1(n160), 
	.B0(n435), 
	.A1N(n160), 
	.A0N(\memory[5][1] ));
   OAI2BB2X1M U272 (.Y(n227), 
	.B1(n160), 
	.B0(n434), 
	.A1N(n160), 
	.A0N(\memory[5][2] ));
   OAI2BB2X1M U273 (.Y(n228), 
	.B1(n160), 
	.B0(n439), 
	.A1N(n160), 
	.A0N(\memory[5][3] ));
   OAI2BB2X1M U274 (.Y(n229), 
	.B1(n160), 
	.B0(n433), 
	.A1N(n160), 
	.A0N(\memory[5][4] ));
   OAI2BB2X1M U275 (.Y(n230), 
	.B1(n160), 
	.B0(n438), 
	.A1N(n160), 
	.A0N(\memory[5][5] ));
   OAI2BB2X1M U276 (.Y(n231), 
	.B1(n160), 
	.B0(n437), 
	.A1N(n160), 
	.A0N(\memory[5][6] ));
   OAI2BB2X1M U277 (.Y(n232), 
	.B1(n160), 
	.B0(n432), 
	.A1N(n160), 
	.A0N(\memory[5][7] ));
   OAI2BB2X1M U278 (.Y(n233), 
	.B1(n161), 
	.B0(n436), 
	.A1N(n161), 
	.A0N(\memory[6][0] ));
   OAI2BB2X1M U279 (.Y(n234), 
	.B1(n161), 
	.B0(n435), 
	.A1N(n161), 
	.A0N(\memory[6][1] ));
   OAI2BB2X1M U280 (.Y(n235), 
	.B1(n161), 
	.B0(n434), 
	.A1N(n161), 
	.A0N(\memory[6][2] ));
   OAI2BB2X1M U281 (.Y(n236), 
	.B1(n161), 
	.B0(n439), 
	.A1N(n161), 
	.A0N(\memory[6][3] ));
   OAI2BB2X1M U282 (.Y(n237), 
	.B1(n161), 
	.B0(n433), 
	.A1N(n161), 
	.A0N(\memory[6][4] ));
   OAI2BB2X1M U283 (.Y(n238), 
	.B1(n161), 
	.B0(n438), 
	.A1N(n161), 
	.A0N(\memory[6][5] ));
   OAI2BB2X1M U284 (.Y(n239), 
	.B1(n161), 
	.B0(n437), 
	.A1N(n161), 
	.A0N(\memory[6][6] ));
   OAI2BB2X1M U285 (.Y(n240), 
	.B1(n161), 
	.B0(n432), 
	.A1N(n161), 
	.A0N(\memory[6][7] ));
   OAI2BB2X1M U286 (.Y(n241), 
	.B1(n164), 
	.B0(n436), 
	.A1N(n164), 
	.A0N(\memory[7][0] ));
   OAI2BB2X1M U287 (.Y(n242), 
	.B1(n164), 
	.B0(n435), 
	.A1N(n164), 
	.A0N(\memory[7][1] ));
   OAI2BB2X1M U288 (.Y(n243), 
	.B1(n164), 
	.B0(n434), 
	.A1N(n164), 
	.A0N(\memory[7][2] ));
   OAI2BB2X1M U289 (.Y(n244), 
	.B1(n164), 
	.B0(n439), 
	.A1N(n164), 
	.A0N(\memory[7][3] ));
   OAI2BB2X1M U290 (.Y(n245), 
	.B1(n164), 
	.B0(n433), 
	.A1N(n164), 
	.A0N(\memory[7][4] ));
   OAI2BB2X1M U291 (.Y(n246), 
	.B1(n164), 
	.B0(n438), 
	.A1N(n164), 
	.A0N(\memory[7][5] ));
   OAI2BB2X1M U292 (.Y(n247), 
	.B1(n164), 
	.B0(n437), 
	.A1N(n164), 
	.A0N(\memory[7][6] ));
   OAI2BB2X1M U293 (.Y(n248), 
	.B1(n164), 
	.B0(n432), 
	.A1N(n164), 
	.A0N(\memory[7][7] ));
   OAI2BB2X1M U294 (.Y(n257), 
	.B1(n168), 
	.B0(n436), 
	.A1N(n168), 
	.A0N(\memory[9][0] ));
   OAI2BB2X1M U295 (.Y(n258), 
	.B1(n168), 
	.B0(n435), 
	.A1N(n168), 
	.A0N(\memory[9][1] ));
   OAI2BB2X1M U296 (.Y(n259), 
	.B1(n168), 
	.B0(n434), 
	.A1N(n168), 
	.A0N(\memory[9][2] ));
   OAI2BB2X1M U297 (.Y(n260), 
	.B1(n168), 
	.B0(n439), 
	.A1N(n168), 
	.A0N(\memory[9][3] ));
   OAI2BB2X1M U298 (.Y(n261), 
	.B1(n168), 
	.B0(n433), 
	.A1N(n168), 
	.A0N(\memory[9][4] ));
   OAI2BB2X1M U299 (.Y(n262), 
	.B1(n168), 
	.B0(n438), 
	.A1N(n168), 
	.A0N(\memory[9][5] ));
   OAI2BB2X1M U300 (.Y(n263), 
	.B1(n168), 
	.B0(n437), 
	.A1N(n168), 
	.A0N(\memory[9][6] ));
   OAI2BB2X1M U301 (.Y(n264), 
	.B1(n168), 
	.B0(n432), 
	.A1N(n168), 
	.A0N(\memory[9][7] ));
   OAI2BB2X1M U302 (.Y(n273), 
	.B1(n171), 
	.B0(n436), 
	.A1N(n171), 
	.A0N(\memory[11][0] ));
   OAI2BB2X1M U303 (.Y(n274), 
	.B1(n171), 
	.B0(n435), 
	.A1N(n171), 
	.A0N(\memory[11][1] ));
   OAI2BB2X1M U304 (.Y(n275), 
	.B1(n171), 
	.B0(n434), 
	.A1N(n171), 
	.A0N(\memory[11][2] ));
   OAI2BB2X1M U305 (.Y(n276), 
	.B1(n171), 
	.B0(n439), 
	.A1N(n171), 
	.A0N(\memory[11][3] ));
   OAI2BB2X1M U306 (.Y(n277), 
	.B1(n171), 
	.B0(n433), 
	.A1N(n171), 
	.A0N(\memory[11][4] ));
   OAI2BB2X1M U307 (.Y(n278), 
	.B1(n171), 
	.B0(n438), 
	.A1N(n171), 
	.A0N(\memory[11][5] ));
   OAI2BB2X1M U308 (.Y(n279), 
	.B1(n171), 
	.B0(n437), 
	.A1N(n171), 
	.A0N(\memory[11][6] ));
   OAI2BB2X1M U309 (.Y(n280), 
	.B1(n171), 
	.B0(n432), 
	.A1N(n171), 
	.A0N(\memory[11][7] ));
   OAI2BB2X1M U310 (.Y(n289), 
	.B1(n173), 
	.B0(n436), 
	.A1N(n173), 
	.A0N(\memory[13][0] ));
   OAI2BB2X1M U311 (.Y(n290), 
	.B1(n173), 
	.B0(n435), 
	.A1N(n173), 
	.A0N(\memory[13][1] ));
   OAI2BB2X1M U312 (.Y(n291), 
	.B1(n173), 
	.B0(n434), 
	.A1N(n173), 
	.A0N(\memory[13][2] ));
   OAI2BB2X1M U313 (.Y(n292), 
	.B1(n173), 
	.B0(n439), 
	.A1N(n173), 
	.A0N(\memory[13][3] ));
   OAI2BB2X1M U314 (.Y(n293), 
	.B1(n173), 
	.B0(n433), 
	.A1N(n173), 
	.A0N(\memory[13][4] ));
   OAI2BB2X1M U315 (.Y(n294), 
	.B1(n173), 
	.B0(n438), 
	.A1N(n173), 
	.A0N(\memory[13][5] ));
   OAI2BB2X1M U316 (.Y(n295), 
	.B1(n173), 
	.B0(n437), 
	.A1N(n173), 
	.A0N(\memory[13][6] ));
   OAI2BB2X1M U317 (.Y(n296), 
	.B1(n173), 
	.B0(n432), 
	.A1N(n173), 
	.A0N(\memory[13][7] ));
   OAI2BB2X1M U318 (.Y(n305), 
	.B1(n176), 
	.B0(n436), 
	.A1N(n176), 
	.A0N(\memory[15][0] ));
   OAI2BB2X1M U319 (.Y(n306), 
	.B1(n176), 
	.B0(n435), 
	.A1N(n176), 
	.A0N(\memory[15][1] ));
   OAI2BB2X1M U320 (.Y(n307), 
	.B1(n176), 
	.B0(n434), 
	.A1N(n176), 
	.A0N(\memory[15][2] ));
   OAI2BB2X1M U321 (.Y(n308), 
	.B1(n176), 
	.B0(n439), 
	.A1N(n176), 
	.A0N(\memory[15][3] ));
   OAI2BB2X1M U322 (.Y(n309), 
	.B1(n176), 
	.B0(n433), 
	.A1N(n176), 
	.A0N(\memory[15][4] ));
   OAI2BB2X1M U323 (.Y(n310), 
	.B1(n176), 
	.B0(n438), 
	.A1N(n176), 
	.A0N(\memory[15][5] ));
   OAI2BB2X1M U324 (.Y(n311), 
	.B1(n176), 
	.B0(n437), 
	.A1N(n176), 
	.A0N(\memory[15][6] ));
   OAI2BB2X1M U325 (.Y(n312), 
	.B1(n176), 
	.B0(n432), 
	.A1N(n176), 
	.A0N(\memory[15][7] ));
   OAI2BB2X1M U326 (.Y(n202), 
	.B1(n155), 
	.B0(n435), 
	.A1N(n155), 
	.A0N(REG2[1]));
   OAI2BB2X1M U327 (.Y(n203), 
	.B1(n155), 
	.B0(n434), 
	.A1N(n155), 
	.A0N(REG2[2]));
   OAI2BB2X1M U328 (.Y(n204), 
	.B1(n155), 
	.B0(n439), 
	.A1N(n155), 
	.A0N(REG2[3]));
   OAI2BB2X1M U329 (.Y(n205), 
	.B1(n155), 
	.B0(n433), 
	.A1N(n155), 
	.A0N(REG2[4]));
   OAI2BB2X1M U330 (.Y(n206), 
	.B1(n155), 
	.B0(n438), 
	.A1N(n155), 
	.A0N(REG2[5]));
   OAI2BB2X1M U331 (.Y(n207), 
	.B1(n155), 
	.B0(n437), 
	.A1N(n155), 
	.A0N(REG2[6]));
   OAI2BB2X1M U332 (.Y(n209), 
	.B1(n157), 
	.B0(n436), 
	.A1N(n157), 
	.A0N(REG3[0]));
   OAI2BB2X1M U333 (.Y(n210), 
	.B1(n157), 
	.B0(n435), 
	.A1N(n157), 
	.A0N(REG3[1]));
   OAI2BB2X1M U334 (.Y(n211), 
	.B1(n157), 
	.B0(n434), 
	.A1N(n157), 
	.A0N(REG3[2]));
   OAI2BB2X1M U335 (.Y(n212), 
	.B1(n157), 
	.B0(n439), 
	.A1N(n157), 
	.A0N(REG3[3]));
   OAI2BB2X1M U336 (.Y(n213), 
	.B1(n157), 
	.B0(n433), 
	.A1N(n157), 
	.A0N(REG3[4]));
   OAI2BB2X1M U337 (.Y(n215), 
	.B1(n157), 
	.B0(n437), 
	.A1N(n157), 
	.A0N(REG3[6]));
   OAI2BB2X1M U338 (.Y(n216), 
	.B1(n157), 
	.B0(n432), 
	.A1N(n157), 
	.A0N(REG3[7]));
   OAI2BB2X1M U339 (.Y(n201), 
	.B1(n155), 
	.B0(n436), 
	.A1N(n155), 
	.A0N(REG2[0]));
   OAI2BB2X1M U340 (.Y(n208), 
	.B1(n155), 
	.B0(n432), 
	.A1N(n155), 
	.A0N(REG2[7]));
   OAI2BB2X1M U341 (.Y(n214), 
	.B1(n157), 
	.B0(n438), 
	.A1N(n157), 
	.A0N(REG3[5]));
   OAI2BB1X2M U342 (.Y(n313), 
	.B0(n149), 
	.A1N(n165), 
	.A0N(RdData_valid));
   AOI22X1M U343 (.Y(n143), 
	.B1(n410), 
	.B0(\memory[11][0] ), 
	.A1(n412), 
	.A0(\memory[10][0] ));
   AOI22X1M U344 (.Y(n142), 
	.B1(n414), 
	.B0(\memory[9][0] ), 
	.A1(n415), 
	.A0(\memory[8][0] ));
   CLKNAND2X2M U345 (.Y(n391), 
	.B(n408), 
	.A(N14));
   AOI21X1M U346 (.Y(n318), 
	.B0(n391), 
	.A1(n142), 
	.A0(n143));
   AOI22X1M U347 (.Y(n145), 
	.B1(n410), 
	.B0(\memory[15][0] ), 
	.A1(n412), 
	.A0(\memory[14][0] ));
   AOI22X1M U348 (.Y(n144), 
	.B1(n414), 
	.B0(\memory[13][0] ), 
	.A1(n415), 
	.A0(\memory[12][0] ));
   CLKNAND2X2M U349 (.Y(n394), 
	.B(N13), 
	.A(N14));
   AOI21X1M U350 (.Y(n317), 
	.B0(n394), 
	.A1(n144), 
	.A0(n145));
   AOI22X1M U351 (.Y(n147), 
	.B1(n410), 
	.B0(REG3[0]), 
	.A1(n412), 
	.A0(REG2[0]));
   AOI22X1M U352 (.Y(n146), 
	.B1(n414), 
	.B0(REG1[0]), 
	.A1(n415), 
	.A0(REG0[0]));
   CLKNAND2X2M U353 (.Y(n397), 
	.B(n407), 
	.A(n408));
   AOI21X1M U354 (.Y(n316), 
	.B0(n397), 
	.A1(n146), 
	.A0(n147));
   AOI22X1M U355 (.Y(n314), 
	.B1(n410), 
	.B0(\memory[7][0] ), 
	.A1(n412), 
	.A0(\memory[6][0] ));
   AOI22X1M U356 (.Y(n148), 
	.B1(n414), 
	.B0(\memory[5][0] ), 
	.A1(n415), 
	.A0(\memory[4][0] ));
   CLKNAND2X2M U357 (.Y(n400), 
	.B(n407), 
	.A(N13));
   AOI21X1M U358 (.Y(n315), 
	.B0(n400), 
	.A1(n148), 
	.A0(n314));
   OR4X1M U359 (.Y(N43), 
	.D(n315), 
	.C(n316), 
	.B(n317), 
	.A(n318));
   AOI22X1M U360 (.Y(n320), 
	.B1(n410), 
	.B0(\memory[11][1] ), 
	.A1(n412), 
	.A0(\memory[10][1] ));
   AOI22X1M U361 (.Y(n319), 
	.B1(n414), 
	.B0(\memory[9][1] ), 
	.A1(n415), 
	.A0(\memory[8][1] ));
   AOI21X1M U362 (.Y(n330), 
	.B0(n391), 
	.A1(n319), 
	.A0(n320));
   AOI22X1M U363 (.Y(n322), 
	.B1(n410), 
	.B0(\memory[15][1] ), 
	.A1(n412), 
	.A0(\memory[14][1] ));
   AOI22X1M U364 (.Y(n321), 
	.B1(n414), 
	.B0(\memory[13][1] ), 
	.A1(n415), 
	.A0(\memory[12][1] ));
   AOI21X1M U365 (.Y(n329), 
	.B0(n394), 
	.A1(n321), 
	.A0(n322));
   AOI22X1M U366 (.Y(n324), 
	.B1(n410), 
	.B0(REG3[1]), 
	.A1(n412), 
	.A0(REG2[1]));
   AOI22X1M U367 (.Y(n323), 
	.B1(n414), 
	.B0(REG1[1]), 
	.A1(n415), 
	.A0(REG0[1]));
   AOI21X1M U368 (.Y(n328), 
	.B0(n397), 
	.A1(n323), 
	.A0(n324));
   AOI22X1M U369 (.Y(n326), 
	.B1(n410), 
	.B0(\memory[7][1] ), 
	.A1(n412), 
	.A0(\memory[6][1] ));
   AOI22X1M U370 (.Y(n325), 
	.B1(n414), 
	.B0(\memory[5][1] ), 
	.A1(n415), 
	.A0(\memory[4][1] ));
   AOI21X1M U371 (.Y(n327), 
	.B0(n400), 
	.A1(n325), 
	.A0(n326));
   OR4X1M U372 (.Y(N42), 
	.D(n327), 
	.C(n328), 
	.B(n329), 
	.A(n330));
   AOI22X1M U373 (.Y(n332), 
	.B1(n410), 
	.B0(\memory[11][2] ), 
	.A1(n412), 
	.A0(\memory[10][2] ));
   AOI22X1M U374 (.Y(n331), 
	.B1(n414), 
	.B0(\memory[9][2] ), 
	.A1(n415), 
	.A0(\memory[8][2] ));
   AOI21X1M U375 (.Y(n342), 
	.B0(n391), 
	.A1(n331), 
	.A0(n332));
   AOI22X1M U376 (.Y(n334), 
	.B1(n410), 
	.B0(\memory[15][2] ), 
	.A1(n412), 
	.A0(\memory[14][2] ));
   AOI22X1M U377 (.Y(n333), 
	.B1(n414), 
	.B0(\memory[13][2] ), 
	.A1(n415), 
	.A0(\memory[12][2] ));
   AOI21X1M U378 (.Y(n341), 
	.B0(n394), 
	.A1(n333), 
	.A0(n334));
   AOI22X1M U379 (.Y(n336), 
	.B1(n410), 
	.B0(REG3[2]), 
	.A1(n412), 
	.A0(REG2[2]));
   AOI22X1M U380 (.Y(n335), 
	.B1(n414), 
	.B0(REG1[2]), 
	.A1(n415), 
	.A0(REG0[2]));
   AOI21X1M U381 (.Y(n340), 
	.B0(n397), 
	.A1(n335), 
	.A0(n336));
   AOI22X1M U382 (.Y(n338), 
	.B1(n410), 
	.B0(\memory[7][2] ), 
	.A1(n412), 
	.A0(\memory[6][2] ));
   AOI22X1M U383 (.Y(n337), 
	.B1(n414), 
	.B0(\memory[5][2] ), 
	.A1(n415), 
	.A0(\memory[4][2] ));
   AOI21X1M U384 (.Y(n339), 
	.B0(n400), 
	.A1(n337), 
	.A0(n338));
   OR4X1M U385 (.Y(N41), 
	.D(n339), 
	.C(n340), 
	.B(n341), 
	.A(n342));
   AOI22X1M U386 (.Y(n344), 
	.B1(n410), 
	.B0(\memory[11][3] ), 
	.A1(n412), 
	.A0(\memory[10][3] ));
   AOI22X1M U387 (.Y(n343), 
	.B1(n414), 
	.B0(\memory[9][3] ), 
	.A1(n415), 
	.A0(\memory[8][3] ));
   AOI21X1M U388 (.Y(n354), 
	.B0(n391), 
	.A1(n343), 
	.A0(n344));
   AOI22X1M U389 (.Y(n346), 
	.B1(n410), 
	.B0(\memory[15][3] ), 
	.A1(n412), 
	.A0(\memory[14][3] ));
   AOI22X1M U390 (.Y(n345), 
	.B1(n414), 
	.B0(\memory[13][3] ), 
	.A1(n415), 
	.A0(\memory[12][3] ));
   AOI21X1M U391 (.Y(n353), 
	.B0(n394), 
	.A1(n345), 
	.A0(n346));
   AOI22X1M U392 (.Y(n348), 
	.B1(n410), 
	.B0(REG3[3]), 
	.A1(n412), 
	.A0(REG2[3]));
   AOI22X1M U393 (.Y(n347), 
	.B1(n414), 
	.B0(REG1[3]), 
	.A1(n415), 
	.A0(REG0[3]));
   AOI21X1M U394 (.Y(n352), 
	.B0(n397), 
	.A1(n347), 
	.A0(n348));
   AOI22X1M U395 (.Y(n350), 
	.B1(n410), 
	.B0(\memory[7][3] ), 
	.A1(n412), 
	.A0(\memory[6][3] ));
   AOI22X1M U396 (.Y(n349), 
	.B1(n414), 
	.B0(\memory[5][3] ), 
	.A1(n415), 
	.A0(\memory[4][3] ));
   AOI21X1M U397 (.Y(n351), 
	.B0(n400), 
	.A1(n349), 
	.A0(n350));
   OR4X1M U398 (.Y(N40), 
	.D(n351), 
	.C(n352), 
	.B(n353), 
	.A(n354));
   AOI22X1M U399 (.Y(n356), 
	.B1(n410), 
	.B0(\memory[11][4] ), 
	.A1(n412), 
	.A0(\memory[10][4] ));
   AOI22X1M U400 (.Y(n355), 
	.B1(n414), 
	.B0(\memory[9][4] ), 
	.A1(n415), 
	.A0(\memory[8][4] ));
   AOI21X1M U401 (.Y(n366), 
	.B0(n391), 
	.A1(n355), 
	.A0(n356));
   AOI22X1M U402 (.Y(n358), 
	.B1(n410), 
	.B0(\memory[15][4] ), 
	.A1(n412), 
	.A0(\memory[14][4] ));
   AOI22X1M U403 (.Y(n357), 
	.B1(n414), 
	.B0(\memory[13][4] ), 
	.A1(n415), 
	.A0(\memory[12][4] ));
   AOI21X1M U404 (.Y(n365), 
	.B0(n394), 
	.A1(n357), 
	.A0(n358));
   AOI22X1M U405 (.Y(n360), 
	.B1(n410), 
	.B0(REG3[4]), 
	.A1(n412), 
	.A0(REG2[4]));
   AOI22X1M U406 (.Y(n359), 
	.B1(n414), 
	.B0(REG1[4]), 
	.A1(n415), 
	.A0(REG0[4]));
   AOI21X1M U407 (.Y(n364), 
	.B0(n397), 
	.A1(n359), 
	.A0(n360));
   AOI22X1M U408 (.Y(n362), 
	.B1(n410), 
	.B0(\memory[7][4] ), 
	.A1(n412), 
	.A0(\memory[6][4] ));
   AOI22X1M U409 (.Y(n361), 
	.B1(n414), 
	.B0(\memory[5][4] ), 
	.A1(n415), 
	.A0(\memory[4][4] ));
   AOI21X1M U410 (.Y(n363), 
	.B0(n400), 
	.A1(n361), 
	.A0(n362));
   OR4X1M U411 (.Y(N39), 
	.D(n363), 
	.C(n364), 
	.B(n365), 
	.A(n366));
   AOI22X1M U412 (.Y(n368), 
	.B1(n410), 
	.B0(\memory[11][5] ), 
	.A1(n412), 
	.A0(\memory[10][5] ));
   AOI22X1M U413 (.Y(n367), 
	.B1(n414), 
	.B0(\memory[9][5] ), 
	.A1(n415), 
	.A0(\memory[8][5] ));
   AOI21X1M U414 (.Y(n378), 
	.B0(n391), 
	.A1(n367), 
	.A0(n368));
   AOI22X1M U415 (.Y(n370), 
	.B1(n410), 
	.B0(\memory[15][5] ), 
	.A1(n412), 
	.A0(\memory[14][5] ));
   AOI22X1M U416 (.Y(n369), 
	.B1(n414), 
	.B0(\memory[13][5] ), 
	.A1(n415), 
	.A0(\memory[12][5] ));
   AOI21X1M U417 (.Y(n377), 
	.B0(n394), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U418 (.Y(n372), 
	.B1(n410), 
	.B0(REG3[5]), 
	.A1(n412), 
	.A0(REG2[5]));
   AOI22X1M U419 (.Y(n371), 
	.B1(n414), 
	.B0(REG1[5]), 
	.A1(n415), 
	.A0(REG0[5]));
   AOI21X1M U420 (.Y(n376), 
	.B0(n397), 
	.A1(n371), 
	.A0(n372));
   AOI22X1M U421 (.Y(n374), 
	.B1(n410), 
	.B0(\memory[7][5] ), 
	.A1(n412), 
	.A0(\memory[6][5] ));
   AOI22X1M U422 (.Y(n373), 
	.B1(n414), 
	.B0(\memory[5][5] ), 
	.A1(n415), 
	.A0(\memory[4][5] ));
   AOI21X1M U423 (.Y(n375), 
	.B0(n400), 
	.A1(n373), 
	.A0(n374));
   OR4X1M U424 (.Y(N38), 
	.D(n375), 
	.C(n376), 
	.B(n377), 
	.A(n378));
   AOI22X1M U425 (.Y(n380), 
	.B1(n410), 
	.B0(\memory[11][6] ), 
	.A1(n412), 
	.A0(\memory[10][6] ));
   AOI22X1M U426 (.Y(n379), 
	.B1(n414), 
	.B0(\memory[9][6] ), 
	.A1(n415), 
	.A0(\memory[8][6] ));
   AOI21X1M U427 (.Y(n390), 
	.B0(n391), 
	.A1(n379), 
	.A0(n380));
   AOI22X1M U428 (.Y(n382), 
	.B1(n410), 
	.B0(\memory[15][6] ), 
	.A1(n412), 
	.A0(\memory[14][6] ));
   AOI22X1M U429 (.Y(n381), 
	.B1(n414), 
	.B0(\memory[13][6] ), 
	.A1(n415), 
	.A0(\memory[12][6] ));
   AOI21X1M U430 (.Y(n389), 
	.B0(n394), 
	.A1(n381), 
	.A0(n382));
   AOI22X1M U431 (.Y(n384), 
	.B1(n410), 
	.B0(REG3[6]), 
	.A1(n412), 
	.A0(REG2[6]));
   AOI22X1M U432 (.Y(n383), 
	.B1(n414), 
	.B0(REG1[6]), 
	.A1(n415), 
	.A0(REG0[6]));
   AOI21X1M U433 (.Y(n388), 
	.B0(n397), 
	.A1(n383), 
	.A0(n384));
   AOI22X1M U434 (.Y(n386), 
	.B1(n410), 
	.B0(\memory[7][6] ), 
	.A1(n412), 
	.A0(\memory[6][6] ));
   AOI22X1M U435 (.Y(n385), 
	.B1(n414), 
	.B0(\memory[5][6] ), 
	.A1(n415), 
	.A0(\memory[4][6] ));
   AOI21X1M U436 (.Y(n387), 
	.B0(n400), 
	.A1(n385), 
	.A0(n386));
   OR4X1M U437 (.Y(N37), 
	.D(n387), 
	.C(n388), 
	.B(n389), 
	.A(n390));
   AOI22X1M U438 (.Y(n393), 
	.B1(n410), 
	.B0(\memory[11][7] ), 
	.A1(n412), 
	.A0(\memory[10][7] ));
   AOI22X1M U439 (.Y(n392), 
	.B1(n414), 
	.B0(\memory[9][7] ), 
	.A1(n415), 
	.A0(\memory[8][7] ));
   AOI21X1M U440 (.Y(n406), 
	.B0(n391), 
	.A1(n392), 
	.A0(n393));
   AOI22X1M U441 (.Y(n396), 
	.B1(n410), 
	.B0(\memory[15][7] ), 
	.A1(n412), 
	.A0(\memory[14][7] ));
   AOI22X1M U442 (.Y(n395), 
	.B1(n414), 
	.B0(\memory[13][7] ), 
	.A1(n415), 
	.A0(\memory[12][7] ));
   AOI21X1M U443 (.Y(n405), 
	.B0(n394), 
	.A1(n395), 
	.A0(n396));
   AOI22X1M U444 (.Y(n399), 
	.B1(n410), 
	.B0(REG3[7]), 
	.A1(n412), 
	.A0(REG2[7]));
   AOI22X1M U445 (.Y(n398), 
	.B1(n414), 
	.B0(REG1[7]), 
	.A1(n415), 
	.A0(REG0[7]));
   AOI21X1M U446 (.Y(n404), 
	.B0(n397), 
	.A1(n398), 
	.A0(n399));
   AOI22X1M U447 (.Y(n402), 
	.B1(n410), 
	.B0(\memory[7][7] ), 
	.A1(n412), 
	.A0(\memory[6][7] ));
   AOI22X1M U448 (.Y(n401), 
	.B1(n414), 
	.B0(\memory[5][7] ), 
	.A1(n415), 
	.A0(\memory[4][7] ));
   AOI21X1M U449 (.Y(n403), 
	.B0(n400), 
	.A1(n401), 
	.A0(n402));
   OR4X1M U450 (.Y(N36), 
	.D(n403), 
	.C(n404), 
	.B(n405), 
	.A(n406));
   DLY1X4M U451 (.Y(n444), 
	.A(test_se));
   DLY1X4M U452 (.Y(n445), 
	.A(test_se));
   DLY1X4M U453 (.Y(n446), 
	.A(test_se));
   DLY1X4M U454 (.Y(n447), 
	.A(test_se));
endmodule

module FIFO_MEM_CNTRL_DATA_WIDTH8_mem_depth8_test_1 (
	WR_DATA_mem, 
	W_CLK, 
	W_RST, 
	wfull, 
	winc, 
	w_mem_addr, 
	r_mem_addr, 
	RD_DATA_mem, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_RST_S_1, 
	CLK_M_RF__L6_N12, 
	CLK_M_RF__L6_N13, 
	CLK_M_RF__L6_N6, 
	CLK_M_RF__L6_N8, 
	CLK_M_RF__L6_N9);
   input [7:0] WR_DATA_mem;
   input W_CLK;
   input W_RST;
   input wfull;
   input winc;
   input [3:0] w_mem_addr;
   input [3:0] r_mem_addr;
   output [7:0] RD_DATA_mem;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_RST_S_1;
   input CLK_M_RF__L6_N12;
   input CLK_M_RF__L6_N13;
   input CLK_M_RF__L6_N6;
   input CLK_M_RF__L6_N8;
   input CLK_M_RF__L6_N9;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \memory[7][7] ;
   wire \memory[7][6] ;
   wire \memory[7][5] ;
   wire \memory[7][4] ;
   wire \memory[7][3] ;
   wire \memory[7][2] ;
   wire \memory[7][1] ;
   wire \memory[7][0] ;
   wire \memory[6][7] ;
   wire \memory[6][6] ;
   wire \memory[6][5] ;
   wire \memory[6][4] ;
   wire \memory[6][3] ;
   wire \memory[6][2] ;
   wire \memory[6][1] ;
   wire \memory[6][0] ;
   wire \memory[5][7] ;
   wire \memory[5][6] ;
   wire \memory[5][5] ;
   wire \memory[5][4] ;
   wire \memory[5][3] ;
   wire \memory[5][2] ;
   wire \memory[5][1] ;
   wire \memory[5][0] ;
   wire \memory[4][7] ;
   wire \memory[4][6] ;
   wire \memory[4][5] ;
   wire \memory[4][4] ;
   wire \memory[4][3] ;
   wire \memory[4][2] ;
   wire \memory[4][1] ;
   wire \memory[4][0] ;
   wire \memory[3][7] ;
   wire \memory[3][6] ;
   wire \memory[3][5] ;
   wire \memory[3][4] ;
   wire \memory[3][3] ;
   wire \memory[3][2] ;
   wire \memory[3][1] ;
   wire \memory[3][0] ;
   wire \memory[2][7] ;
   wire \memory[2][6] ;
   wire \memory[2][5] ;
   wire \memory[2][4] ;
   wire \memory[2][3] ;
   wire \memory[2][2] ;
   wire \memory[2][1] ;
   wire \memory[2][0] ;
   wire \memory[1][7] ;
   wire \memory[1][6] ;
   wire \memory[1][5] ;
   wire \memory[1][4] ;
   wire \memory[1][3] ;
   wire \memory[1][2] ;
   wire \memory[1][1] ;
   wire \memory[1][0] ;
   wire \memory[0][7] ;
   wire \memory[0][6] ;
   wire \memory[0][5] ;
   wire \memory[0][4] ;
   wire \memory[0][3] ;
   wire \memory[0][2] ;
   wire \memory[0][1] ;
   wire \memory[0][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;

   assign N10 = r_mem_addr[0] ;
   assign N11 = r_mem_addr[1] ;
   assign N12 = r_mem_addr[2] ;
   assign test_so2 = \memory[7][7]  ;
   assign test_so1 = \memory[4][4]  ;

   SDFFRQX2M \memory_reg[1][7]  (.SI(\memory[1][6] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[1][7] ), 
	.D(n101), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][6]  (.SI(\memory[1][5] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[1][6] ), 
	.D(n100), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][5]  (.SI(\memory[1][4] ), 
	.SE(n208), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[1][5] ), 
	.D(n99), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][4]  (.SI(\memory[1][3] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[1][4] ), 
	.D(n98), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][3]  (.SI(\memory[1][2] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[1][3] ), 
	.D(n97), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][2]  (.SI(\memory[1][1] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[1][2] ), 
	.D(n96), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][1]  (.SI(\memory[1][0] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[1][1] ), 
	.D(n95), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[1][0]  (.SI(\memory[0][7] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[1][0] ), 
	.D(n94), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[0][7]  (.SI(\memory[0][6] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[0][7] ), 
	.D(n93), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[0][6]  (.SI(\memory[0][5] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[0][6] ), 
	.D(n92), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[0][5]  (.SI(\memory[0][4] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[0][5] ), 
	.D(n91), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[0][4]  (.SI(\memory[0][3] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[0][4] ), 
	.D(n90), 
	.CK(W_CLK));
   SDFFRQX2M \memory_reg[0][3]  (.SI(\memory[0][2] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[0][3] ), 
	.D(n89), 
	.CK(W_CLK));
   SDFFRQX2M \memory_reg[0][2]  (.SI(\memory[0][1] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[0][2] ), 
	.D(n88), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[0][1]  (.SI(\memory[0][0] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[0][1] ), 
	.D(n87), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[0][0]  (.SI(test_si1), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[0][0] ), 
	.D(n86), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[5][7]  (.SI(\memory[5][6] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][7] ), 
	.D(n133), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[5][6]  (.SI(\memory[5][5] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][6] ), 
	.D(n132), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[5][5]  (.SI(\memory[5][4] ), 
	.SE(n208), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][5] ), 
	.D(n131), 
	.CK(CLK_M_RF__L6_N6));
   SDFFRQX2M \memory_reg[5][4]  (.SI(\memory[5][3] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][4] ), 
	.D(n130), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[5][3]  (.SI(\memory[5][2] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][3] ), 
	.D(n129), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[5][2]  (.SI(\memory[5][1] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][2] ), 
	.D(n128), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[5][1]  (.SI(\memory[5][0] ), 
	.SE(n208), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][1] ), 
	.D(n127), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[5][0]  (.SI(\memory[4][7] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[5][0] ), 
	.D(n126), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[4][7]  (.SI(\memory[4][6] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[4][7] ), 
	.D(n125), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[4][6]  (.SI(\memory[4][5] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[4][6] ), 
	.D(n124), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[4][5]  (.SI(test_si2), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[4][5] ), 
	.D(n123), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX4M \memory_reg[4][4]  (.SI(\memory[4][3] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[4][4] ), 
	.D(n122), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[4][3]  (.SI(\memory[4][2] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[4][3] ), 
	.D(n121), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[4][2]  (.SI(\memory[4][1] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[4][2] ), 
	.D(n120), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[4][1]  (.SI(\memory[4][0] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[4][1] ), 
	.D(n119), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[4][0]  (.SI(\memory[3][7] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[4][0] ), 
	.D(n118), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][7]  (.SI(\memory[7][6] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][7] ), 
	.D(n149), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[7][6]  (.SI(\memory[7][5] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][6] ), 
	.D(n148), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][5]  (.SI(\memory[7][4] ), 
	.SE(n208), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][5] ), 
	.D(n147), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][4]  (.SI(\memory[7][3] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][4] ), 
	.D(n146), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][3]  (.SI(\memory[7][2] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][3] ), 
	.D(n145), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][2]  (.SI(\memory[7][1] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][2] ), 
	.D(n144), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][1]  (.SI(\memory[7][0] ), 
	.SE(n208), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][1] ), 
	.D(n143), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[7][0]  (.SI(\memory[6][7] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[7][0] ), 
	.D(n142), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[6][7]  (.SI(\memory[6][6] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[6][7] ), 
	.D(n141), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[6][6]  (.SI(\memory[6][5] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[6][6] ), 
	.D(n140), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[6][5]  (.SI(\memory[6][4] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[6][5] ), 
	.D(n139), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[6][4]  (.SI(\memory[6][3] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[6][4] ), 
	.D(n138), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[6][3]  (.SI(\memory[6][2] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[6][3] ), 
	.D(n137), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \memory_reg[6][2]  (.SI(\memory[6][1] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[6][2] ), 
	.D(n136), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[6][1]  (.SI(\memory[6][0] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[6][1] ), 
	.D(n135), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[6][0]  (.SI(\memory[5][7] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[6][0] ), 
	.D(n134), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[3][7]  (.SI(\memory[3][6] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[3][7] ), 
	.D(n117), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[3][6]  (.SI(\memory[3][5] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[3][6] ), 
	.D(n116), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[3][5]  (.SI(\memory[3][4] ), 
	.SE(n208), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[3][5] ), 
	.D(n115), 
	.CK(CLK_M_RF__L6_N9));
   SDFFRQX2M \memory_reg[3][4]  (.SI(\memory[3][3] ), 
	.SE(n207), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[3][4] ), 
	.D(n114), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[3][3]  (.SI(\memory[3][2] ), 
	.SE(n210), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[3][3] ), 
	.D(n113), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[3][2]  (.SI(\memory[3][1] ), 
	.SE(n209), 
	.RN(FE_OFN1_RST_S_1), 
	.Q(\memory[3][2] ), 
	.D(n112), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[3][1]  (.SI(\memory[3][0] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[3][1] ), 
	.D(n111), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[3][0]  (.SI(\memory[2][7] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[3][0] ), 
	.D(n110), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[2][7]  (.SI(\memory[2][6] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[2][7] ), 
	.D(n109), 
	.CK(CLK_M_RF__L6_N8));
   SDFFRQX2M \memory_reg[2][6]  (.SI(\memory[2][5] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[2][6] ), 
	.D(n108), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[2][5]  (.SI(\memory[2][4] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[2][5] ), 
	.D(n107), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[2][4]  (.SI(\memory[2][3] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[2][4] ), 
	.D(n106), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[2][3]  (.SI(\memory[2][2] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\memory[2][3] ), 
	.D(n105), 
	.CK(W_CLK));
   SDFFRQX2M \memory_reg[2][2]  (.SI(\memory[2][1] ), 
	.SE(n209), 
	.RN(W_RST), 
	.Q(\memory[2][2] ), 
	.D(n104), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[2][1]  (.SI(\memory[2][0] ), 
	.SE(n208), 
	.RN(W_RST), 
	.Q(\memory[2][1] ), 
	.D(n103), 
	.CK(CLK_M_RF__L6_N12));
   SDFFRQX2M \memory_reg[2][0]  (.SI(\memory[1][7] ), 
	.SE(n207), 
	.RN(W_RST), 
	.Q(\memory[2][0] ), 
	.D(n102), 
	.CK(CLK_M_RF__L6_N12));
   NOR2X2M U80 (.Y(n172), 
	.B(n177), 
	.A(n176));
   NAND3X2M U81 (.Y(n81), 
	.C(n82), 
	.B(n194), 
	.A(n193));
   NAND3X2M U82 (.Y(n75), 
	.C(n76), 
	.B(n194), 
	.A(n193));
   NOR2BX2M U83 (.Y(n80), 
	.B(wfull), 
	.AN(winc));
   NOR2X2M U84 (.Y(n170), 
	.B(N12), 
	.A(n177));
   NOR2X2M U85 (.Y(n173), 
	.B(N11), 
	.A(n176));
   NOR2X2M U86 (.Y(n169), 
	.B(N12), 
	.A(N11));
   INVX2M U87 (.Y(n177), 
	.A(N11));
   INVX2M U88 (.Y(n176), 
	.A(N12));
   NOR2BX2M U89 (.Y(n76), 
	.B(w_mem_addr[2]), 
	.AN(n80));
   OAI2BB2X1M U90 (.Y(n86), 
	.B1(n202), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][0] ));
   OAI2BB2X1M U91 (.Y(n87), 
	.B1(n201), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][1] ));
   OAI2BB2X1M U92 (.Y(n88), 
	.B1(n200), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][2] ));
   OAI2BB2X1M U93 (.Y(n89), 
	.B1(n199), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][3] ));
   OAI2BB2X1M U94 (.Y(n90), 
	.B1(n198), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][4] ));
   OAI2BB2X1M U95 (.Y(n91), 
	.B1(n197), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][5] ));
   OAI2BB2X1M U96 (.Y(n92), 
	.B1(n196), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][6] ));
   OAI2BB2X1M U97 (.Y(n93), 
	.B1(n195), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][7] ));
   OAI2BB2X1M U98 (.Y(n118), 
	.B1(n81), 
	.B0(n202), 
	.A1N(n81), 
	.A0N(\memory[4][0] ));
   OAI2BB2X1M U99 (.Y(n119), 
	.B1(n81), 
	.B0(n201), 
	.A1N(n81), 
	.A0N(\memory[4][1] ));
   OAI2BB2X1M U100 (.Y(n120), 
	.B1(n81), 
	.B0(n200), 
	.A1N(n81), 
	.A0N(\memory[4][2] ));
   OAI2BB2X1M U101 (.Y(n121), 
	.B1(n81), 
	.B0(n199), 
	.A1N(n81), 
	.A0N(\memory[4][3] ));
   OAI2BB2X1M U102 (.Y(n122), 
	.B1(n81), 
	.B0(n198), 
	.A1N(n81), 
	.A0N(\memory[4][4] ));
   OAI2BB2X1M U103 (.Y(n123), 
	.B1(n81), 
	.B0(n197), 
	.A1N(n81), 
	.A0N(\memory[4][5] ));
   OAI2BB2X1M U104 (.Y(n124), 
	.B1(n81), 
	.B0(n196), 
	.A1N(n81), 
	.A0N(\memory[4][6] ));
   OAI2BB2X1M U105 (.Y(n125), 
	.B1(n81), 
	.B0(n195), 
	.A1N(n81), 
	.A0N(\memory[4][7] ));
   OAI2BB2X1M U106 (.Y(n94), 
	.B1(n77), 
	.B0(n202), 
	.A1N(n77), 
	.A0N(\memory[1][0] ));
   OAI2BB2X1M U107 (.Y(n95), 
	.B1(n77), 
	.B0(n201), 
	.A1N(n77), 
	.A0N(\memory[1][1] ));
   OAI2BB2X1M U108 (.Y(n96), 
	.B1(n77), 
	.B0(n200), 
	.A1N(n77), 
	.A0N(\memory[1][2] ));
   OAI2BB2X1M U109 (.Y(n97), 
	.B1(n77), 
	.B0(n199), 
	.A1N(n77), 
	.A0N(\memory[1][3] ));
   OAI2BB2X1M U110 (.Y(n98), 
	.B1(n77), 
	.B0(n198), 
	.A1N(n77), 
	.A0N(\memory[1][4] ));
   OAI2BB2X1M U111 (.Y(n99), 
	.B1(n77), 
	.B0(n197), 
	.A1N(n77), 
	.A0N(\memory[1][5] ));
   OAI2BB2X1M U112 (.Y(n100), 
	.B1(n77), 
	.B0(n196), 
	.A1N(n77), 
	.A0N(\memory[1][6] ));
   OAI2BB2X1M U113 (.Y(n101), 
	.B1(n77), 
	.B0(n195), 
	.A1N(n77), 
	.A0N(\memory[1][7] ));
   OAI2BB2X1M U114 (.Y(n102), 
	.B1(n78), 
	.B0(n202), 
	.A1N(n78), 
	.A0N(\memory[2][0] ));
   OAI2BB2X1M U115 (.Y(n103), 
	.B1(n78), 
	.B0(n201), 
	.A1N(n78), 
	.A0N(\memory[2][1] ));
   OAI2BB2X1M U116 (.Y(n104), 
	.B1(n78), 
	.B0(n200), 
	.A1N(n78), 
	.A0N(\memory[2][2] ));
   OAI2BB2X1M U117 (.Y(n105), 
	.B1(n78), 
	.B0(n199), 
	.A1N(n78), 
	.A0N(\memory[2][3] ));
   OAI2BB2X1M U118 (.Y(n106), 
	.B1(n78), 
	.B0(n198), 
	.A1N(n78), 
	.A0N(\memory[2][4] ));
   OAI2BB2X1M U119 (.Y(n107), 
	.B1(n78), 
	.B0(n197), 
	.A1N(n78), 
	.A0N(\memory[2][5] ));
   OAI2BB2X1M U120 (.Y(n108), 
	.B1(n78), 
	.B0(n196), 
	.A1N(n78), 
	.A0N(\memory[2][6] ));
   OAI2BB2X1M U121 (.Y(n109), 
	.B1(n78), 
	.B0(n195), 
	.A1N(n78), 
	.A0N(\memory[2][7] ));
   OAI2BB2X1M U122 (.Y(n110), 
	.B1(n79), 
	.B0(n202), 
	.A1N(n79), 
	.A0N(\memory[3][0] ));
   OAI2BB2X1M U123 (.Y(n111), 
	.B1(n79), 
	.B0(n201), 
	.A1N(n79), 
	.A0N(\memory[3][1] ));
   OAI2BB2X1M U124 (.Y(n112), 
	.B1(n79), 
	.B0(n200), 
	.A1N(n79), 
	.A0N(\memory[3][2] ));
   OAI2BB2X1M U125 (.Y(n113), 
	.B1(n79), 
	.B0(n199), 
	.A1N(n79), 
	.A0N(\memory[3][3] ));
   OAI2BB2X1M U126 (.Y(n114), 
	.B1(n79), 
	.B0(n198), 
	.A1N(n79), 
	.A0N(\memory[3][4] ));
   OAI2BB2X1M U127 (.Y(n115), 
	.B1(n79), 
	.B0(n197), 
	.A1N(n79), 
	.A0N(\memory[3][5] ));
   OAI2BB2X1M U128 (.Y(n116), 
	.B1(n79), 
	.B0(n196), 
	.A1N(n79), 
	.A0N(\memory[3][6] ));
   OAI2BB2X1M U129 (.Y(n117), 
	.B1(n79), 
	.B0(n195), 
	.A1N(n79), 
	.A0N(\memory[3][7] ));
   OAI2BB2X1M U130 (.Y(n126), 
	.B1(n83), 
	.B0(n202), 
	.A1N(n83), 
	.A0N(\memory[5][0] ));
   OAI2BB2X1M U131 (.Y(n127), 
	.B1(n83), 
	.B0(n201), 
	.A1N(n83), 
	.A0N(\memory[5][1] ));
   OAI2BB2X1M U132 (.Y(n128), 
	.B1(n83), 
	.B0(n200), 
	.A1N(n83), 
	.A0N(\memory[5][2] ));
   OAI2BB2X1M U133 (.Y(n129), 
	.B1(n83), 
	.B0(n199), 
	.A1N(n83), 
	.A0N(\memory[5][3] ));
   OAI2BB2X1M U134 (.Y(n130), 
	.B1(n83), 
	.B0(n198), 
	.A1N(n83), 
	.A0N(\memory[5][4] ));
   OAI2BB2X1M U135 (.Y(n131), 
	.B1(n83), 
	.B0(n197), 
	.A1N(n83), 
	.A0N(\memory[5][5] ));
   OAI2BB2X1M U136 (.Y(n132), 
	.B1(n83), 
	.B0(n196), 
	.A1N(n83), 
	.A0N(\memory[5][6] ));
   OAI2BB2X1M U137 (.Y(n133), 
	.B1(n83), 
	.B0(n195), 
	.A1N(n83), 
	.A0N(\memory[5][7] ));
   OAI2BB2X1M U138 (.Y(n134), 
	.B1(n84), 
	.B0(n202), 
	.A1N(n84), 
	.A0N(\memory[6][0] ));
   OAI2BB2X1M U139 (.Y(n135), 
	.B1(n84), 
	.B0(n201), 
	.A1N(n84), 
	.A0N(\memory[6][1] ));
   OAI2BB2X1M U140 (.Y(n136), 
	.B1(n84), 
	.B0(n200), 
	.A1N(n84), 
	.A0N(\memory[6][2] ));
   OAI2BB2X1M U141 (.Y(n137), 
	.B1(n84), 
	.B0(n199), 
	.A1N(n84), 
	.A0N(\memory[6][3] ));
   OAI2BB2X1M U142 (.Y(n138), 
	.B1(n84), 
	.B0(n198), 
	.A1N(n84), 
	.A0N(\memory[6][4] ));
   OAI2BB2X1M U143 (.Y(n139), 
	.B1(n84), 
	.B0(n197), 
	.A1N(n84), 
	.A0N(\memory[6][5] ));
   OAI2BB2X1M U144 (.Y(n140), 
	.B1(n84), 
	.B0(n196), 
	.A1N(n84), 
	.A0N(\memory[6][6] ));
   OAI2BB2X1M U145 (.Y(n141), 
	.B1(n84), 
	.B0(n195), 
	.A1N(n84), 
	.A0N(\memory[6][7] ));
   OAI2BB2X1M U146 (.Y(n142), 
	.B1(n85), 
	.B0(n202), 
	.A1N(n85), 
	.A0N(\memory[7][0] ));
   OAI2BB2X1M U147 (.Y(n143), 
	.B1(n85), 
	.B0(n201), 
	.A1N(n85), 
	.A0N(\memory[7][1] ));
   OAI2BB2X1M U148 (.Y(n144), 
	.B1(n85), 
	.B0(n200), 
	.A1N(n85), 
	.A0N(\memory[7][2] ));
   OAI2BB2X1M U149 (.Y(n145), 
	.B1(n85), 
	.B0(n199), 
	.A1N(n85), 
	.A0N(\memory[7][3] ));
   OAI2BB2X1M U150 (.Y(n146), 
	.B1(n85), 
	.B0(n198), 
	.A1N(n85), 
	.A0N(\memory[7][4] ));
   OAI2BB2X1M U151 (.Y(n147), 
	.B1(n85), 
	.B0(n197), 
	.A1N(n85), 
	.A0N(\memory[7][5] ));
   OAI2BB2X1M U152 (.Y(n148), 
	.B1(n85), 
	.B0(n196), 
	.A1N(n85), 
	.A0N(\memory[7][6] ));
   OAI2BB2X1M U153 (.Y(n149), 
	.B1(n85), 
	.B0(n195), 
	.A1N(n85), 
	.A0N(\memory[7][7] ));
   AND2X2M U154 (.Y(n82), 
	.B(n80), 
	.A(w_mem_addr[2]));
   NAND3X2M U155 (.Y(n77), 
	.C(w_mem_addr[0]), 
	.B(n194), 
	.A(n76));
   NAND3X2M U156 (.Y(n78), 
	.C(w_mem_addr[1]), 
	.B(n193), 
	.A(n76));
   NAND3X2M U157 (.Y(n79), 
	.C(w_mem_addr[1]), 
	.B(n76), 
	.A(w_mem_addr[0]));
   NAND3X2M U158 (.Y(n85), 
	.C(n82), 
	.B(w_mem_addr[0]), 
	.A(w_mem_addr[1]));
   NAND3X2M U159 (.Y(n83), 
	.C(n82), 
	.B(n194), 
	.A(w_mem_addr[0]));
   NAND3X2M U160 (.Y(n84), 
	.C(n82), 
	.B(n193), 
	.A(w_mem_addr[1]));
   INVX2M U161 (.Y(n178), 
	.A(N10));
   INVX2M U162 (.Y(n193), 
	.A(w_mem_addr[0]));
   INVX2M U163 (.Y(n194), 
	.A(w_mem_addr[1]));
   INVX2M U164 (.Y(n202), 
	.A(WR_DATA_mem[0]));
   INVX2M U165 (.Y(n201), 
	.A(WR_DATA_mem[1]));
   INVX2M U166 (.Y(n200), 
	.A(WR_DATA_mem[2]));
   INVX2M U167 (.Y(n199), 
	.A(WR_DATA_mem[3]));
   INVX2M U168 (.Y(n198), 
	.A(WR_DATA_mem[4]));
   INVX2M U169 (.Y(n197), 
	.A(WR_DATA_mem[5]));
   INVX2M U170 (.Y(n196), 
	.A(WR_DATA_mem[6]));
   INVX2M U171 (.Y(n195), 
	.A(WR_DATA_mem[7]));
   AO22X1M U172 (.Y(n65), 
	.B1(n169), 
	.B0(\memory[1][0] ), 
	.A1(n170), 
	.A0(\memory[3][0] ));
   AOI221XLM U173 (.Y(n68), 
	.C0(n65), 
	.B1(n172), 
	.B0(\memory[7][0] ), 
	.A1(n173), 
	.A0(\memory[5][0] ));
   AO22X1M U174 (.Y(n66), 
	.B1(n169), 
	.B0(\memory[0][0] ), 
	.A1(n170), 
	.A0(\memory[2][0] ));
   AOI221XLM U175 (.Y(n67), 
	.C0(n66), 
	.B1(n172), 
	.B0(\memory[6][0] ), 
	.A1(n173), 
	.A0(\memory[4][0] ));
   OAI22X1M U176 (.Y(RD_DATA_mem[0]), 
	.B1(n67), 
	.B0(N10), 
	.A1(n68), 
	.A0(n178));
   AO22X1M U177 (.Y(n69), 
	.B1(n169), 
	.B0(\memory[1][1] ), 
	.A1(n170), 
	.A0(\memory[3][1] ));
   AOI221XLM U178 (.Y(n72), 
	.C0(n69), 
	.B1(n172), 
	.B0(\memory[7][1] ), 
	.A1(n173), 
	.A0(\memory[5][1] ));
   AO22X1M U179 (.Y(n70), 
	.B1(n169), 
	.B0(\memory[0][1] ), 
	.A1(n170), 
	.A0(\memory[2][1] ));
   AOI221XLM U180 (.Y(n71), 
	.C0(n70), 
	.B1(n172), 
	.B0(\memory[6][1] ), 
	.A1(n173), 
	.A0(\memory[4][1] ));
   OAI22X1M U181 (.Y(RD_DATA_mem[1]), 
	.B1(n71), 
	.B0(N10), 
	.A1(n72), 
	.A0(n178));
   AO22X1M U182 (.Y(n73), 
	.B1(n169), 
	.B0(\memory[1][2] ), 
	.A1(n170), 
	.A0(\memory[3][2] ));
   AOI221XLM U183 (.Y(n151), 
	.C0(n73), 
	.B1(n172), 
	.B0(\memory[7][2] ), 
	.A1(n173), 
	.A0(\memory[5][2] ));
   AO22X1M U184 (.Y(n74), 
	.B1(n169), 
	.B0(\memory[0][2] ), 
	.A1(n170), 
	.A0(\memory[2][2] ));
   AOI221XLM U185 (.Y(n150), 
	.C0(n74), 
	.B1(n172), 
	.B0(\memory[6][2] ), 
	.A1(n173), 
	.A0(\memory[4][2] ));
   OAI22X1M U186 (.Y(RD_DATA_mem[2]), 
	.B1(n150), 
	.B0(N10), 
	.A1(n151), 
	.A0(n178));
   AO22X1M U187 (.Y(n152), 
	.B1(n169), 
	.B0(\memory[1][3] ), 
	.A1(n170), 
	.A0(\memory[3][3] ));
   AOI221XLM U188 (.Y(n155), 
	.C0(n152), 
	.B1(n172), 
	.B0(\memory[7][3] ), 
	.A1(n173), 
	.A0(\memory[5][3] ));
   AO22X1M U189 (.Y(n153), 
	.B1(n169), 
	.B0(\memory[0][3] ), 
	.A1(n170), 
	.A0(\memory[2][3] ));
   AOI221XLM U190 (.Y(n154), 
	.C0(n153), 
	.B1(n172), 
	.B0(\memory[6][3] ), 
	.A1(n173), 
	.A0(\memory[4][3] ));
   OAI22X1M U191 (.Y(RD_DATA_mem[3]), 
	.B1(n154), 
	.B0(N10), 
	.A1(n155), 
	.A0(n178));
   AO22X1M U192 (.Y(n156), 
	.B1(n169), 
	.B0(\memory[1][4] ), 
	.A1(n170), 
	.A0(\memory[3][4] ));
   AOI221XLM U193 (.Y(n159), 
	.C0(n156), 
	.B1(n172), 
	.B0(\memory[7][4] ), 
	.A1(n173), 
	.A0(\memory[5][4] ));
   AO22X1M U194 (.Y(n157), 
	.B1(n169), 
	.B0(\memory[0][4] ), 
	.A1(n170), 
	.A0(\memory[2][4] ));
   AOI221XLM U195 (.Y(n158), 
	.C0(n157), 
	.B1(n172), 
	.B0(\memory[6][4] ), 
	.A1(n173), 
	.A0(\memory[4][4] ));
   OAI22X1M U196 (.Y(RD_DATA_mem[4]), 
	.B1(n158), 
	.B0(N10), 
	.A1(n159), 
	.A0(n178));
   AO22X1M U197 (.Y(n160), 
	.B1(n169), 
	.B0(\memory[1][5] ), 
	.A1(n170), 
	.A0(\memory[3][5] ));
   AOI221XLM U198 (.Y(n163), 
	.C0(n160), 
	.B1(n172), 
	.B0(\memory[7][5] ), 
	.A1(n173), 
	.A0(\memory[5][5] ));
   AO22X1M U199 (.Y(n161), 
	.B1(n169), 
	.B0(\memory[0][5] ), 
	.A1(n170), 
	.A0(\memory[2][5] ));
   AOI221XLM U200 (.Y(n162), 
	.C0(n161), 
	.B1(n172), 
	.B0(\memory[6][5] ), 
	.A1(n173), 
	.A0(\memory[4][5] ));
   OAI22X1M U201 (.Y(RD_DATA_mem[5]), 
	.B1(n162), 
	.B0(N10), 
	.A1(n163), 
	.A0(n178));
   AO22X1M U202 (.Y(n164), 
	.B1(n169), 
	.B0(\memory[1][6] ), 
	.A1(n170), 
	.A0(\memory[3][6] ));
   AOI221XLM U203 (.Y(n167), 
	.C0(n164), 
	.B1(n172), 
	.B0(\memory[7][6] ), 
	.A1(n173), 
	.A0(\memory[5][6] ));
   AO22X1M U204 (.Y(n165), 
	.B1(n169), 
	.B0(\memory[0][6] ), 
	.A1(n170), 
	.A0(\memory[2][6] ));
   AOI221XLM U205 (.Y(n166), 
	.C0(n165), 
	.B1(n172), 
	.B0(\memory[6][6] ), 
	.A1(n173), 
	.A0(\memory[4][6] ));
   OAI22X1M U206 (.Y(RD_DATA_mem[6]), 
	.B1(n166), 
	.B0(N10), 
	.A1(n167), 
	.A0(n178));
   AO22X1M U207 (.Y(n168), 
	.B1(n169), 
	.B0(\memory[1][7] ), 
	.A1(n170), 
	.A0(\memory[3][7] ));
   AOI221XLM U208 (.Y(n175), 
	.C0(n168), 
	.B1(n172), 
	.B0(\memory[7][7] ), 
	.A1(n173), 
	.A0(\memory[5][7] ));
   AO22X1M U209 (.Y(n171), 
	.B1(n169), 
	.B0(\memory[0][7] ), 
	.A1(n170), 
	.A0(\memory[2][7] ));
   AOI221XLM U210 (.Y(n174), 
	.C0(n171), 
	.B1(n172), 
	.B0(\memory[6][7] ), 
	.A1(n173), 
	.A0(\memory[4][7] ));
   OAI22X1M U211 (.Y(RD_DATA_mem[7]), 
	.B1(n174), 
	.B0(N10), 
	.A1(n178), 
	.A0(n175));
   INVXLM U212 (.Y(n206), 
	.A(test_se));
   INVX2M U213 (.Y(n207), 
	.A(n206));
   INVX2M U214 (.Y(n208), 
	.A(n206));
   INVX2M U215 (.Y(n209), 
	.A(n206));
   INVX2M U216 (.Y(n210), 
	.A(n206));
endmodule

module DF_SYNC_BUS_WIDTH4_test_0 (
	CLK, 
	RST, 
	Async, 
	sync, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] Async;
   output [3:0] sync;
   input test_si;
   input test_se;

   // Internal wires
   wire [3:0] meta_flop;

   SDFFRQX2M \sync_reg[1]  (.SI(sync[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[1]), 
	.D(meta_flop[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg[0]  (.SI(meta_flop[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[0]), 
	.D(meta_flop[0]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg[3]  (.SI(sync[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[3]), 
	.D(meta_flop[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg[2]  (.SI(sync[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[2]), 
	.D(meta_flop[2]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[3]  (.SI(meta_flop[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[3]), 
	.D(Async[3]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[2]  (.SI(meta_flop[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[2]), 
	.D(Async[2]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[1]  (.SI(meta_flop[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[1]), 
	.D(Async[1]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[0]), 
	.D(Async[0]), 
	.CK(CLK));
endmodule

module DF_SYNC_BUS_WIDTH4_test_1 (
	CLK, 
	RST, 
	Async, 
	sync, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] Async;
   output [3:0] sync;
   input test_si;
   input test_se;

   // Internal wires
   wire [3:0] meta_flop;

   SDFFRQX2M \sync_reg[3]  (.SI(sync[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[3]), 
	.D(meta_flop[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg[2]  (.SI(sync[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[2]), 
	.D(meta_flop[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg[1]  (.SI(sync[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[1]), 
	.D(meta_flop[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg[0]  (.SI(meta_flop[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync[0]), 
	.D(meta_flop[0]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[3]  (.SI(meta_flop[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[3]), 
	.D(Async[3]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[2]  (.SI(meta_flop[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[2]), 
	.D(Async[2]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[1]  (.SI(meta_flop[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[1]), 
	.D(Async[1]), 
	.CK(CLK));
   SDFFRQX2M \meta_flop_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(meta_flop[0]), 
	.D(Async[0]), 
	.CK(CLK));
endmodule

module FIFO_WR_address4_test_1 (
	W_INC, 
	W_CLK, 
	W_RST, 
	sync_rd, 
	w_full, 
	w_ptr, 
	w_addr, 
	test_si, 
	test_se);
   input W_INC;
   input W_CLK;
   input W_RST;
   input [3:0] sync_rd;
   output w_full;
   output [3:0] w_ptr;
   output [3:0] w_addr;
   input test_si;
   input test_se;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire [2:0] w_ptr_comb;

   SDFFRQX2M \w_addr_reg[3]  (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[3]), 
	.D(n19), 
	.CK(W_CLK));
   SDFFRQX2M \w_addr_reg[2]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[2]), 
	.D(n20), 
	.CK(W_CLK));
   SDFFRQX2M \w_ptr_reg[3]  (.SI(w_ptr[2]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_ptr[3]), 
	.D(w_addr[3]), 
	.CK(W_CLK));
   SDFFRQX2M \w_ptr_reg[2]  (.SI(w_ptr[1]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_ptr[2]), 
	.D(w_ptr_comb[2]), 
	.CK(W_CLK));
   SDFFRQX2M \w_ptr_reg[1]  (.SI(w_ptr[0]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_ptr[1]), 
	.D(w_ptr_comb[1]), 
	.CK(W_CLK));
   SDFFRQX2M \w_ptr_reg[0]  (.SI(w_addr[3]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_ptr[0]), 
	.D(w_ptr_comb[0]), 
	.CK(W_CLK));
   SDFFRX1M \w_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(W_RST), 
	.QN(n9), 
	.Q(w_addr[0]), 
	.D(n22), 
	.CK(W_CLK));
   SDFFRQX2M \w_addr_reg[1]  (.SI(w_addr[0]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(w_addr[1]), 
	.D(n21), 
	.CK(W_CLK));
   NAND2X2M U11 (.Y(n14), 
	.B(n10), 
	.A(W_INC));
   INVX2M U12 (.Y(w_full), 
	.A(n10));
   XNOR2X2M U13 (.Y(n15), 
	.B(sync_rd[1]), 
	.A(w_ptr_comb[1]));
   XNOR2X2M U14 (.Y(w_ptr_comb[0]), 
	.B(w_addr[1]), 
	.A(n9));
   NOR2X2M U15 (.Y(n13), 
	.B(n9), 
	.A(n14));
   XNOR2X2M U16 (.Y(n20), 
	.B(n12), 
	.A(w_addr[2]));
   XNOR2X2M U17 (.Y(n19), 
	.B(n11), 
	.A(w_addr[3]));
   NAND2BX2M U18 (.Y(n11), 
	.B(w_addr[2]), 
	.AN(n12));
   NAND4X2M U19 (.Y(n10), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   CLKXOR2X2M U20 (.Y(n18), 
	.B(sync_rd[3]), 
	.A(w_addr[3]));
   XNOR2X2M U21 (.Y(n16), 
	.B(sync_rd[0]), 
	.A(w_ptr_comb[0]));
   CLKXOR2X2M U22 (.Y(n17), 
	.B(w_ptr_comb[2]), 
	.A(sync_rd[2]));
   NAND2X2M U23 (.Y(n12), 
	.B(w_addr[1]), 
	.A(n13));
   CLKXOR2X2M U24 (.Y(w_ptr_comb[2]), 
	.B(w_addr[2]), 
	.A(w_addr[3]));
   CLKXOR2X2M U25 (.Y(w_ptr_comb[1]), 
	.B(w_addr[2]), 
	.A(w_addr[1]));
   CLKXOR2X2M U26 (.Y(n21), 
	.B(n13), 
	.A(w_addr[1]));
   CLKXOR2X2M U27 (.Y(n22), 
	.B(n14), 
	.A(n9));
endmodule

module FIFO_RD_address4_test_1 (
	R_INC, 
	R_CLK, 
	R_RST, 
	sync_wr, 
	r_empty, 
	r_ptr, 
	r_addr, 
	test_si, 
	test_se, 
	FE_OFN4_RST_S_2, 
	CLK_M_TX__L4_N1);
   input R_INC;
   input R_CLK;
   input R_RST;
   input [3:0] sync_wr;
   output r_empty;
   output [3:0] r_ptr;
   output [3:0] r_addr;
   input test_si;
   input test_se;
   input FE_OFN4_RST_S_2;
   input CLK_M_TX__L4_N1;

   // Internal wires
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire [2:0] r_ptr_comb;

   SDFFRQX2M \r_addr_reg[3]  (.SI(r_addr[2]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(r_addr[3]), 
	.D(n19), 
	.CK(R_CLK));
   SDFFRX1M \r_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.QN(n9), 
	.Q(r_addr[0]), 
	.D(n22), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \r_addr_reg[2]  (.SI(r_addr[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(r_addr[2]), 
	.D(n20), 
	.CK(R_CLK));
   SDFFRQX2M \r_addr_reg[1]  (.SI(r_addr[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(r_addr[1]), 
	.D(n21), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[3]  (.SI(r_ptr[2]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(r_ptr[3]), 
	.D(r_addr[3]), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[2]  (.SI(r_ptr[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(r_ptr[2]), 
	.D(r_ptr_comb[2]), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[1]  (.SI(r_ptr[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(r_ptr[1]), 
	.D(r_ptr_comb[1]), 
	.CK(R_CLK));
   SDFFRQX2M \r_ptr_reg[0]  (.SI(r_addr[3]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(r_ptr[0]), 
	.D(r_ptr_comb[0]), 
	.CK(R_CLK));
   XNOR2X2M U12 (.Y(n18), 
	.B(sync_wr[2]), 
	.A(r_ptr_comb[2]));
   XNOR2X2M U13 (.Y(r_ptr_comb[0]), 
	.B(r_addr[1]), 
	.A(n9));
   NOR2X2M U14 (.Y(n13), 
	.B(n9), 
	.A(n14));
   XNOR2X2M U15 (.Y(n20), 
	.B(n12), 
	.A(r_addr[2]));
   XNOR2X2M U16 (.Y(n19), 
	.B(n11), 
	.A(r_addr[3]));
   NAND2BX2M U17 (.Y(n11), 
	.B(r_addr[2]), 
	.AN(n12));
   NAND4X2M U18 (.Y(r_empty), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   XNOR2X2M U19 (.Y(n17), 
	.B(sync_wr[3]), 
	.A(r_addr[3]));
   XNOR2X2M U20 (.Y(n16), 
	.B(sync_wr[0]), 
	.A(r_ptr_comb[0]));
   XNOR2X2M U21 (.Y(n15), 
	.B(sync_wr[1]), 
	.A(r_ptr_comb[1]));
   NAND2X2M U22 (.Y(n12), 
	.B(r_addr[1]), 
	.A(n13));
   NAND2X2M U23 (.Y(n14), 
	.B(r_empty), 
	.A(R_INC));
   CLKXOR2X2M U24 (.Y(r_ptr_comb[1]), 
	.B(r_addr[2]), 
	.A(r_addr[1]));
   CLKXOR2X2M U25 (.Y(r_ptr_comb[2]), 
	.B(r_addr[2]), 
	.A(r_addr[3]));
   CLKXOR2X2M U26 (.Y(n21), 
	.B(n13), 
	.A(r_addr[1]));
   CLKXOR2X2M U27 (.Y(n22), 
	.B(n14), 
	.A(n9));
endmodule

module ASYNC_FIFO_DATA_WIDTH8_test_1 (
	W_CLK, 
	W_RST, 
	W_INC, 
	R_CLK, 
	R_RST, 
	R_INC, 
	WR_DATA, 
	RD_DATA, 
	FULL, 
	EMPTY, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_RST_S_1, 
	FE_OFN4_RST_S_2, 
	CLK_M_TX__L4_N1, 
	CLK_M_RF__L6_N12, 
	CLK_M_RF__L6_N13, 
	CLK_M_RF__L6_N6, 
	CLK_M_RF__L6_N8, 
	CLK_M_RF__L6_N9);
   input W_CLK;
   input W_RST;
   input W_INC;
   input R_CLK;
   input R_RST;
   input R_INC;
   input [7:0] WR_DATA;
   output [7:0] RD_DATA;
   output FULL;
   output EMPTY;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_RST_S_1;
   input FE_OFN4_RST_S_2;
   input CLK_M_TX__L4_N1;
   input CLK_M_RF__L6_N12;
   input CLK_M_RF__L6_N13;
   input CLK_M_RF__L6_N6;
   input CLK_M_RF__L6_N8;
   input CLK_M_RF__L6_N9;

   // Internal wires
   wire [3:0] Wr_addr;
   wire [3:0] Rd_addr;
   wire [3:0] rptr;
   wire [3:0] wq2_rptr;
   wire [3:0] wptr;
   wire [3:0] rq2_wptr;

   FIFO_MEM_CNTRL_DATA_WIDTH8_mem_depth8_test_1 U0_memory (.WR_DATA_mem({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.W_CLK(W_CLK), 
	.W_RST(W_RST), 
	.wfull(FULL), 
	.winc(W_INC), 
	.w_mem_addr({ Wr_addr[3],
		Wr_addr[2],
		Wr_addr[1],
		Wr_addr[0] }), 
	.r_mem_addr({ Rd_addr[3],
		Rd_addr[2],
		Rd_addr[1],
		Rd_addr[0] }), 
	.RD_DATA_mem({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si2(test_si2), 
	.test_si1(rq2_wptr[3]), 
	.test_so2(test_so2), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN1_RST_S_1(FE_OFN1_RST_S_1), 
	.CLK_M_RF__L6_N12(CLK_M_RF__L6_N12), 
	.CLK_M_RF__L6_N13(CLK_M_RF__L6_N13), 
	.CLK_M_RF__L6_N6(CLK_M_RF__L6_N6), 
	.CLK_M_RF__L6_N8(CLK_M_RF__L6_N8), 
	.CLK_M_RF__L6_N9(CLK_M_RF__L6_N9));
   DF_SYNC_BUS_WIDTH4_test_0 U0_SYNC_r2w (.CLK(W_CLK), 
	.RST(W_RST), 
	.Async({ rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.sync({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(wptr[3]), 
	.test_se(test_se));
   DF_SYNC_BUS_WIDTH4_test_1 U0_SYNC_w2r (.CLK(R_CLK), 
	.RST(R_RST), 
	.Async({ wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.sync({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(wq2_rptr[3]), 
	.test_se(test_se));
   FIFO_WR_address4_test_1 U0_FIFO_WR (.W_INC(W_INC), 
	.W_CLK(W_CLK), 
	.W_RST(W_RST), 
	.sync_rd({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.w_full(FULL), 
	.w_ptr({ wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.w_addr({ Wr_addr[3],
		Wr_addr[2],
		Wr_addr[1],
		Wr_addr[0] }), 
	.test_si(rptr[3]), 
	.test_se(test_se));
   FIFO_RD_address4_test_1 U0_FIFO_RD (.R_INC(R_INC), 
	.R_CLK(R_CLK), 
	.R_RST(R_RST), 
	.sync_wr({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.r_empty(EMPTY), 
	.r_ptr({ rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.r_addr({ Rd_addr[3],
		Rd_addr[2],
		Rd_addr[1],
		Rd_addr[0] }), 
	.test_si(test_si1), 
	.test_se(test_se), 
	.FE_OFN4_RST_S_2(FE_OFN4_RST_S_2), 
	.CLK_M_TX__L4_N1(CLK_M_TX__L4_N1));
endmodule

module DATA_SYN_BUS_WIDTH8_test_1 (
	bus_enable, 
	CLK, 
	RST, 
	unsync_bus, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se, 
	CLK_M_RF__L6_N13);
   input bus_enable;
   input CLK;
   input RST;
   input [7:0] unsync_bus;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;
   input CLK_M_RF__L6_N13;

   // Internal wires
   wire enable_flop;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n22;
   wire [1:0] sync_reg;

   assign test_so = sync_reg[1] ;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_flop), 
	.D(sync_reg[1]), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(sync_reg[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[1]), 
	.D(sync_reg[0]), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n13), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n15), 
	.CK(CLK_M_RF__L6_N13));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n9), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n7), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(enable_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n3), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n5), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[0]), 
	.D(bus_enable), 
	.CK(CLK));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(sync_reg[1]), 
	.AN(enable_flop));
   AO22X1M U5 (.Y(n3), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n5), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n7), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n9), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n11), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n13), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n15), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n17), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

module ALU_op_width8_out_width16_func_width4_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n147, 
	n157, 
	n156, 
	n155, 
	n154, 
	n139, 
	n153, 
	n151);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n147;
   input n157;
   input n156;
   input n155;
   input n154;
   input n139;
   input n153;
   input n151;

   // Internal wires
   wire FE_RN_67_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_63_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_60_0;
   wire FE_RN_59_0;
   wire FE_RN_58_0;
   wire FE_RN_57_0;
   wire FE_RN_56_0;
   wire FE_RN_55_0;
   wire FE_RN_54_0;
   wire FE_RN_53_0;
   wire FE_RN_51_0;
   wire FE_RN_50_0;
   wire FE_RN_49_0;
   wire FE_RN_48_0;
   wire FE_RN_47_0;
   wire FE_RN_46_0;
   wire FE_RN_44_0;
   wire FE_RN_43_0;
   wire FE_RN_41_0;
   wire FE_RN_40_0;
   wire FE_RN_38_0;
   wire FE_RN_36_0;
   wire FE_RN_34_0;
   wire FE_RN_33_0;
   wire FE_RN_32_0;
   wire FE_RN_30_0;
   wire FE_RN_29_0;
   wire FE_RN_28_0;
   wire FE_RN_27_0;
   wire FE_RN_26_0;
   wire FE_RN_25_0;
   wire FE_RN_24_0;
   wire FE_RN_20_0;
   wire FE_RN_19_0;
   wire FE_RN_18_0;
   wire FE_RN_16_0;
   wire FE_RN_15_0;
   wire FE_RN_14_0;
   wire FE_RN_13_0;
   wire FE_RN_11_0;
   wire FE_RN_10_0;
   wire FE_RN_9_0;
   wire FE_RN_8_0;
   wire FE_RN_7_0;
   wire FE_RN_4_0;
   wire FE_RN_3_0;
   wire FE_RN_2_0;
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n8;
   wire n9;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   NAND2X2M FE_RC_92_0 (.Y(quotient[6]), 
	.B(FE_RN_24_0), 
	.A(FE_RN_27_0));
   INVX2M FE_RC_91_0 (.Y(FE_RN_67_0), 
	.A(FE_RN_55_0));
   NAND2BX2M FE_RC_90_0 (.Y(\u_div/PartRem[6][2] ), 
	.B(FE_RN_67_0), 
	.AN(FE_RN_58_0));
   INVX2M FE_RC_88_0 (.Y(FE_RN_65_0), 
	.A(n16));
   AOI22X1M FE_RC_87_0 (.Y(FE_RN_64_0), 
	.B1(\u_div/PartRem[7][1] ), 
	.B0(FE_RN_65_0), 
	.A1(n16), 
	.A0(FE_RN_57_0));
   XNOR2X2M FE_RC_86_0 (.Y(FE_RN_63_0), 
	.B(n16), 
	.A(\u_div/SumTmp[6][1] ));
   MXI2X1M FE_RC_85_0 (.Y(FE_RN_62_0), 
	.S0(FE_RN_56_0), 
	.B(FE_RN_63_0), 
	.A(FE_RN_64_0));
   CLKXOR2X2M FE_RC_84_0 (.Y(\u_div/SumTmp[5][2] ), 
	.B(\u_div/CryTmp[5][2] ), 
	.A(FE_RN_62_0));
   INVX2M FE_RC_83_0 (.Y(FE_RN_61_0), 
	.A(FE_RN_55_0));
   OAI2B1X2M FE_RC_82_0 (.Y(FE_RN_60_0), 
	.B0(n16), 
	.A1N(FE_RN_61_0), 
	.A0(FE_RN_58_0));
   INVX2M FE_RC_81_0 (.Y(FE_RN_59_0), 
	.A(\u_div/SumTmp[6][1] ));
   NOR2BX4M FE_RC_80_0 (.Y(FE_RN_58_0), 
	.B(FE_RN_59_0), 
	.AN(FE_RN_56_0));
   INVX2M FE_RC_79_0 (.Y(FE_RN_57_0), 
	.A(\u_div/PartRem[7][1] ));
   NAND2X4M FE_RC_78_0 (.Y(FE_RN_56_0), 
	.B(FE_RN_27_0), 
	.A(FE_RN_24_0));
   NOR2X6M FE_RC_77_0 (.Y(FE_RN_55_0), 
	.B(FE_RN_57_0), 
	.A(FE_RN_56_0));
   OAI31X4M FE_RC_76_0 (.Y(FE_RN_54_0), 
	.B0(\u_div/CryTmp[5][2] ), 
	.A2(FE_RN_55_0), 
	.A1(n16), 
	.A0(FE_RN_58_0));
   CLKNAND2X2M FE_RC_75_0 (.Y(\u_div/CryTmp[5][3] ), 
	.B(FE_RN_60_0), 
	.A(FE_RN_54_0));
   MXI2X1M FE_RC_74_0 (.Y(\u_div/PartRem[6][1] ), 
	.S0(FE_RN_26_0), 
	.B(FE_RN_30_0), 
	.A(n151));
   INVX2M FE_RC_73_0 (.Y(FE_RN_53_0), 
	.A(\u_div/CryTmp[5][1] ));
   CLKNAND2X2M FE_RC_71_0 (.Y(FE_RN_51_0), 
	.B(n17), 
	.A(n151));
   OAI21X2M FE_RC_70_0 (.Y(FE_RN_50_0), 
	.B0(FE_RN_51_0), 
	.A1(n17), 
	.A0(n151));
   NOR2X2M FE_RC_69_0 (.Y(FE_RN_49_0), 
	.B(FE_RN_53_0), 
	.A(FE_RN_50_0));
   AOI21X2M FE_RC_68_0 (.Y(FE_RN_48_0), 
	.B0(FE_RN_49_0), 
	.A1(FE_RN_53_0), 
	.A0(FE_RN_50_0));
   INVX2M FE_RC_67_0 (.Y(FE_RN_47_0), 
	.A(FE_RN_36_0));
   INVX2M FE_RC_66_0 (.Y(FE_RN_46_0), 
	.A(FE_RN_30_0));
   INVX2M FE_RC_64_0 (.Y(FE_RN_44_0), 
	.A(n17));
   XNOR2X2M FE_RC_63_0 (.Y(FE_RN_43_0), 
	.B(n17), 
	.A(FE_RN_30_0));
   OAI32X1M FE_RC_61_0 (.Y(FE_RN_41_0), 
	.B1(FE_RN_53_0), 
	.B0(FE_RN_43_0), 
	.A2(FE_RN_44_0), 
	.A1(\u_div/CryTmp[5][1] ), 
	.A0(FE_RN_46_0));
   AOI21X2M FE_RC_60_0 (.Y(FE_RN_40_0), 
	.B0(FE_RN_41_0), 
	.A1(FE_RN_46_0), 
	.A0(FE_RN_47_0));
   MXI2X1M FE_RC_59_0 (.Y(\u_div/SumTmp[5][1] ), 
	.S0(FE_RN_26_0), 
	.B(FE_RN_40_0), 
	.A(FE_RN_48_0));
   NOR2X2M FE_RC_57_0 (.Y(FE_RN_38_0), 
	.B(n151), 
	.A(FE_RN_47_0));
   NAND2BX2M FE_RC_55_0 (.Y(FE_RN_36_0), 
	.B(FE_RN_44_0), 
	.AN(\u_div/CryTmp[5][1] ));
   NOR2X2M FE_RC_53_0 (.Y(FE_RN_34_0), 
	.B(FE_RN_30_0), 
	.A(FE_RN_47_0));
   CLKNAND2X2M FE_RC_52_0 (.Y(FE_RN_33_0), 
	.B(FE_RN_26_0), 
	.A(FE_RN_34_0));
   CLKNAND2X2M FE_RC_51_0 (.Y(FE_RN_32_0), 
	.B(\u_div/CryTmp[5][1] ), 
	.A(n17));
   OAI2B11X2M FE_RC_50_0 (.Y(\u_div/CryTmp[5][2] ), 
	.C0(FE_RN_32_0), 
	.B0(FE_RN_33_0), 
	.A1N(FE_RN_38_0), 
	.A0(FE_RN_26_0));
   AND2X4M FE_RC_49_0 (.Y(n19), 
	.B(n15), 
	.A(n20));
   INVX2M FE_RC_46_0 (.Y(FE_RN_30_0), 
	.A(\u_div/SumTmp[6][0] ));
   AND2X2M FE_RC_45_0 (.Y(FE_RN_29_0), 
	.B(n16), 
	.A(n15));
   NAND3X2M FE_RC_44_0 (.Y(FE_RN_28_0), 
	.C(FE_RN_29_0), 
	.B(n20), 
	.A(FE_RN_16_0));
   NAND2BX4M FE_RC_43_0 (.Y(FE_RN_27_0), 
	.B(FE_RN_13_0), 
	.AN(FE_RN_28_0));
   NAND2X4M FE_RC_42_0 (.Y(FE_RN_26_0), 
	.B(FE_RN_24_0), 
	.A(FE_RN_27_0));
   INVX2M FE_RC_40_0 (.Y(FE_RN_25_0), 
	.A(FE_RN_18_0));
   NAND3X2M FE_RC_39_0 (.Y(FE_RN_24_0), 
	.C(FE_RN_25_0), 
	.B(n16), 
	.A(n19));
   NAND3X4M FE_RC_35_0 (.Y(FE_RN_7_0), 
	.C(FE_RN_8_0), 
	.B(\u_div/CryTmp[7][1] ), 
	.A(FE_RN_9_0));
   NAND3X2M FE_RC_34_0 (.Y(\u_div/PartRem[7][1] ), 
	.C(FE_RN_14_0), 
	.B(FE_RN_10_0), 
	.A(FE_RN_11_0));
   INVX2M FE_RC_32_0 (.Y(FE_RN_20_0), 
	.A(\u_div/CryTmp[6][1] ));
   OAI21X2M FE_RC_31_0 (.Y(FE_RN_19_0), 
	.B0(FE_RN_16_0), 
	.A1(FE_RN_20_0), 
	.A0(FE_RN_44_0));
   XNOR2X2M FE_RC_30_0 (.Y(\u_div/SumTmp[6][1] ), 
	.B(FE_RN_19_0), 
	.A(FE_RN_13_0));
   NAND2X2M FE_RC_29_0 (.Y(FE_RN_18_0), 
	.B(\u_div/CryTmp[6][1] ), 
	.A(n17));
   NAND2BX2M FE_RC_27_0 (.Y(FE_RN_16_0), 
	.B(FE_RN_44_0), 
	.AN(\u_div/CryTmp[6][1] ));
   AND4X4M FE_RC_26_0 (.Y(FE_RN_15_0), 
	.D(\u_div/SumTmp[7][0] ), 
	.C(\u_div/CryTmp[7][1] ), 
	.B(FE_RN_9_0), 
	.A(FE_RN_8_0));
   NAND2X4M FE_RC_25_0 (.Y(FE_RN_14_0), 
	.B(n20), 
	.A(FE_RN_15_0));
   NAND3X4M FE_RC_24_0 (.Y(FE_RN_13_0), 
	.C(FE_RN_10_0), 
	.B(FE_RN_11_0), 
	.A(FE_RN_14_0));
   NOR2BX2M FE_RC_21_0 (.Y(quotient[7]), 
	.B(FE_RN_7_0), 
	.AN(n20));
   CLKNAND2X4M FE_RC_20_0 (.Y(FE_RN_11_0), 
	.B(a[7]), 
	.A(FE_RN_7_0));
   NAND2BX8M FE_RC_19_0 (.Y(FE_RN_10_0), 
	.B(a[7]), 
	.AN(n20));
   INVX2M FE_RC_18_0 (.Y(FE_RN_9_0), 
	.A(FE_RN_3_0));
   NOR2X4M FE_RC_17_0 (.Y(FE_RN_8_0), 
	.B(FE_RN_4_0), 
	.A(FE_RN_2_0));
   INVX2M FE_RC_11_0 (.Y(FE_RN_4_0), 
	.A(n16));
   INVX2M FE_RC_10_0 (.Y(FE_RN_3_0), 
	.A(n17));
   INVX2M FE_RC_9_0 (.Y(FE_RN_2_0), 
	.A(n15));
   AND3X6M FE_RC_6_0 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   INVX6M FE_RC_1_0 (.Y(n14), 
	.A(b[4]));
   ADDFHX1M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n139), 
	.A(\u_div/PartRem[1][6] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n147), 
	.A(\u_div/PartRem[1][7] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n139), 
	.A(\u_div/PartRem[2][6] ));
   INVX12M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   CLKNAND2X2M U10 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   CLKINVX2M U11 (.Y(n3), 
	.A(a[5]));
   CLKINVX2M U12 (.Y(n2), 
	.A(n18));
   NAND2X2M U13 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n153), 
	.A(n4));
   INVX2M U15 (.Y(n4), 
	.A(n18));
   NAND2X2M U16 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n154), 
	.A(n4));
   NAND2X2M U19 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n2));
   INVX2M U20 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U21 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n4));
   INVX2M U22 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n157), 
	.A(n4));
   NAND2X2M U25 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   CLKINVX2M U26 (.Y(n1), 
	.A(a[6]));
   INVX12M U28 (.Y(n17), 
	.A(b[1]));
   INVX8M U29 (.Y(n16), 
	.A(b[2]));
   INVX6M U30 (.Y(n15), 
	.A(b[3]));
   INVX4M U32 (.Y(n13), 
	.A(b[5]));
   MX2X1M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   MX2X1M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   MX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   MX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   MX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   MX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND2X2M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X4M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X4M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   CLKAND2X12M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X2M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   CLKAND2X12M U71 (.Y(quotient[1]), 
	.B(n147), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_op_width8_out_width16_func_width4_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n134, 
	n136, 
	n138, 
	n147, 
	n149, 
	n148, 
	n157, 
	n139);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n134;
   input n136;
   input n138;
   input n147;
   input n149;
   input n148;
   input n157;
   input n139;

   // Internal wires
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n147), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n149), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n139), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n134));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n157), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_op_width8_out_width16_func_width4_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_op_width8_out_width16_func_width4_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U5 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U6 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_op_width8_out_width16_func_width4_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n134, 
	n136, 
	n138, 
	n148, 
	n157, 
	n156, 
	n155, 
	n154, 
	n153, 
	n152, 
	n151, 
	n150, 
	n139, 
	n147, 
	n149);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n134;
   input n136;
   input n138;
   input n148;
   input n157;
   input n156;
   input n155;
   input n154;
   input n153;
   input n152;
   input n151;
   input n150;
   input n139;
   input n147;
   input n149;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n26;
   wire n28;
   wire n29;
   wire n30;
   wire n37;
   wire n38;

   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n7), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n6), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n5), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n4), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U13 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U14 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U15 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U16 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U17 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U18 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U19 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U21 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   XNOR2X2M U23 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U24 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U25 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U26 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U27 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U28 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U29 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U30 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U36 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U39 (.Y(n38), 
	.A(A[1]));
   INVX2M U42 (.Y(n37), 
	.A(A[2]));
   INVX2M U47 (.Y(n29), 
	.A(B[2]));
   INVX2M U48 (.Y(n28), 
	.A(B[3]));
   INVX2M U51 (.Y(n26), 
	.A(B[5]));
   INVX2M U52 (.Y(n30), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n147), 
	.A(n150));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n139), 
	.A(n150));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(n150));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n149), 
	.A(n150));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n28), 
	.A(n150));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n29), 
	.A(n150));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n150));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n134), 
	.A(n150));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n151), 
	.A(n147));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n151), 
	.A(n139));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n151), 
	.A(n26));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n151), 
	.A(n149));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n151), 
	.A(n28));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n151), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n151), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n151), 
	.A(n134));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n152), 
	.A(n147));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n152), 
	.A(n139));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n152), 
	.A(n26));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n152), 
	.A(n149));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n152), 
	.A(n28));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n152), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n152), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n152), 
	.A(n134));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n153), 
	.A(n147));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n153), 
	.A(n139));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n153), 
	.A(n26));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n153), 
	.A(n149));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n153), 
	.A(n28));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n153), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n153), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n153), 
	.A(n134));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n154), 
	.A(n147));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n154), 
	.A(n139));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n154), 
	.A(n26));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n154), 
	.A(n149));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n154), 
	.A(n28));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n154), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n154), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n154), 
	.A(n134));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n37), 
	.A(n147));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n37), 
	.A(n139));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n37), 
	.A(n26));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n37), 
	.A(n149));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n37), 
	.A(n28));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n37), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n37), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n37), 
	.A(n134));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n38), 
	.A(n147));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n38), 
	.A(n139));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n38), 
	.A(n26));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n38), 
	.A(n149));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n38), 
	.A(n28));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n38), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n38), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n38), 
	.A(n134));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n157), 
	.A(n147));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n157), 
	.A(n139));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n157), 
	.A(n26));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n157), 
	.A(n149));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n157), 
	.A(n28));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n157), 
	.A(n29));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n157), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n157), 
	.A(n134));
   ALU_op_width8_out_width16_func_width4_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_op_width8_out_width16_func_width4_test_1 (
	A, 
	B, 
	ALU_FUN, 
	EN, 
	CLK, 
	RST, 
	out_valid, 
	ALU_OUT, 
	test_si, 
	test_se, 
	FE_OFN3_RST_S_1);
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input EN;
   input CLK;
   input RST;
   output out_valid;
   output [15:0] ALU_OUT;
   input test_si;
   input test_se;
   input FE_OFN3_RST_S_1;

   // Internal wires
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire [15:0] ALU_OUT_COMB;

   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_COMB[7]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_COMB[6]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_COMB[5]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_COMB[4]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_COMB[3]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_COMB[2]), 
	.CK(CLK));
   SDFFRHQX1M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_COMB[1]), 
	.CK(CLK));
   SDFFRHQX1M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_COMB[0]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_COMB[15]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_COMB[14]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_COMB[13]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_COMB[12]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_COMB[11]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_COMB[10]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_COMB[9]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_COMB[8]), 
	.CK(CLK));
   SDFFRQX2M out_valid_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_S_1), 
	.Q(out_valid), 
	.D(EN), 
	.CK(CLK));
   OAI2BB1X2M U23 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n142));
   OAI2BB1X2M U24 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   NOR2BX2M U25 (.Y(n54), 
	.B(n145), 
	.AN(n123));
   AND2X2M U26 (.Y(n59), 
	.B(n122), 
	.A(n116));
   NOR2BX2M U27 (.Y(n48), 
	.B(n146), 
	.AN(n52));
   AND2X2M U28 (.Y(n67), 
	.B(n122), 
	.A(n123));
   INVX2M U29 (.Y(n145), 
	.A(n117));
   NOR2X2M U31 (.Y(n58), 
	.B(n145), 
	.A(n124));
   INVX2M U32 (.Y(n141), 
	.A(n108));
   INVX2M U33 (.Y(n142), 
	.A(n124));
   OAI2BB1X2M U34 (.Y(ALU_OUT_COMB[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   OAI2BB1X2M U35 (.Y(ALU_OUT_COMB[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U36 (.Y(ALU_OUT_COMB[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U37 (.Y(ALU_OUT_COMB[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U38 (.Y(ALU_OUT_COMB[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U39 (.Y(ALU_OUT_COMB[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U40 (.Y(ALU_OUT_COMB[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N124));
   NOR3BX2M U41 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n143), 
	.AN(n122));
   NOR3X4M U42 (.Y(n52), 
	.C(n143), 
	.B(ALU_FUN[2]), 
	.A(n145));
   NOR2X2M U43 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NAND2X2M U44 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U45 (.Y(n144), 
	.A(ALU_FUN[0]));
   AND3X2M U46 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n144), 
	.A(n123));
   NAND3X2M U47 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   INVX2M U48 (.Y(n143), 
	.A(ALU_FUN[1]));
   NAND3X2M U49 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n144), 
	.A(n142));
   NOR2X2M U50 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NOR2X2M U51 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n144));
   NAND3X2M U52 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   NAND2X2M U53 (.Y(n49), 
	.B(n140), 
	.A(EN));
   AND2X2M U54 (.Y(n116), 
	.B(n143), 
	.A(ALU_FUN[2]));
   AND4X2M U55 (.Y(n107), 
	.D(n144), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   INVX2M U56 (.Y(n146), 
	.A(EN));
   INVX2M U57 (.Y(n139), 
	.A(B[6]));
   OAI222X1M U58 (.Y(n71), 
	.C1(n152), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n139), 
	.A0(n72));
   AOI221XLM U59 (.Y(n73), 
	.C0(n58), 
	.B1(n151), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U60 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n151), 
	.A0(n63));
   AOI31X2M U61 (.Y(ALU_OUT_COMB[2]), 
	.B0(n146), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U62 (.Y(n92), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U63 (.Y(n94), 
	.C0(n95), 
	.B1(n155), 
	.B0(n58), 
	.A1(n141), 
	.A0(A[3]));
   AOI222X1M U64 (.Y(n93), 
	.C1(n66), 
	.C0(N127), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(n52), 
	.A0(N111));
   AOI31X2M U65 (.Y(ALU_OUT_COMB[3]), 
	.B0(n146), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U66 (.Y(n86), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U67 (.Y(n88), 
	.C0(n89), 
	.B1(n154), 
	.B0(n58), 
	.A1(n141), 
	.A0(A[4]));
   AOI222X1M U68 (.Y(n87), 
	.C1(n66), 
	.C0(N128), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(n52), 
	.A0(N112));
   AOI31X2M U69 (.Y(ALU_OUT_COMB[4]), 
	.B0(n146), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U70 (.Y(n80), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U71 (.Y(n82), 
	.C0(n83), 
	.B1(n153), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n141));
   AOI222X1M U72 (.Y(n81), 
	.C1(n66), 
	.C0(N129), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(n52), 
	.A0(N113));
   AOI31X2M U73 (.Y(ALU_OUT_COMB[5]), 
	.B0(n146), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U74 (.Y(n74), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U75 (.Y(n76), 
	.C0(n77), 
	.B1(n152), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n141));
   AOI222X1M U76 (.Y(n75), 
	.C1(n66), 
	.C0(N130), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(n52), 
	.A0(N114));
   AOI31X2M U77 (.Y(ALU_OUT_COMB[6]), 
	.B0(n146), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U78 (.Y(n68), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U79 (.Y(n70), 
	.C0(n71), 
	.B1(n151), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n141));
   AOI222X1M U80 (.Y(n69), 
	.C1(n66), 
	.C0(N131), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(n52), 
	.A0(N115));
   AOI31X2M U81 (.Y(ALU_OUT_COMB[7]), 
	.B0(n146), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U82 (.Y(n56), 
	.B1(n52), 
	.B0(N116), 
	.A1(n66), 
	.A0(N132));
   AOI22X1M U83 (.Y(n55), 
	.B1(n54), 
	.B0(N98), 
	.A1(n67), 
	.A0(N107));
   AOI221XLM U84 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n150), 
	.A0(n58));
   AOI31X2M U85 (.Y(ALU_OUT_COMB[0]), 
	.B0(n146), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U86 (.Y(n110), 
	.B1(n54), 
	.B0(N91), 
	.A1(n67), 
	.A0(N100));
   AOI211X2M U87 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n157), 
	.A0(n58));
   AOI222X4M U88 (.Y(n111), 
	.C1(n66), 
	.C0(N125), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(n52), 
	.A0(N109));
   AOI31X2M U89 (.Y(ALU_OUT_COMB[1]), 
	.B0(n146), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI211X2M U90 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n141), 
	.A0(A[2]));
   AOI222X1M U91 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n156), 
	.B0(n58), 
	.A1(n66), 
	.A0(N126));
   AOI222X1M U92 (.Y(n98), 
	.C1(n67), 
	.C0(N101), 
	.B1(n52), 
	.B0(N110), 
	.A1(n54), 
	.A0(N92));
   INVX2M U93 (.Y(n140), 
	.A(n109));
   AOI211X2M U94 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N108));
   AOI21X2M U95 (.Y(ALU_OUT_COMB[8]), 
	.B0(n146), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U96 (.Y(n50), 
	.B0(n140), 
	.A1(n54), 
	.A0(N99));
   AOI2BB2XLM U97 (.Y(n51), 
	.B1(n52), 
	.B0(N117), 
	.A1N(n53), 
	.A0N(n150));
   INVX2M U99 (.Y(n156), 
	.A(A[1]));
   INVX2M U100 (.Y(n157), 
	.A(A[0]));
   INVX2M U101 (.Y(n151), 
	.A(A[6]));
   INVX2M U102 (.Y(n150), 
	.A(A[7]));
   INVX2M U103 (.Y(n154), 
	.A(A[3]));
   INVX2M U104 (.Y(n155), 
	.A(A[2]));
   INVX2M U105 (.Y(n152), 
	.A(A[5]));
   INVX2M U106 (.Y(n153), 
	.A(A[4]));
   OAI222X1M U107 (.Y(n95), 
	.C1(n156), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n136), 
	.A0(n96));
   AOI221XLM U108 (.Y(n97), 
	.C0(n58), 
	.B1(n155), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U109 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n155), 
	.A0(n63));
   OAI222X1M U110 (.Y(n89), 
	.C1(n155), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n138), 
	.A0(n90));
   AOI221XLM U111 (.Y(n91), 
	.C0(n58), 
	.B1(n154), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U112 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n154), 
	.A0(n63));
   OAI222X1M U113 (.Y(n83), 
	.C1(n154), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n149), 
	.A0(n84));
   INVX2M U114 (.Y(n149), 
	.A(B[4]));
   AOI221XLM U115 (.Y(n85), 
	.C0(n58), 
	.B1(n153), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U116 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n153), 
	.A0(n63));
   OAI222X1M U117 (.Y(n77), 
	.C1(n153), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n148), 
	.A0(n78));
   INVX2M U118 (.Y(n148), 
	.A(B[5]));
   AOI221XLM U119 (.Y(n79), 
	.C0(n58), 
	.B1(n152), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U120 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n152), 
	.A0(n63));
   OAI222X1M U121 (.Y(n60), 
	.C1(n151), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n147), 
	.A0(n61));
   INVX2M U122 (.Y(n147), 
	.A(B[7]));
   AOI221XLM U123 (.Y(n62), 
	.C0(n58), 
	.B1(n150), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U124 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n150), 
	.A0(n63));
   INVX2M U125 (.Y(n135), 
	.A(n31));
   OAI2B2X1M U126 (.Y(n114), 
	.B1(n156), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U127 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n157), 
	.A0(n63));
   OAI2B2X1M U128 (.Y(n102), 
	.B1(n157), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U129 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n156), 
	.A0(n63));
   INVX2M U130 (.Y(n137), 
	.A(n42));
   OAI21X2M U131 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI31X2M U132 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U133 (.Y(n119), 
	.C0(n58), 
	.B1(n157), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   NOR3X2M U134 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n143));
   OAI21X2M U135 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI31X2M U136 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U137 (.Y(n104), 
	.C0(n58), 
	.B1(n156), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   NOR3X2M U138 (.Y(n106), 
	.C(n143), 
	.B(ALU_FUN[2]), 
	.A(n144));
   INVX2M U147 (.Y(n134), 
	.A(B[0]));
   INVX2M U148 (.Y(n136), 
	.A(B[2]));
   INVX2M U149 (.Y(n138), 
	.A(B[3]));
   NOR2X1M U150 (.Y(n130), 
	.B(B[7]), 
	.A(n150));
   NAND2BX1M U151 (.Y(n46), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U152 (.Y(n35), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U153 (.Y(n125), 
	.B(n35), 
	.A(n46));
   NOR2X1M U154 (.Y(n43), 
	.B(A[3]), 
	.A(n138));
   NOR2X1M U155 (.Y(n34), 
	.B(A[2]), 
	.A(n136));
   NOR2X1M U156 (.Y(n31), 
	.B(A[0]), 
	.A(n134));
   CLKNAND2X2M U157 (.Y(n45), 
	.B(n136), 
	.A(A[2]));
   NAND2BX1M U158 (.Y(n40), 
	.B(n45), 
	.AN(n34));
   AOI21X1M U159 (.Y(n32), 
	.B0(B[1]), 
	.A1(n156), 
	.A0(n31));
   AOI211X1M U160 (.Y(n33), 
	.C0(n32), 
	.B0(n40), 
	.A1(n135), 
	.A0(A[1]));
   CLKNAND2X2M U161 (.Y(n44), 
	.B(n138), 
	.A(A[3]));
   OAI31X1M U162 (.Y(n36), 
	.B0(n44), 
	.A2(n33), 
	.A1(n34), 
	.A0(n43));
   NAND2BX1M U163 (.Y(n128), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U164 (.Y(n37), 
	.C0(n128), 
	.B0(n35), 
	.A1(n36), 
	.A0(n125));
   NAND2BX1M U165 (.Y(n47), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U166 (.Y(n127), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U167 (.Y(n38), 
	.B1(n151), 
	.B0(B[6]), 
	.A2(n127), 
	.A1(n47), 
	.A0(n37));
   CLKNAND2X2M U168 (.Y(n131), 
	.B(n150), 
	.A(B[7]));
   OAI21X1M U169 (.Y(N159), 
	.B0(n131), 
	.A1(n38), 
	.A0(n130));
   CLKNAND2X2M U170 (.Y(n41), 
	.B(n134), 
	.A(A[0]));
   OA21X1M U171 (.Y(n39), 
	.B0(B[1]), 
	.A1(n156), 
	.A0(n41));
   AOI211X1M U172 (.Y(n42), 
	.C0(n39), 
	.B0(n40), 
	.A1(n156), 
	.A0(n41));
   AOI31X1M U173 (.Y(n126), 
	.B0(n43), 
	.A2(n44), 
	.A1(n45), 
	.A0(n137));
   OAI2B11X1M U174 (.Y(n129), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n126), 
	.A0(n125));
   AOI32X1M U175 (.Y(n132), 
	.B1(n139), 
	.B0(A[6]), 
	.A2(n127), 
	.A1(n128), 
	.A0(n129));
   AOI2B1X1M U176 (.Y(n133), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   CLKINVX1M U177 (.Y(N158), 
	.A(n133));
   NOR2X1M U178 (.Y(N157), 
	.B(N158), 
	.A(N159));
   ALU_op_width8_out_width16_func_width4_DW_div_uns_0 div_46 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N132,
		N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125 }), 
	.n147(n147), 
	.n157(n157), 
	.n156(n156), 
	.n155(n155), 
	.n154(n154), 
	.n139(n139), 
	.n153(n153), 
	.n151(n151));
   ALU_op_width8_out_width16_func_width4_DW01_sub_0 sub_40 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n147(n147), 
	.n149(n149), 
	.n148(n148), 
	.n157(n157), 
	.n139(n139));
   ALU_op_width8_out_width16_func_width4_DW01_add_0 add_37 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   ALU_op_width8_out_width16_func_width4_DW02_mult_0 mult_43 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n148(n148), 
	.n157(n157), 
	.n156(n156), 
	.n155(n155), 
	.n154(n154), 
	.n153(n153), 
	.n152(n152), 
	.n151(n151), 
	.n150(n150), 
	.n139(n139), 
	.n147(n147), 
	.n149(n149));
endmodule

module data_sampling_scale_size6_count_num6_test_1 (
	RX_IN, 
	prescale, 
	CLK, 
	RST, 
	dat_samp_en, 
	edge_cnt, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se, 
	CLK_M_RX__L4_N1);
   input RX_IN;
   input [5:0] prescale;
   input CLK;
   input RST;
   input dat_samp_en;
   input [5:0] edge_cnt;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;
   input CLK_M_RX__L4_N1;

   // Internal wires
   wire N25;
   wire n23;
   wire n24;
   wire n25;
   wire \add_17/carry[4] ;
   wire \add_17/carry[3] ;
   wire \add_17/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire [4:0] half_edge;
   wire [4:0] half_edge_n1;
   wire [4:0] half_edge_p1;
   wire [2:0] store;

   assign test_so = store[2] ;

   SDFFRQX2M \store_reg[2]  (.SI(store[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(store[2]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \store_reg[1]  (.SI(store[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(store[1]), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX2M \store_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.RN(RST), 
	.Q(store[0]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M sampled_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_bit), 
	.D(N25), 
	.CK(CLK_M_RX__L4_N1));
   INVX2M U4 (.Y(n12), 
	.A(half_edge[2]));
   ADDHX1M U5 (.S(half_edge_p1[2]), 
	.CO(\add_17/carry[3] ), 
	.B(\add_17/carry[2] ), 
	.A(half_edge[2]));
   ADDHX1M U6 (.S(half_edge_p1[1]), 
	.CO(\add_17/carry[2] ), 
	.B(half_edge[0]), 
	.A(half_edge[1]));
   ADDHX1M U10 (.S(half_edge_p1[3]), 
	.CO(\add_17/carry[4] ), 
	.B(\add_17/carry[3] ), 
	.A(half_edge[3]));
   INVX2M U11 (.Y(n4), 
	.A(prescale[3]));
   CLKINVX1M U12 (.Y(half_edge[0]), 
	.A(prescale[1]));
   NOR2X1M U13 (.Y(n1), 
	.B(prescale[1]), 
	.A(prescale[2]));
   AO21XLM U14 (.Y(half_edge[1]), 
	.B0(n1), 
	.A1(prescale[2]), 
	.A0(prescale[1]));
   CLKNAND2X2M U15 (.Y(n2), 
	.B(n4), 
	.A(n1));
   OAI21X1M U16 (.Y(half_edge[2]), 
	.B0(n2), 
	.A1(n4), 
	.A0(n1));
   XNOR2X1M U17 (.Y(half_edge[3]), 
	.B(n2), 
	.A(prescale[4]));
   NOR2X1M U18 (.Y(n3), 
	.B(n2), 
	.A(prescale[4]));
   CLKXOR2X2M U19 (.Y(half_edge[4]), 
	.B(n3), 
	.A(prescale[5]));
   NOR2X1M U20 (.Y(n5), 
	.B(half_edge[0]), 
	.A(half_edge[1]));
   AO21XLM U21 (.Y(half_edge_n1[1]), 
	.B0(n5), 
	.A1(half_edge[1]), 
	.A0(half_edge[0]));
   CLKNAND2X2M U22 (.Y(n6), 
	.B(n12), 
	.A(n5));
   OAI21X1M U23 (.Y(half_edge_n1[2]), 
	.B0(n6), 
	.A1(n12), 
	.A0(n5));
   XNOR2X1M U24 (.Y(half_edge_n1[3]), 
	.B(n6), 
	.A(half_edge[3]));
   NOR2X1M U25 (.Y(n11), 
	.B(n6), 
	.A(half_edge[3]));
   CLKXOR2X2M U26 (.Y(half_edge_n1[4]), 
	.B(n11), 
	.A(half_edge[4]));
   CLKXOR2X2M U27 (.Y(half_edge_p1[4]), 
	.B(half_edge[4]), 
	.A(\add_17/carry[4] ));
   MXI2X1M U28 (.Y(n25), 
	.S0(n15), 
	.B(n14), 
	.A(n13));
   NOR2X1M U29 (.Y(n15), 
	.B(n17), 
	.A(n16));
   NAND4X1M U30 (.Y(n17), 
	.D(n21), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   CLKXOR2X2M U31 (.Y(n21), 
	.B(half_edge_p1[1]), 
	.A(n22));
   XNOR2X1M U32 (.Y(n20), 
	.B(half_edge_p1[2]), 
	.A(edge_cnt[2]));
   XNOR2X1M U33 (.Y(n19), 
	.B(half_edge_p1[3]), 
	.A(edge_cnt[3]));
   CLKXOR2X2M U34 (.Y(n18), 
	.B(half_edge_p1[4]), 
	.A(n26));
   NAND4BX1M U35 (.Y(n16), 
	.D(n29), 
	.C(n28), 
	.B(n27), 
	.AN(edge_cnt[5]));
   XNOR2X1M U36 (.Y(n27), 
	.B(prescale[1]), 
	.A(edge_cnt[0]));
   CLKNAND2X2M U37 (.Y(n13), 
	.B(dat_samp_en), 
	.A(store[2]));
   MXI2X1M U38 (.Y(n24), 
	.S0(n28), 
	.B(n30), 
	.A(n14));
   NAND4X1M U39 (.Y(n28), 
	.D(n34), 
	.C(n33), 
	.B(n32), 
	.A(n31));
   NOR4BX1M U40 (.Y(n34), 
	.D(n36), 
	.C(n35), 
	.B(edge_cnt[5]), 
	.AN(n29));
   CLKXOR2X2M U41 (.Y(n36), 
	.B(edge_cnt[1]), 
	.A(half_edge[1]));
   CLKXOR2X2M U42 (.Y(n35), 
	.B(edge_cnt[0]), 
	.A(half_edge[0]));
   XNOR2X1M U43 (.Y(n33), 
	.B(half_edge[3]), 
	.A(edge_cnt[3]));
   CLKXOR2X2M U44 (.Y(n32), 
	.B(half_edge[4]), 
	.A(n26));
   CLKINVX1M U45 (.Y(n26), 
	.A(edge_cnt[4]));
   XNOR2X1M U46 (.Y(n31), 
	.B(half_edge[2]), 
	.A(edge_cnt[2]));
   CLKNAND2X2M U47 (.Y(n30), 
	.B(dat_samp_en), 
	.A(store[1]));
   MXI2X1M U48 (.Y(n23), 
	.S0(n29), 
	.B(n37), 
	.A(n14));
   NAND4X1M U49 (.Y(n29), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   NOR3X1M U50 (.Y(n41), 
	.C(n43), 
	.B(edge_cnt[5]), 
	.A(n42));
   CLKXOR2X2M U51 (.Y(n43), 
	.B(edge_cnt[0]), 
	.A(prescale[1]));
   CLKXOR2X2M U52 (.Y(n42), 
	.B(edge_cnt[4]), 
	.A(half_edge_n1[4]));
   XNOR2X1M U53 (.Y(n40), 
	.B(half_edge_n1[2]), 
	.A(edge_cnt[2]));
   XNOR2X1M U54 (.Y(n39), 
	.B(half_edge_n1[3]), 
	.A(edge_cnt[3]));
   CLKXOR2X2M U55 (.Y(n38), 
	.B(half_edge_n1[1]), 
	.A(n22));
   CLKINVX1M U56 (.Y(n22), 
	.A(edge_cnt[1]));
   CLKNAND2X2M U57 (.Y(n37), 
	.B(dat_samp_en), 
	.A(store[0]));
   CLKNAND2X2M U58 (.Y(n14), 
	.B(RX_IN), 
	.A(dat_samp_en));
   AOI21BX1M U59 (.Y(N25), 
	.B0N(dat_samp_en), 
	.A1(n45), 
	.A0(n44));
   OAI21X1M U60 (.Y(n45), 
	.B0(store[2]), 
	.A1(store[1]), 
	.A0(store[0]));
   CLKNAND2X2M U61 (.Y(n44), 
	.B(store[1]), 
	.A(store[0]));
endmodule

module stop_check_test_1 (
	sampl_bit_stp, 
	stop_en, 
	CLK, 
	RST, 
	stp_error, 
	test_si, 
	test_se);
   input sampl_bit_stp;
   input stop_en;
   input CLK;
   input RST;
   output stp_error;
   input test_si;
   input test_se;

   // Internal wires
   wire N1;

   SDFFRQX4M stp_error_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stp_error), 
	.D(N1), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(N1), 
	.B(sampl_bit_stp), 
	.AN(stop_en));
endmodule

module start_check (
	sampl_bit_strt, 
	start_en, 
	strt_glitch);
   input sampl_bit_strt;
   input start_en;
   output strt_glitch;

   AND2X2M U1 (.Y(strt_glitch), 
	.B(sampl_bit_strt), 
	.A(start_en));
endmodule

module par_check_DATA_WIDTH8_count_num6_scale_size6_test_1 (
	sampl_bit_par, 
	PAR_TYP, 
	par_chk_en, 
	CLK, 
	RST, 
	prescale, 
	bit_cnt, 
	edge_cnt, 
	P_DATA_PAR, 
	par_err, 
	test_si, 
	test_se);
   input sampl_bit_par;
   input PAR_TYP;
   input par_chk_en;
   input CLK;
   input RST;
   input [5:0] prescale;
   input [3:0] bit_cnt;
   input [5:0] edge_cnt;
   input [7:0] P_DATA_PAR;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire par_bit;
   wire N15;
   wire n3;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n14;
   wire n15;
   wire n1;
   wire n2;
   wire n4;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;

   SDFFRQX2M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_bit), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX4M par_err_reg (.SI(par_bit), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_err), 
	.D(n15), 
	.CK(CLK));
   INVX2M U3 (.Y(n22), 
	.A(par_chk_en));
   OAI2BB2X1M U4 (.Y(n15), 
	.B1(n22), 
	.B0(n9), 
	.A1N(par_err), 
	.A0N(n10));
   XNOR2X2M U5 (.Y(n9), 
	.B(sampl_bit_par), 
	.A(par_bit));
   AOI31X2M U6 (.Y(n10), 
	.B0(par_chk_en), 
	.A2(n11), 
	.A1(bit_cnt[1]), 
	.A0(bit_cnt[3]));
   NOR3BX2M U7 (.Y(n11), 
	.C(bit_cnt[0]), 
	.B(bit_cnt[2]), 
	.AN(N15));
   XNOR2X2M U8 (.Y(n7), 
	.B(P_DATA_PAR[2]), 
	.A(P_DATA_PAR[3]));
   OAI2BB2X1M U9 (.Y(n14), 
	.B1(n22), 
	.B0(n3), 
	.A1N(par_bit), 
	.A0N(n22));
   XOR3XLM U10 (.Y(n3), 
	.C(n6), 
	.B(PAR_TYP), 
	.A(n5));
   XOR3XLM U11 (.Y(n6), 
	.C(n7), 
	.B(P_DATA_PAR[0]), 
	.A(P_DATA_PAR[1]));
   XOR3XLM U12 (.Y(n5), 
	.C(n8), 
	.B(P_DATA_PAR[4]), 
	.A(P_DATA_PAR[5]));
   CLKXOR2X2M U13 (.Y(n8), 
	.B(P_DATA_PAR[6]), 
	.A(P_DATA_PAR[7]));
   NOR2BX1M U14 (.Y(n1), 
	.B(prescale[0]), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U17 (.Y(n17), 
	.B1(n1), 
	.B0(edge_cnt[1]), 
	.A1N(prescale[1]), 
	.A0(n1));
   NOR2BX1M U18 (.Y(n2), 
	.B(edge_cnt[0]), 
	.AN(prescale[0]));
   OAI2B2X1M U19 (.Y(n16), 
	.B1(n2), 
	.B0(prescale[1]), 
	.A1N(edge_cnt[1]), 
	.A0(n2));
   XNOR2X1M U20 (.Y(n4), 
	.B(edge_cnt[5]), 
	.A(prescale[5]));
   NAND3X1M U21 (.Y(n21), 
	.C(n4), 
	.B(n16), 
	.A(n17));
   CLKXOR2X2M U22 (.Y(n20), 
	.B(edge_cnt[4]), 
	.A(prescale[4]));
   CLKXOR2X2M U23 (.Y(n19), 
	.B(edge_cnt[2]), 
	.A(prescale[2]));
   CLKXOR2X2M U24 (.Y(n18), 
	.B(edge_cnt[3]), 
	.A(prescale[3]));
   NOR4X1M U25 (.Y(N15), 
	.D(n18), 
	.C(n19), 
	.B(n20), 
	.A(n21));
endmodule

module deserializer_DATA_WIDTH8_count_num6_scale_size6_test_1 (
	sampled_bit, 
	deser_en, 
	prescale, 
	edge_cnt, 
	CLK, 
	RST, 
	P_DATA, 
	test_se);
   input sampled_bit;
   input deser_en;
   input [5:0] prescale;
   input [5:0] edge_cnt;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   input test_se;

   // Internal wires
   wire N1;
   wire N2;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire n1;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   SDFFRQX2M \P_DATA_reg[0]  (.SI(edge_cnt[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n21), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n13), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n19), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n15), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n25), 
	.CK(CLK));
   OAI22X1M U3 (.Y(n13), 
	.B1(n37), 
	.B0(n1), 
	.A1(n38), 
	.A0(n31));
   OAI22X1M U4 (.Y(n15), 
	.B1(n36), 
	.B0(n1), 
	.A1(n37), 
	.A0(n31));
   OAI22X1M U5 (.Y(n17), 
	.B1(n35), 
	.B0(n1), 
	.A1(n36), 
	.A0(n31));
   OAI22X1M U6 (.Y(n19), 
	.B1(n34), 
	.B0(n1), 
	.A1(n35), 
	.A0(n31));
   OAI22X1M U7 (.Y(n21), 
	.B1(n33), 
	.B0(n1), 
	.A1(n34), 
	.A0(n31));
   OAI22X1M U8 (.Y(n23), 
	.B1(n32), 
	.B0(n1), 
	.A1(n33), 
	.A0(n31));
   INVX2M U9 (.Y(n31), 
	.A(n1));
   NAND2X2M U10 (.Y(n1), 
	.B(N8), 
	.A(deser_en));
   OAI2BB2X1M U11 (.Y(n11), 
	.B1(n38), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(P_DATA[0]));
   OAI2BB2X1M U12 (.Y(n25), 
	.B1(n32), 
	.B0(n31), 
	.A1N(n31), 
	.A0N(sampled_bit));
   OR2X2M U13 (.Y(n2), 
	.B(prescale[0]), 
	.A(prescale[1]));
   INVX2M U14 (.Y(n32), 
	.A(P_DATA[7]));
   INVX2M U15 (.Y(n33), 
	.A(P_DATA[6]));
   INVX2M U16 (.Y(n37), 
	.A(P_DATA[2]));
   INVX2M U17 (.Y(n36), 
	.A(P_DATA[3]));
   INVX2M U18 (.Y(n35), 
	.A(P_DATA[4]));
   INVX2M U19 (.Y(n34), 
	.A(P_DATA[5]));
   INVX2M U28 (.Y(n38), 
	.A(P_DATA[1]));
   CLKINVX1M U29 (.Y(N1), 
	.A(prescale[0]));
   OAI2BB1X1M U30 (.Y(N2), 
	.B0(n2), 
	.A1N(prescale[1]), 
	.A0N(prescale[0]));
   OR2X1M U31 (.Y(n3), 
	.B(prescale[2]), 
	.A(n2));
   OAI2BB1X1M U32 (.Y(N3), 
	.B0(n3), 
	.A1N(prescale[2]), 
	.A0N(n2));
   OR2X1M U33 (.Y(n4), 
	.B(prescale[3]), 
	.A(n3));
   OAI2BB1X1M U34 (.Y(N4), 
	.B0(n4), 
	.A1N(prescale[3]), 
	.A0N(n3));
   OR2X1M U35 (.Y(n5), 
	.B(prescale[4]), 
	.A(n4));
   OAI2BB1X1M U36 (.Y(N5), 
	.B0(n5), 
	.A1N(prescale[4]), 
	.A0N(n4));
   NOR2X1M U37 (.Y(N7), 
	.B(prescale[5]), 
	.A(n5));
   AO21XLM U38 (.Y(N6), 
	.B0(N7), 
	.A1(prescale[5]), 
	.A0(n5));
   NOR2BX1M U39 (.Y(n6), 
	.B(edge_cnt[0]), 
	.AN(N1));
   OAI2B2X1M U40 (.Y(n26), 
	.B1(n6), 
	.B0(N2), 
	.A1N(edge_cnt[1]), 
	.A0(n6));
   XNOR2X1M U41 (.Y(n9), 
	.B(edge_cnt[5]), 
	.A(N6));
   NOR2BX1M U42 (.Y(n7), 
	.B(N1), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U43 (.Y(n8), 
	.B1(n7), 
	.B0(edge_cnt[1]), 
	.A1N(N2), 
	.A0(n7));
   NAND4BX1M U44 (.Y(n30), 
	.D(n8), 
	.C(n9), 
	.B(n26), 
	.AN(N7));
   CLKXOR2X2M U45 (.Y(n29), 
	.B(edge_cnt[4]), 
	.A(N5));
   CLKXOR2X2M U46 (.Y(n28), 
	.B(edge_cnt[2]), 
	.A(N3));
   CLKXOR2X2M U47 (.Y(n27), 
	.B(edge_cnt[3]), 
	.A(N4));
   NOR4X1M U48 (.Y(N8), 
	.D(n27), 
	.C(n28), 
	.B(n29), 
	.A(n30));
endmodule

module edge_bit_counter_count_num6_scale_size6_test_1 (
	RST, 
	CLK, 
	prescale, 
	enable, 
	PAR_EN, 
	bit_cnt, 
	edge_cnt, 
	test_si, 
	test_se, 
	CLK_M_RX__L4_N1);
   input RST;
   input CLK;
   input [5:0] prescale;
   input enable;
   input PAR_EN;
   output [3:0] bit_cnt;
   output [5:0] edge_cnt;
   input test_si;
   input test_se;
   input CLK_M_RX__L4_N1;

   // Internal wires
   wire edge_high;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire \add_25/carry[5] ;
   wire \add_25/carry[4] ;
   wire \add_25/carry[3] ;
   wire \add_25/carry[2] ;
   wire n1;
   wire n2;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n42;
   wire n43;

   SDFFRQX2M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(n43), 
	.RN(RST), 
	.Q(bit_cnt[3]), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(n43), 
	.RN(RST), 
	.Q(bit_cnt[2]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(n43), 
	.RN(RST), 
	.Q(bit_cnt[1]), 
	.D(n31), 
	.CK(CLK_M_RX__L4_N1));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(n43), 
	.RN(RST), 
	.Q(bit_cnt[0]), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[5]  (.SI(edge_cnt[4]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[5]), 
	.D(N45), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(bit_cnt[3]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[0]), 
	.D(N40), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[4]), 
	.D(N44), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[3]), 
	.D(N43), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[2]), 
	.D(N42), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(edge_cnt[0]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[1]), 
	.D(N41), 
	.CK(CLK));
   NAND2X2M U6 (.Y(n20), 
	.B(n36), 
	.A(enable));
   INVX2M U14 (.Y(n36), 
	.A(edge_high));
   OAI22X1M U15 (.Y(n31), 
	.B1(n22), 
	.B0(n21), 
	.A1(n20), 
	.A0(n39));
   NOR2BX2M U16 (.Y(n21), 
	.B(n24), 
	.AN(n23));
   AND2X2M U17 (.Y(n27), 
	.B(n36), 
	.A(enable));
   AND2X2M U18 (.Y(N41), 
	.B(n27), 
	.A(N14));
   AND2X2M U19 (.Y(N42), 
	.B(n27), 
	.A(N15));
   AND2X2M U20 (.Y(N43), 
	.B(n27), 
	.A(N16));
   AND2X2M U21 (.Y(N44), 
	.B(n27), 
	.A(N17));
   OAI32X1M U22 (.Y(n33), 
	.B1(n38), 
	.B0(n26), 
	.A2(n22), 
	.A1(bit_cnt[3]), 
	.A0(n25));
   INVX2M U23 (.Y(n38), 
	.A(bit_cnt[3]));
   AOI2B1X1M U24 (.Y(n26), 
	.B0(n27), 
	.A1N(n22), 
	.A0(n25));
   NAND3X2M U25 (.Y(n25), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   NAND2X2M U26 (.Y(n22), 
	.B(enable), 
	.A(n28));
   AOI31X2M U27 (.Y(n28), 
	.B0(n36), 
	.A2(bit_cnt[3]), 
	.A1(n37), 
	.A0(n29));
   INVX2M U28 (.Y(n37), 
	.A(bit_cnt[2]));
   OAI2BB2X1M U29 (.Y(n29), 
	.B1(n23), 
	.B0(PAR_EN), 
	.A1N(PAR_EN), 
	.A0N(n24));
   OAI2BB2X1M U30 (.Y(n32), 
	.B1(n22), 
	.B0(bit_cnt[0]), 
	.A1N(n27), 
	.A0N(bit_cnt[0]));
   OAI2BB1X2M U31 (.Y(N40), 
	.B0(n22), 
	.A1N(n27), 
	.A0N(N13));
   NOR2BXLM U32 (.Y(n30), 
	.B(n18), 
	.AN(enable));
   CLKXOR2X2M U33 (.Y(n18), 
	.B(bit_cnt[2]), 
	.A(n19));
   NAND3X2M U34 (.Y(n19), 
	.C(edge_high), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   AND2X2M U35 (.Y(N45), 
	.B(n27), 
	.A(N18));
   NOR2X2M U36 (.Y(n24), 
	.B(bit_cnt[0]), 
	.A(n39));
   NAND2X2M U37 (.Y(n23), 
	.B(n39), 
	.A(bit_cnt[0]));
   INVX2M U38 (.Y(n39), 
	.A(bit_cnt[1]));
   ADDHX1M U39 (.S(N14), 
	.CO(\add_25/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U40 (.S(N15), 
	.CO(\add_25/carry[3] ), 
	.B(\add_25/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U41 (.S(N16), 
	.CO(\add_25/carry[4] ), 
	.B(\add_25/carry[3] ), 
	.A(edge_cnt[3]));
   ADDHX1M U42 (.S(N17), 
	.CO(\add_25/carry[5] ), 
	.B(\add_25/carry[4] ), 
	.A(edge_cnt[4]));
   CLKINVX1M U43 (.Y(N13), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U44 (.Y(N18), 
	.B(edge_cnt[5]), 
	.A(\add_25/carry[5] ));
   NOR2BX1M U45 (.Y(n1), 
	.B(prescale[0]), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U46 (.Y(n15), 
	.B1(n1), 
	.B0(edge_cnt[1]), 
	.A1N(prescale[1]), 
	.A0(n1));
   NOR2BX1M U47 (.Y(n2), 
	.B(edge_cnt[0]), 
	.AN(prescale[0]));
   OAI2B2X1M U48 (.Y(n14), 
	.B1(n2), 
	.B0(prescale[1]), 
	.A1N(edge_cnt[1]), 
	.A0(n2));
   XNOR2X1M U49 (.Y(n13), 
	.B(edge_cnt[5]), 
	.A(prescale[5]));
   NAND3X1M U50 (.Y(n35), 
	.C(n13), 
	.B(n14), 
	.A(n15));
   CLKXOR2X2M U51 (.Y(n34), 
	.B(edge_cnt[4]), 
	.A(prescale[4]));
   CLKXOR2X2M U52 (.Y(n17), 
	.B(edge_cnt[2]), 
	.A(prescale[2]));
   CLKXOR2X2M U53 (.Y(n16), 
	.B(edge_cnt[3]), 
	.A(prescale[3]));
   NOR4X1M U54 (.Y(edge_high), 
	.D(n16), 
	.C(n17), 
	.B(n34), 
	.A(n35));
   INVXLM U55 (.Y(n42), 
	.A(test_se));
   CLKINVX2M U56 (.Y(n43), 
	.A(n42));
endmodule

module FSM_RX_count_num6_scale_size6_test_1 (
	RX_IN, 
	prescale, 
	RST, 
	CLK, 
	PAR_EN, 
	bit_cnt_fsm, 
	edge_cnt_fsm, 
	par_err_fsm, 
	strt_glitch_fsm, 
	stp_err_fsm, 
	count_en_fsm, 
	data_en_fsm, 
	par_en_fsm, 
	strt_en_fsm, 
	stp_en_fsm, 
	deser_en_fsm, 
	data_valid, 
	test_si, 
	test_se, 
	CLK_M_RX__L4_N1);
   input RX_IN;
   input [5:0] prescale;
   input RST;
   input CLK;
   input PAR_EN;
   input [3:0] bit_cnt_fsm;
   input [5:0] edge_cnt_fsm;
   input par_err_fsm;
   input strt_glitch_fsm;
   input stp_err_fsm;
   output count_en_fsm;
   output data_en_fsm;
   output par_en_fsm;
   output strt_en_fsm;
   output stp_en_fsm;
   output deser_en_fsm;
   output data_valid;
   input test_si;
   input test_se;
   input CLK_M_RX__L4_N1;

   // Internal wires
   wire data_valid_c;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire [5:0] er_chk_edge;
   wire [2:0] current;
   wire [2:0] next;

   SDFFRQX2M \current_reg[2]  (.SI(current[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[2]), 
	.D(next[2]), 
	.CK(CLK));
   SDFFRQX2M \current_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[0]), 
	.D(next[0]), 
	.CK(CLK_M_RX__L4_N1));
   SDFFRQX2M \current_reg[1]  (.SI(current[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[1]), 
	.D(next[1]), 
	.CK(CLK_M_RX__L4_N1));
   SDFFRQX2M data_valid_reg (.SI(current[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(data_valid), 
	.D(data_valid_c), 
	.CK(CLK_M_RX__L4_N1));
   OR2X2M U4 (.Y(n1), 
	.B(prescale[0]), 
	.A(prescale[1]));
   INVX2M U5 (.Y(n5), 
	.A(prescale[3]));
   CLKINVX1M U9 (.Y(er_chk_edge[0]), 
	.A(prescale[0]));
   OAI2BB1X1M U10 (.Y(er_chk_edge[1]), 
	.B0(n1), 
	.A1N(prescale[1]), 
	.A0N(prescale[0]));
   NOR2X1M U11 (.Y(n2), 
	.B(prescale[2]), 
	.A(n1));
   AO21XLM U12 (.Y(er_chk_edge[2]), 
	.B0(n2), 
	.A1(prescale[2]), 
	.A0(n1));
   CLKNAND2X2M U13 (.Y(n3), 
	.B(n5), 
	.A(n2));
   OAI21X1M U14 (.Y(er_chk_edge[3]), 
	.B0(n3), 
	.A1(n5), 
	.A0(n2));
   XNOR2X1M U15 (.Y(er_chk_edge[4]), 
	.B(n3), 
	.A(prescale[4]));
   NOR2X1M U16 (.Y(n4), 
	.B(n3), 
	.A(prescale[4]));
   CLKXOR2X2M U17 (.Y(er_chk_edge[5]), 
	.B(n4), 
	.A(prescale[5]));
   NOR2X1M U18 (.Y(par_en_fsm), 
	.B(n6), 
	.A(current[0]));
   OAI21BX1M U19 (.Y(next[2]), 
	.B0N(n13), 
	.A1(n12), 
	.A0(n7));
   OAI31X1M U20 (.Y(n13), 
	.B0(n16), 
	.A2(n15), 
	.A1(PAR_EN), 
	.A0(n14));
   NAND3X1M U21 (.Y(next[1]), 
	.C(n17), 
	.B(n6), 
	.A(n7));
   OR3X1M U22 (.Y(n17), 
	.C(n12), 
	.B(strt_glitch_fsm), 
	.A(n18));
   OAI221X1M U23 (.Y(next[0]), 
	.C0(n21), 
	.B1(n14), 
	.B0(n20), 
	.A1(n19), 
	.A0(RX_IN));
   AOI2BB2XLM U24 (.Y(n21), 
	.B1(n22), 
	.B0(strt_en_fsm), 
	.A1N(n23), 
	.A0N(n16));
   CLKINVX1M U25 (.Y(n22), 
	.A(strt_glitch_fsm));
   NOR2X1M U26 (.Y(strt_en_fsm), 
	.B(current[1]), 
	.A(n18));
   CLKINVX1M U27 (.Y(n14), 
	.A(deser_en_fsm));
   CLKINVX1M U28 (.Y(n20), 
	.A(n15));
   NAND3BX1M U29 (.Y(n15), 
	.C(n24), 
	.B(bit_cnt_fsm[3]), 
	.AN(n12));
   NOR3X1M U30 (.Y(n24), 
	.C(bit_cnt_fsm[1]), 
	.B(bit_cnt_fsm[2]), 
	.A(bit_cnt_fsm[0]));
   NAND4X1M U31 (.Y(n12), 
	.D(n28), 
	.C(n27), 
	.B(n26), 
	.A(n25));
   NOR3X1M U32 (.Y(n28), 
	.C(n31), 
	.B(n30), 
	.A(n29));
   CLKXOR2X2M U33 (.Y(n31), 
	.B(edge_cnt_fsm[0]), 
	.A(prescale[0]));
   CLKXOR2X2M U34 (.Y(n30), 
	.B(edge_cnt_fsm[2]), 
	.A(prescale[2]));
   CLKXOR2X2M U35 (.Y(n29), 
	.B(edge_cnt_fsm[1]), 
	.A(prescale[1]));
   XNOR2X1M U36 (.Y(n27), 
	.B(prescale[4]), 
	.A(edge_cnt_fsm[4]));
   XNOR2X1M U37 (.Y(n26), 
	.B(prescale[5]), 
	.A(edge_cnt_fsm[5]));
   XNOR2X1M U38 (.Y(n25), 
	.B(prescale[3]), 
	.A(edge_cnt_fsm[3]));
   MXI2X1M U39 (.Y(n19), 
	.S0(current[0]), 
	.B(n33), 
	.A(n32));
   AND2X1M U40 (.Y(n33), 
	.B(current[2]), 
	.A(current[1]));
   NOR2X1M U41 (.Y(n32), 
	.B(current[1]), 
	.A(current[2]));
   NOR2X1M U42 (.Y(deser_en_fsm), 
	.B(n34), 
	.A(n6));
   NOR4X1M U43 (.Y(data_valid_c), 
	.D(n16), 
	.C(n23), 
	.B(par_err_fsm), 
	.A(stp_err_fsm));
   NAND4X1M U44 (.Y(n23), 
	.D(n38), 
	.C(n37), 
	.B(n36), 
	.A(n35));
   NOR3X1M U45 (.Y(n38), 
	.C(n41), 
	.B(n40), 
	.A(n39));
   CLKXOR2X2M U46 (.Y(n41), 
	.B(edge_cnt_fsm[0]), 
	.A(er_chk_edge[0]));
   CLKXOR2X2M U47 (.Y(n40), 
	.B(edge_cnt_fsm[2]), 
	.A(er_chk_edge[2]));
   CLKXOR2X2M U48 (.Y(n39), 
	.B(edge_cnt_fsm[1]), 
	.A(er_chk_edge[1]));
   XNOR2X1M U49 (.Y(n37), 
	.B(er_chk_edge[4]), 
	.A(edge_cnt_fsm[4]));
   XNOR2X1M U50 (.Y(n36), 
	.B(er_chk_edge[5]), 
	.A(edge_cnt_fsm[5]));
   XNOR2X1M U51 (.Y(n35), 
	.B(er_chk_edge[3]), 
	.A(edge_cnt_fsm[3]));
   OAI21BX1M U52 (.Y(count_en_fsm), 
	.B0N(data_en_fsm), 
	.A1(RX_IN), 
	.A0(current[2]));
   NAND3X1M U53 (.Y(data_en_fsm), 
	.C(n18), 
	.B(n16), 
	.A(n6));
   CLKNAND2X2M U54 (.Y(n18), 
	.B(n42), 
	.A(current[0]));
   CLKINVX1M U55 (.Y(n16), 
	.A(stp_en_fsm));
   NOR2X1M U56 (.Y(stp_en_fsm), 
	.B(n7), 
	.A(n42));
   CLKNAND2X2M U57 (.Y(n7), 
	.B(n34), 
	.A(current[1]));
   CLKINVX1M U58 (.Y(n34), 
	.A(current[0]));
   CLKNAND2X2M U59 (.Y(n6), 
	.B(n42), 
	.A(current[1]));
   CLKINVX1M U60 (.Y(n42), 
	.A(current[2]));
endmodule

module UART_RX_scale_size6_DATA_WIDTH8_test_1 (
	RX_IN, 
	CLK, 
	RST, 
	prescale, 
	PAR_EN, 
	PAR_TYP, 
	P_DATA, 
	Parity_error, 
	stop_error, 
	data_valid, 
	test_si, 
	test_se, 
	CLK_M_RX__L4_N1);
   input RX_IN;
   input CLK;
   input RST;
   input [5:0] prescale;
   input PAR_EN;
   input PAR_TYP;
   output [7:0] P_DATA;
   output Parity_error;
   output stop_error;
   output data_valid;
   input test_si;
   input test_se;
   input CLK_M_RX__L4_N1;

   // Internal wires
   wire dat_samp_en;
   wire sampled_bit;
   wire stop_en;
   wire start_en;
   wire strt_glitch;
   wire par_chk_en;
   wire deser_en;
   wire enable;
   wire n4;
   wire [5:0] edge_cnt;
   wire [3:0] bit_cnt;

   data_sampling_scale_size6_count_num6_test_1 U0_SAMP (.RX_IN(RX_IN), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.dat_samp_en(dat_samp_en), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.sampled_bit(sampled_bit), 
	.test_si(Parity_error), 
	.test_so(n4), 
	.test_se(test_se), 
	.CLK_M_RX__L4_N1(CLK_M_RX__L4_N1));
   stop_check_test_1 U0_STOP (.sampl_bit_stp(sampled_bit), 
	.stop_en(stop_en), 
	.CLK(CLK), 
	.RST(RST), 
	.stp_error(stop_error), 
	.test_si(n4), 
	.test_se(test_se));
   start_check U0_START (.sampl_bit_strt(sampled_bit), 
	.start_en(start_en), 
	.strt_glitch(strt_glitch));
   par_check_DATA_WIDTH8_count_num6_scale_size6_test_1 U0_PARITY (.sampl_bit_par(sampled_bit), 
	.PAR_TYP(PAR_TYP), 
	.par_chk_en(par_chk_en), 
	.CLK(CLK_M_RX__L4_N1), 
	.RST(RST), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.P_DATA_PAR({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_err(Parity_error), 
	.test_si(data_valid), 
	.test_se(test_se));
   deserializer_DATA_WIDTH8_count_num6_scale_size6_test_1 U0_desrializer (.sampled_bit(sampled_bit), 
	.deser_en(deser_en), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.CLK(CLK_M_RX__L4_N1), 
	.RST(RST), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_se(test_se));
   edge_bit_counter_count_num6_scale_size6_test_1 U0_count (.RST(RST), 
	.CLK(CLK), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.enable(enable), 
	.PAR_EN(PAR_EN), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.test_si(stop_error), 
	.test_se(test_se), 
	.CLK_M_RX__L4_N1(CLK_M_RX__L4_N1));
   FSM_RX_count_num6_scale_size6_test_1 U0_FSM (.RX_IN(RX_IN), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.RST(RST), 
	.CLK(CLK), 
	.PAR_EN(PAR_EN), 
	.bit_cnt_fsm({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt_fsm({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.par_err_fsm(Parity_error), 
	.strt_glitch_fsm(strt_glitch), 
	.stp_err_fsm(stop_error), 
	.count_en_fsm(enable), 
	.data_en_fsm(dat_samp_en), 
	.par_en_fsm(par_chk_en), 
	.strt_en_fsm(start_en), 
	.stp_en_fsm(stop_en), 
	.deser_en_fsm(deser_en), 
	.data_valid(data_valid), 
	.test_si(test_si), 
	.test_se(test_se), 
	.CLK_M_RX__L4_N1(CLK_M_RX__L4_N1));
endmodule

module MUX_4x1_test_1 (
	IN0, 
	IN1, 
	IN2, 
	IN3, 
	CLK, 
	RST, 
	SEL, 
	out, 
	test_si, 
	test_se);
   input IN0;
   input IN1;
   input IN2;
   input IN3;
   input CLK;
   input RST;
   input [1:0] SEL;
   output out;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire mux_out;
   wire n3;
   wire n4;
   wire n2;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX4M out_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out), 
	.D(mux_out), 
	.CK(CLK));
   INVX2M U4 (.Y(n2), 
	.A(SEL[0]));
   OAI2B2X1M U5 (.Y(mux_out), 
	.B1(n4), 
	.B0(SEL[1]), 
	.A1N(SEL[1]), 
	.A0(n3));
   AOI22X1M U6 (.Y(n4), 
	.B1(IN1), 
	.B0(SEL[0]), 
	.A1(n2), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U7 (.Y(n3), 
	.B1(SEL[0]), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n2), 
	.A0(IN2));
endmodule

module parity_calc_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	P_DATA_par, 
	PARITY_TYPE, 
	Data_Valid_par, 
	busy, 
	parity_bit, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [7:0] P_DATA_par;
   input PARITY_TYPE;
   input Data_Valid_par;
   input busy;
   output parity_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;

   SDFFRQX2M parity_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parity_bit), 
	.D(n8), 
	.CK(CLK));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_DATA_par[4]), 
	.A(P_DATA_par[5]));
   CLKXOR2X2M U3 (.Y(n6), 
	.B(P_DATA_par[6]), 
	.A(P_DATA_par[7]));
   XNOR2X2M U4 (.Y(n5), 
	.B(P_DATA_par[2]), 
	.A(P_DATA_par[3]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(parity_bit));
   NAND2BX2M U6 (.Y(n2), 
	.B(Data_Valid_par), 
	.AN(busy));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(PARITY_TYPE), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_DATA_par[0]), 
	.A(P_DATA_par[1]));
endmodule

module Serializer_DATA_WIDTH8_test_1 (
	P_DATA_SER, 
	CLK, 
	RST, 
	ser_en, 
	DATA_VALID, 
	busy, 
	ser_done, 
	SER_OUT, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN4_RST_S_2, 
	CLK_M_TX__L4_N1);
   input [7:0] P_DATA_SER;
   input CLK;
   input RST;
   input ser_en;
   input DATA_VALID;
   input busy;
   output ser_done;
   output SER_OUT;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN4_RST_S_2;
   input CLK_M_TX__L4_N1;

   // Internal wires
   wire n13;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n49;
   wire n51;
   wire n54;
   wire n55;
   wire [7:0] Regester;
   wire [3:0] counter;

   assign test_so2 = counter[3] ;
   assign test_so1 = counter[2] ;

   SDFFRQX2M \Regester_reg[7]  (.SI(Regester[6]), 
	.SE(n55), 
	.RN(RST), 
	.Q(Regester[7]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M \Regester_reg[6]  (.SI(Regester[5]), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(Regester[6]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX2M \Regester_reg[5]  (.SI(Regester[4]), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(Regester[5]), 
	.D(n41), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \Regester_reg[4]  (.SI(Regester[3]), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(Regester[4]), 
	.D(n42), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \Regester_reg[3]  (.SI(Regester[2]), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(Regester[3]), 
	.D(n43), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \Regester_reg[2]  (.SI(Regester[1]), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(Regester[2]), 
	.D(n44), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \Regester_reg[1]  (.SI(n51), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(Regester[1]), 
	.D(n45), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRX1M \Regester_reg[0]  (.SI(test_si1), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.QN(n13), 
	.Q(n51), 
	.D(n46), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \counter_reg[3]  (.SI(test_si2), 
	.SE(n55), 
	.RN(RST), 
	.Q(counter[3]), 
	.D(n47), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(n55), 
	.RN(FE_OFN4_RST_S_2), 
	.Q(counter[2]), 
	.D(n38), 
	.CK(CLK_M_TX__L4_N1));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n55), 
	.RN(RST), 
	.Q(counter[1]), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[0]  (.SI(Regester[7]), 
	.SE(n55), 
	.RN(RST), 
	.Q(counter[0]), 
	.D(n48), 
	.CK(CLK));
   NOR4X1M U15 (.Y(ser_done), 
	.D(counter[2]), 
	.C(counter[1]), 
	.B(counter[0]), 
	.A(n49));
   NAND2X2M U16 (.Y(n25), 
	.B(n17), 
	.A(n15));
   INVX2M U17 (.Y(n17), 
	.A(n27));
   NOR2X2M U18 (.Y(n27), 
	.B(n24), 
	.A(n36));
   AOI21X2M U19 (.Y(n21), 
	.B0(n24), 
	.A1(n27), 
	.A0(n18));
   INVX2M U20 (.Y(n15), 
	.A(n24));
   NAND2BX2M U21 (.Y(n36), 
	.B(ser_en), 
	.AN(ser_done));
   OAI32X1M U22 (.Y(n38), 
	.B1(n20), 
	.B0(n16), 
	.A2(n22), 
	.A1(counter[2]), 
	.A0(n19));
   INVX2M U23 (.Y(n16), 
	.A(n23));
   OAI32X1M U24 (.Y(n47), 
	.B1(n49), 
	.B0(n35), 
	.A2(n20), 
	.A1(n19), 
	.A0(n34));
   OR2X2M U25 (.Y(n34), 
	.B(counter[3]), 
	.A(n22));
   AOI21X2M U26 (.Y(n35), 
	.B0(n23), 
	.A1(n20), 
	.A0(n27));
   OAI21X2M U27 (.Y(n23), 
	.B0(n21), 
	.A1(n17), 
	.A0(counter[1]));
   OAI22X1M U28 (.Y(n37), 
	.B1(n22), 
	.B0(counter[1]), 
	.A1(n19), 
	.A0(n21));
   OAI22X1M U29 (.Y(n48), 
	.B1(n17), 
	.B0(counter[0]), 
	.A1(n15), 
	.A0(n18));
   NAND2X2M U30 (.Y(n22), 
	.B(n27), 
	.A(counter[0]));
   OAI2B1X2M U31 (.Y(n45), 
	.B0(n32), 
	.A1N(Regester[1]), 
	.A0(n25));
   AOI22X1M U32 (.Y(n32), 
	.B1(n24), 
	.B0(P_DATA_SER[1]), 
	.A1(n27), 
	.A0(Regester[2]));
   OAI2B1X2M U33 (.Y(n44), 
	.B0(n31), 
	.A1N(Regester[2]), 
	.A0(n25));
   AOI22X1M U34 (.Y(n31), 
	.B1(n24), 
	.B0(P_DATA_SER[2]), 
	.A1(n27), 
	.A0(Regester[3]));
   OAI2B1X2M U35 (.Y(n43), 
	.B0(n30), 
	.A1N(Regester[3]), 
	.A0(n25));
   AOI22X1M U36 (.Y(n30), 
	.B1(n24), 
	.B0(P_DATA_SER[3]), 
	.A1(n27), 
	.A0(Regester[4]));
   OAI2B1X2M U37 (.Y(n42), 
	.B0(n29), 
	.A1N(Regester[4]), 
	.A0(n25));
   AOI22X1M U38 (.Y(n29), 
	.B1(n24), 
	.B0(P_DATA_SER[4]), 
	.A1(n27), 
	.A0(Regester[5]));
   OAI2B1X2M U39 (.Y(n41), 
	.B0(n28), 
	.A1N(Regester[5]), 
	.A0(n25));
   AOI22X1M U40 (.Y(n28), 
	.B1(n24), 
	.B0(P_DATA_SER[5]), 
	.A1(n27), 
	.A0(Regester[6]));
   OAI2B1X2M U41 (.Y(n40), 
	.B0(n26), 
	.A1N(Regester[6]), 
	.A0(n25));
   AOI22X1M U42 (.Y(n26), 
	.B1(n24), 
	.B0(P_DATA_SER[6]), 
	.A1(n27), 
	.A0(Regester[7]));
   OAI21X2M U43 (.Y(n46), 
	.B0(n33), 
	.A1(n13), 
	.A0(n25));
   AOI22X1M U44 (.Y(n33), 
	.B1(n24), 
	.B0(P_DATA_SER[0]), 
	.A1(n27), 
	.A0(Regester[1]));
   NOR2BX2M U46 (.Y(n24), 
	.B(busy), 
	.AN(DATA_VALID));
   INVX2M U47 (.Y(n49), 
	.A(counter[3]));
   AO2B2X2M U48 (.Y(n39), 
	.B1(n24), 
	.B0(P_DATA_SER[7]), 
	.A1N(n25), 
	.A0(Regester[7]));
   NOR2X2M U49 (.Y(SER_OUT), 
	.B(n13), 
	.A(n36));
   INVX2M U50 (.Y(n18), 
	.A(counter[0]));
   INVX2M U51 (.Y(n19), 
	.A(counter[1]));
   INVX2M U52 (.Y(n20), 
	.A(counter[2]));
   INVXLM U53 (.Y(n54), 
	.A(test_se));
   CLKINVX2M U54 (.Y(n55), 
	.A(n54));
endmodule

module FSM_test_1 (
	CLK, 
	RST, 
	VALID_FSM, 
	PAR_EN_FSM, 
	ser_done_fsm, 
	ser_en_fsm, 
	SEL_FSM, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input VALID_FSM;
   input PAR_EN_FSM;
   input ser_done_fsm;
   output ser_en_fsm;
   output [1:0] SEL_FSM;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire busy_c;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire [2:0] current;
   wire [2:0] next;

   assign test_so = current[2] ;

   SDFFRQX2M busy_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(busy), 
	.D(busy_c), 
	.CK(CLK));
   SDFFRQX2M \current_reg[2]  (.SI(current[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[2]), 
	.D(next[2]), 
	.CK(CLK));
   SDFFRQX2M \current_reg[1]  (.SI(current[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[1]), 
	.D(next[1]), 
	.CK(CLK));
   SDFFRQX2M \current_reg[0]  (.SI(busy), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[0]), 
	.D(next[0]), 
	.CK(CLK));
   OAI21BX1M U7 (.Y(busy_c), 
	.B0N(next[1]), 
	.A1(n5), 
	.A0(n14));
   OAI21X2M U8 (.Y(next[0]), 
	.B0(n15), 
	.A1(n5), 
	.A0(n14));
   INVX2M U9 (.Y(n5), 
	.A(VALID_FSM));
   INVX2M U10 (.Y(n6), 
	.A(n16));
   OAI211X2M U11 (.Y(n16), 
	.C0(n9), 
	.B0(n13), 
	.A1(n14), 
	.A0(VALID_FSM));
   NAND3X2M U12 (.Y(n14), 
	.C(n7), 
	.B(n9), 
	.A(n8));
   OA21X2M U13 (.Y(n15), 
	.B0(n11), 
	.A1(n12), 
	.A0(ser_done_fsm));
   INVX2M U14 (.Y(n10), 
	.A(ser_done_fsm));
   NAND3X2M U15 (.Y(next[1]), 
	.C(n13), 
	.B(n11), 
	.A(n12));
   OAI31X1M U16 (.Y(ser_en_fsm), 
	.B0(n11), 
	.A2(current[2]), 
	.A1(ser_done_fsm), 
	.A0(n7));
   OAI211X2M U17 (.Y(SEL_FSM[0]), 
	.C0(n6), 
	.B0(n15), 
	.A1(n12), 
	.A0(PAR_EN_FSM));
   OAI21X2M U18 (.Y(SEL_FSM[1]), 
	.B0(n6), 
	.A1(n10), 
	.A0(n12));
   NAND3X2M U19 (.Y(n11), 
	.C(current[0]), 
	.B(n9), 
	.A(n8));
   INVX2M U20 (.Y(n9), 
	.A(current[2]));
   INVX2M U21 (.Y(n7), 
	.A(current[0]));
   INVX2M U22 (.Y(n8), 
	.A(current[1]));
   OAI31X1M U23 (.Y(next[2]), 
	.B0(n13), 
	.A2(n12), 
	.A1(PAR_EN_FSM), 
	.A0(n10));
   NAND3X2M U24 (.Y(n12), 
	.C(current[1]), 
	.B(n9), 
	.A(current[0]));
   NAND3X2M U25 (.Y(n13), 
	.C(current[1]), 
	.B(n9), 
	.A(n7));
endmodule

module UART_TX_DATA_WIDTH8_test_1 (
	P_DATA, 
	DATA_VALID, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	TX_OUT, 
	busy, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN4_RST_S_2, 
	CLK_M_TX__L4_N1);
   input [7:0] P_DATA;
   input DATA_VALID;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output TX_OUT;
   output busy;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN4_RST_S_2;
   input CLK_M_TX__L4_N1;

   // Internal wires
   wire ser_data;
   wire par_bit;
   wire ser_en;
   wire ser_done;
   wire n5;
   wire n6;
   wire [1:0] mux_sel;

   MUX_4x1_test_1 U0_MUX (.IN0(1'b0), 
	.IN1(ser_data), 
	.IN2(par_bit), 
	.IN3(1'b1), 
	.CLK(CLK_M_TX__L4_N1), 
	.RST(FE_OFN4_RST_S_2), 
	.SEL({ mux_sel[1],
		mux_sel[0] }), 
	.out(TX_OUT), 
	.test_si(n5), 
	.test_se(test_se));
   parity_calc_DATA_WIDTH8_test_1 U0_PARITY (.CLK(CLK_M_TX__L4_N1), 
	.RST(FE_OFN4_RST_S_2), 
	.P_DATA_par({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.PARITY_TYPE(PAR_TYP), 
	.Data_Valid_par(DATA_VALID), 
	.busy(busy), 
	.parity_bit(par_bit), 
	.test_si(n6), 
	.test_se(test_se));
   Serializer_DATA_WIDTH8_test_1 U0_SER (.P_DATA_SER({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.ser_en(ser_en), 
	.DATA_VALID(DATA_VALID), 
	.busy(busy), 
	.ser_done(ser_done), 
	.SER_OUT(ser_data), 
	.test_si2(test_si2), 
	.test_si1(par_bit), 
	.test_so2(test_so1), 
	.test_so1(n5), 
	.test_se(test_se), 
	.FE_OFN4_RST_S_2(FE_OFN4_RST_S_2), 
	.CLK_M_TX__L4_N1(CLK_M_TX__L4_N1));
   FSM_test_1 U0_FSM (.CLK(CLK_M_TX__L4_N1), 
	.RST(FE_OFN4_RST_S_2), 
	.VALID_FSM(DATA_VALID), 
	.PAR_EN_FSM(PAR_EN), 
	.ser_done_fsm(ser_done), 
	.ser_en_fsm(ser_en), 
	.SEL_FSM({ mux_sel[1],
		mux_sel[0] }), 
	.busy(busy), 
	.test_si(test_si1), 
	.test_so(n6), 
	.test_se(test_se));
endmodule

module UART_DATA_WIDTH8_scale_size6_test_1 (
	TX_IN_P, 
	TX_IN_V, 
	TX_CLK, 
	RST, 
	RX_IN_S, 
	RX_CLK, 
	prescale, 
	PAR_EN, 
	PAR_TYP, 
	TX_OUT_S, 
	TX_OUT_V, 
	RX_OUT_P, 
	Parity_error, 
	stop_error, 
	RX_OUT_V, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN4_RST_S_2, 
	CLK_M_RX__L4_N1, 
	CLK_M_TX__L4_N1);
   input [7:0] TX_IN_P;
   input TX_IN_V;
   input TX_CLK;
   input RST;
   input RX_IN_S;
   input RX_CLK;
   input [5:0] prescale;
   input PAR_EN;
   input PAR_TYP;
   output TX_OUT_S;
   output TX_OUT_V;
   output [7:0] RX_OUT_P;
   output Parity_error;
   output stop_error;
   output RX_OUT_V;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN4_RST_S_2;
   input CLK_M_RX__L4_N1;
   input CLK_M_TX__L4_N1;

   UART_RX_scale_size6_DATA_WIDTH8_test_1 U0_rx (.RX_IN(RX_IN_S), 
	.CLK(RX_CLK), 
	.RST(FE_OFN4_RST_S_2), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.Parity_error(Parity_error), 
	.stop_error(stop_error), 
	.data_valid(RX_OUT_V), 
	.test_si(test_si1), 
	.test_se(test_se), 
	.CLK_M_RX__L4_N1(CLK_M_RX__L4_N1));
   UART_TX_DATA_WIDTH8_test_1 U0_tx (.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.DATA_VALID(TX_IN_V), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.CLK(TX_CLK), 
	.RST(RST), 
	.TX_OUT(TX_OUT_S), 
	.busy(TX_OUT_V), 
	.test_si2(test_si2), 
	.test_si1(RX_OUT_P[7]), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN4_RST_S_2(FE_OFN4_RST_S_2), 
	.CLK_M_TX__L4_N1(CLK_M_TX__L4_N1));
endmodule

module CLK_GATE (
	CLK_EN, 
	test_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input test_EN;
   input CLK;
   output GATED_CLK;

   // Internal wires
   wire _0_net_;

   TLATNCAX4M CLK_GATE_U0 (.ECK(GATED_CLK), 
	.E(_0_net_), 
	.CK(CLK));
   OR2X2M U1 (.Y(_0_net_), 
	.B(test_EN), 
	.A(CLK_EN));
endmodule

module RST_SYNC_test_0 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_test_1 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX4M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module PULSE_GEN_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	pulse_SIG, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output pulse_SIG;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pulse_flop;
   wire LVL_SIG_flop;

   assign test_so = pulse_flop ;

   SDFFRQX2M LVL_SIG_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(LVL_SIG_flop), 
	.D(LVL_SIG), 
	.CK(CLK));
   SDFFRQX2M pulse_flop_reg (.SI(LVL_SIG_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(pulse_flop), 
	.D(LVL_SIG_flop), 
	.CK(CLK));
   NOR2BX2M U5 (.Y(pulse_SIG), 
	.B(pulse_flop), 
	.AN(LVL_SIG_flop));
endmodule

module ClkDiv_divide_ratio8_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_divide_ratio8_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	CLK_M_UART__L2_N0, 
	CLK_M_UART__L6_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input CLK_M_UART__L2_N0;
   input CLK_M_UART__L6_N0;

   // Internal wires
   wire div_clk__L1_N0;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N1;
   wire div_clk;
   wire flag;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire [6:0] counter;
   wire [6:0] half_tog;

   assign test_so = flag ;

   CLKBUFX12M div_clk__L1_I0 (.Y(div_clk__L1_N0), 
	.A(div_clk));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n26), 
	.CK(CLK_M_UART__L2_N0));
   SDFFSQX2M flag_reg (.SN(i_rst_n), 
	.SI(div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(flag), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n28), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n34), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n29), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n30), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n31), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n32), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n33), 
	.CK(i_ref_clk));
   OR2X2M U5 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   NAND2BX2M U6 (.Y(n16), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n50));
   INVX2M U11 (.Y(n15), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U15 (.Y(o_div_clk), 
	.S0(N1), 
	.B(div_clk__L1_N0), 
	.A(CLK_M_UART__L6_N0));
   CLKINVX1M U16 (.Y(half_tog[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(half_tog[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(half_tog[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   AO21XLM U21 (.Y(half_tog[3]), 
	.B0(n3), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(half_tog[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(half_tog[5]), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U26 (.Y(half_tog[6]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   AO22X1M U27 (.Y(n34), 
	.B1(n17), 
	.B0(N14), 
	.A1(counter[0]), 
	.A0(n16));
   AO22X1M U28 (.Y(n33), 
	.B1(n17), 
	.B0(N15), 
	.A1(counter[1]), 
	.A0(n16));
   AO22X1M U29 (.Y(n32), 
	.B1(n17), 
	.B0(N16), 
	.A1(counter[2]), 
	.A0(n16));
   AO22X1M U30 (.Y(n31), 
	.B1(n17), 
	.B0(N17), 
	.A1(counter[3]), 
	.A0(n16));
   AO22X1M U31 (.Y(n30), 
	.B1(n17), 
	.B0(N18), 
	.A1(counter[4]), 
	.A0(n16));
   AO22X1M U32 (.Y(n29), 
	.B1(n17), 
	.B0(N19), 
	.A1(counter[5]), 
	.A0(n16));
   AO22X1M U33 (.Y(n28), 
	.B1(n17), 
	.B0(N20), 
	.A1(counter[6]), 
	.A0(n16));
   AND3X1M U34 (.Y(n17), 
	.C(N1), 
	.B(n19), 
	.A(n18));
   XNOR2X1M U35 (.Y(n27), 
	.B(n20), 
	.A(flag));
   OR2X1M U36 (.Y(n20), 
	.B(n16), 
	.A(n19));
   CLKXOR2X2M U37 (.Y(n26), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U38 (.Y(n21), 
	.B0(n16), 
	.A1(n18), 
	.A0(n19));
   OR2X1M U39 (.Y(n18), 
	.B(i_div_ratio[0]), 
	.A(n22));
   CLKNAND2X2M U40 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n23));
   MXI2X1M U41 (.Y(n23), 
	.S0(flag), 
	.B(n22), 
	.A(n24));
   NAND4X1M U42 (.Y(n22), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(n25));
   NOR4X1M U43 (.Y(n37), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   CLKXOR2X2M U44 (.Y(n41), 
	.B(counter[2]), 
	.A(half_tog[2]));
   CLKXOR2X2M U45 (.Y(n40), 
	.B(counter[1]), 
	.A(half_tog[1]));
   CLKXOR2X2M U46 (.Y(n39), 
	.B(counter[0]), 
	.A(half_tog[0]));
   CLKXOR2X2M U47 (.Y(n38), 
	.B(counter[6]), 
	.A(half_tog[6]));
   XNOR2X1M U48 (.Y(n36), 
	.B(half_tog[4]), 
	.A(counter[4]));
   XNOR2X1M U49 (.Y(n35), 
	.B(half_tog[5]), 
	.A(counter[5]));
   XNOR2X1M U50 (.Y(n25), 
	.B(half_tog[3]), 
	.A(counter[3]));
   NAND4X1M U51 (.Y(n24), 
	.D(n45), 
	.C(n44), 
	.B(n43), 
	.A(n42));
   NOR4X1M U52 (.Y(n45), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   CLKXOR2X2M U53 (.Y(n49), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U54 (.Y(n48), 
	.B(counter[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U55 (.Y(n47), 
	.B(counter[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U56 (.Y(n46), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U57 (.Y(n44), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[4]));
   XNOR2X1M U58 (.Y(n43), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[5]));
   XNOR2X1M U59 (.Y(n42), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[3]));
   CLKINVX1M U60 (.Y(N1), 
	.A(n16));
   NOR4BX1M U61 (.Y(n50), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n51));
   NOR4X1M U62 (.Y(n51), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   ClkDiv_divide_ratio8_0_DW01_inc_0 add_53 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N20,
		N19,
		N18,
		N17,
		N16,
		N15,
		N14 }));
endmodule

module ClkDiv_divide_ratio8_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_divide_ratio8_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	CLK_M_UART__L2_N0, 
	CLK_M_UART__L6_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input CLK_M_UART__L2_N0;
   input CLK_M_UART__L6_N0;

   // Internal wires
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N1;
   wire div_clk;
   wire flag;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire [6:0] counter;
   wire [6:0] half_tog;

   assign test_so = flag ;

   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n60), 
	.CK(CLK_M_UART__L2_N0));
   SDFFSQX2M flag_reg (.SN(i_rst_n), 
	.SI(div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(flag), 
	.D(n59), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n58), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n52), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n57), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n56), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n55), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n54), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n53), 
	.CK(i_ref_clk));
   OR2X2M U5 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   NAND2BX2M U6 (.Y(n16), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n50));
   INVX2M U11 (.Y(n15), 
	.A(i_div_ratio[5]));
   MX2X2M U15 (.Y(o_div_clk), 
	.S0(N1), 
	.B(div_clk), 
	.A(CLK_M_UART__L6_N0));
   CLKINVX1M U16 (.Y(half_tog[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(half_tog[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(half_tog[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   AO21XLM U21 (.Y(half_tog[3]), 
	.B0(n3), 
	.A1(i_div_ratio[4]), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(half_tog[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(half_tog[5]), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U26 (.Y(half_tog[6]), 
	.B(n5), 
	.A(i_div_ratio[7]));
   AO22X1M U27 (.Y(n52), 
	.B1(n17), 
	.B0(N14), 
	.A1(counter[0]), 
	.A0(n16));
   AO22X1M U28 (.Y(n53), 
	.B1(n17), 
	.B0(N15), 
	.A1(counter[1]), 
	.A0(n16));
   AO22X1M U29 (.Y(n54), 
	.B1(n17), 
	.B0(N16), 
	.A1(counter[2]), 
	.A0(n16));
   AO22X1M U30 (.Y(n55), 
	.B1(n17), 
	.B0(N17), 
	.A1(counter[3]), 
	.A0(n16));
   AO22X1M U31 (.Y(n56), 
	.B1(n17), 
	.B0(N18), 
	.A1(counter[4]), 
	.A0(n16));
   AO22X1M U32 (.Y(n57), 
	.B1(n17), 
	.B0(N19), 
	.A1(counter[5]), 
	.A0(n16));
   AO22X1M U33 (.Y(n58), 
	.B1(n17), 
	.B0(N20), 
	.A1(counter[6]), 
	.A0(n16));
   AND3X1M U34 (.Y(n17), 
	.C(N1), 
	.B(n19), 
	.A(n18));
   XNOR2X1M U35 (.Y(n59), 
	.B(n20), 
	.A(flag));
   OR2X1M U36 (.Y(n20), 
	.B(n16), 
	.A(n19));
   CLKXOR2X2M U37 (.Y(n60), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U38 (.Y(n21), 
	.B0(n16), 
	.A1(n18), 
	.A0(n19));
   OR2X1M U39 (.Y(n18), 
	.B(i_div_ratio[0]), 
	.A(n22));
   CLKNAND2X2M U40 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n23));
   MXI2X1M U41 (.Y(n23), 
	.S0(flag), 
	.B(n22), 
	.A(n24));
   NAND4X1M U42 (.Y(n22), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(n25));
   NOR4X1M U43 (.Y(n37), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   CLKXOR2X2M U44 (.Y(n41), 
	.B(counter[2]), 
	.A(half_tog[2]));
   CLKXOR2X2M U45 (.Y(n40), 
	.B(counter[1]), 
	.A(half_tog[1]));
   CLKXOR2X2M U46 (.Y(n39), 
	.B(counter[0]), 
	.A(half_tog[0]));
   CLKXOR2X2M U47 (.Y(n38), 
	.B(counter[6]), 
	.A(half_tog[6]));
   XNOR2X1M U48 (.Y(n36), 
	.B(half_tog[4]), 
	.A(counter[4]));
   XNOR2X1M U49 (.Y(n35), 
	.B(half_tog[5]), 
	.A(counter[5]));
   XNOR2X1M U50 (.Y(n25), 
	.B(half_tog[3]), 
	.A(counter[3]));
   NAND4X1M U51 (.Y(n24), 
	.D(n45), 
	.C(n44), 
	.B(n43), 
	.A(n42));
   NOR4X1M U52 (.Y(n45), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   CLKXOR2X2M U53 (.Y(n49), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U54 (.Y(n48), 
	.B(counter[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U55 (.Y(n47), 
	.B(counter[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U56 (.Y(n46), 
	.B(counter[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U57 (.Y(n44), 
	.B(i_div_ratio[5]), 
	.A(counter[4]));
   XNOR2X1M U58 (.Y(n43), 
	.B(i_div_ratio[6]), 
	.A(counter[5]));
   XNOR2X1M U59 (.Y(n42), 
	.B(i_div_ratio[4]), 
	.A(counter[3]));
   CLKINVX1M U60 (.Y(N1), 
	.A(n16));
   NOR4BX1M U61 (.Y(n50), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n51));
   NOR4X1M U62 (.Y(n51), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   ClkDiv_divide_ratio8_1_DW01_inc_0 add_53 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N20,
		N19,
		N18,
		N17,
		N16,
		N15,
		N14 }));
endmodule

module clk_div_mux_divide_ratio8_scale_size6 (
	prescale, 
	i_div_ratio);
   input [5:0] prescale;
   output [7:0] i_div_ratio;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND4BX1M U11 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(prescale[3]), 
	.AN(prescale[4]));
   NAND4BX1M U12 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(prescale[4]), 
	.AN(prescale[3]));
   NOR3X2M U13 (.Y(i_div_ratio[1]), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(n7));
   NOR3X2M U14 (.Y(i_div_ratio[2]), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(n6));
   INVX2M U15 (.Y(n15), 
	.A(prescale[2]));
   INVX2M U16 (.Y(n14), 
	.A(prescale[5]));
   NOR4X1M U17 (.Y(i_div_ratio[3]), 
	.D(prescale[4]), 
	.C(prescale[5]), 
	.B(prescale[3]), 
	.A(n5));
   NAND3X2M U18 (.Y(n5), 
	.C(prescale[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U19 (.Y(n17), 
	.A(prescale[0]));
   INVX2M U20 (.Y(n16), 
	.A(prescale[1]));
   OAI211X2M U21 (.Y(i_div_ratio[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U22 (.Y(n8), 
	.D(n15), 
	.C(prescale[3]), 
	.B(prescale[4]), 
	.A(prescale[5]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(i_div_ratio[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(i_div_ratio[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(i_div_ratio[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(i_div_ratio[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module SYS_CTRL_ALU_width16_func_WIDTH4_addr_width4_DATA_WIDTH8_test_1 (
	ALU_OUT, 
	out_valid, 
	CLK, 
	RST, 
	RX_D_VLD, 
	RX_P_DATA, 
	RdData, 
	RdData_vld, 
	FIFO_FULL, 
	CLK_EN, 
	ALU_EN, 
	ALU_FUN, 
	addr, 
	WrEn, 
	RdEn, 
	WrData, 
	Tx_P_DATA, 
	Tx_D_VLD, 
	clk_div_en, 
	test_si, 
	test_so, 
	test_se, 
	CLK_M_RF__L6_N7);
   input [15:0] ALU_OUT;
   input out_valid;
   input CLK;
   input RST;
   input RX_D_VLD;
   input [7:0] RX_P_DATA;
   input [7:0] RdData;
   input RdData_vld;
   input FIFO_FULL;
   output CLK_EN;
   output ALU_EN;
   output [3:0] ALU_FUN;
   output [3:0] addr;
   output WrEn;
   output RdEn;
   output [7:0] WrData;
   output [7:0] Tx_P_DATA;
   output Tx_D_VLD;
   output clk_div_en;
   input test_si;
   output test_so;
   input test_se;
   input CLK_M_RF__L6_N7;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n22;
   wire n23;
   wire n24;
   wire n26;
   wire n28;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n55;
   wire n57;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n70;
   wire n72;
   wire n74;
   wire n76;
   wire n25;
   wire n27;
   wire n29;
   wire n35;
   wire n36;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n54;
   wire n56;
   wire n58;
   wire n59;
   wire n68;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire [3:0] current;
   wire [3:0] next;
   wire [3:0] Store;

   assign test_so = current[3] ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M \Store_reg[3]  (.SI(Store[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Store[3]), 
	.D(n76), 
	.CK(CLK));
   SDFFRQX2M \Store_reg[2]  (.SI(Store[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Store[2]), 
	.D(n74), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \Store_reg[1]  (.SI(Store[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Store[1]), 
	.D(n72), 
	.CK(CLK_M_RF__L6_N7));
   SDFFRQX2M \Store_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Store[0]), 
	.D(n70), 
	.CK(CLK));
   SDFFRQX2M \current_reg[0]  (.SI(Store[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[0]), 
	.D(next[0]), 
	.CK(CLK));
   SDFFRQX2M \current_reg[2]  (.SI(current[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[2]), 
	.D(next[2]), 
	.CK(CLK));
   SDFFRQX2M \current_reg[3]  (.SI(current[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[3]), 
	.D(next[3]), 
	.CK(CLK));
   SDFFRQX2M \current_reg[1]  (.SI(current[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current[1]), 
	.D(next[1]), 
	.CK(CLK));
   NOR3BX2M U5 (.Y(n28), 
	.C(current[2]), 
	.B(current[1]), 
	.AN(n39));
   OAI221X1M U6 (.Y(addr[0]), 
	.C0(n11), 
	.B1(n56), 
	.B0(n50), 
	.A1(n51), 
	.A0(n83));
   OAI22X1M U7 (.Y(addr[2]), 
	.B1(n51), 
	.B0(n81), 
	.A1(n48), 
	.A0(n50));
   OAI22X1M U8 (.Y(addr[3]), 
	.B1(n47), 
	.B0(n50), 
	.A1(n38), 
	.A0(n49));
   OAI22X1M U9 (.Y(addr[1]), 
	.B1(n51), 
	.B0(n82), 
	.A1(n54), 
	.A0(n50));
   OAI22X1M U10 (.Y(ALU_FUN[2]), 
	.B1(n35), 
	.B0(n81), 
	.A1(n48), 
	.A0(n67));
   OAI22X1M U11 (.Y(ALU_FUN[1]), 
	.B1(n35), 
	.B0(n82), 
	.A1(n54), 
	.A0(n67));
   OAI22X1M U12 (.Y(ALU_FUN[0]), 
	.B1(n35), 
	.B0(n83), 
	.A1(n56), 
	.A0(n67));
   INVX2M U13 (.Y(n27), 
	.A(WrEn));
   INVX2M U14 (.Y(n35), 
	.A(n33));
   NOR2X2M U15 (.Y(n67), 
	.B(n43), 
	.A(ALU_EN));
   NOR2X2M U16 (.Y(WrEn), 
	.B(n55), 
	.A(n58));
   INVX2M U17 (.Y(n25), 
	.A(FIFO_FULL));
   NOR2X2M U18 (.Y(n33), 
	.B(n9), 
	.A(n58));
   NOR2X2M U19 (.Y(n49), 
	.B(n41), 
	.A(n28));
   NAND2BX2M U20 (.Y(n51), 
	.B(RX_D_VLD), 
	.AN(n49));
   NAND2X2M U21 (.Y(n11), 
	.B(n6), 
	.A(n39));
   AND2X2M U22 (.Y(n50), 
	.B(n23), 
	.A(n52));
   INVX2M U23 (.Y(n41), 
	.A(n53));
   NOR2X2M U24 (.Y(WrData[0]), 
	.B(n27), 
	.A(n83));
   NOR2X2M U25 (.Y(WrData[1]), 
	.B(n27), 
	.A(n82));
   NOR2X2M U26 (.Y(WrData[2]), 
	.B(n27), 
	.A(n81));
   NOR2X2M U27 (.Y(WrData[4]), 
	.B(n27), 
	.A(n68));
   NOR2X2M U28 (.Y(WrData[7]), 
	.B(n27), 
	.A(n59));
   NOR2X2M U29 (.Y(RdEn), 
	.B(n58), 
	.A(n53));
   AND3X2M U30 (.Y(n55), 
	.C(n52), 
	.B(n30), 
	.A(n11));
   INVX2M U31 (.Y(n58), 
	.A(RX_D_VLD));
   OA21X2M U32 (.Y(n8), 
	.B0(n24), 
	.A1(n23), 
	.A0(n22));
   NOR2X2M U33 (.Y(n22), 
	.B(n84), 
	.A(FIFO_FULL));
   INVX2M U34 (.Y(n43), 
	.A(n1));
   NAND4X2M U35 (.Y(next[2]), 
	.D(n10), 
	.C(n9), 
	.B(n3), 
	.A(n8));
   NOR3BX2M U36 (.Y(n10), 
	.C(n29), 
	.B(RdEn), 
	.AN(n11));
   NAND3X2M U37 (.Y(next[0]), 
	.C(n32), 
	.B(n24), 
	.A(n31));
   AOI32X1M U38 (.Y(n31), 
	.B1(n58), 
	.B0(n39), 
	.A2(n20), 
	.A1(n68), 
	.A0(n83));
   NOR4X1M U39 (.Y(n32), 
	.D(n28), 
	.C(n29), 
	.B(ALU_EN), 
	.A(n33));
   INVX2M U40 (.Y(ALU_EN), 
	.A(n14));
   OA21X2M U41 (.Y(n24), 
	.B0(n34), 
	.A1(n25), 
	.A0(n1));
   NAND4X2M U42 (.Y(n34), 
	.D(n68), 
	.C(n83), 
	.B(n16), 
	.A(n15));
   AOI21X2M U43 (.Y(n9), 
	.B0(n7), 
	.A1(n5), 
	.A0(n6));
   NOR2X2M U44 (.Y(WrData[3]), 
	.B(n38), 
	.A(n55));
   OAI22X1M U45 (.Y(n70), 
	.B1(n56), 
	.B0(RX_D_VLD), 
	.A1(n83), 
	.A0(n58));
   OAI22X1M U46 (.Y(n72), 
	.B1(n54), 
	.B0(RX_D_VLD), 
	.A1(n82), 
	.A0(n58));
   OAI22X1M U47 (.Y(n74), 
	.B1(n48), 
	.B0(RX_D_VLD), 
	.A1(n81), 
	.A0(n58));
   OAI211X2M U48 (.Y(next[3]), 
	.C0(n4), 
	.B0(n3), 
	.A1(n25), 
	.A0(n1));
   AOI31X2M U49 (.Y(n4), 
	.B0(n7), 
	.A2(RX_D_VLD), 
	.A1(n6), 
	.A0(n5));
   AND3X2M U50 (.Y(n15), 
	.C(n45), 
	.B(n46), 
	.A(n5));
   OAI21X2M U51 (.Y(n76), 
	.B0(n38), 
	.A1(n47), 
	.A0(RX_D_VLD));
   INVX2M U52 (.Y(n42), 
	.A(n23));
   INVX2M U53 (.Y(n29), 
	.A(n30));
   OAI22X2M U54 (.Y(ALU_FUN[3]), 
	.B1(n38), 
	.B0(n9), 
	.A1(n47), 
	.A0(n67));
   INVX2M U55 (.Y(CLK_EN), 
	.A(n67));
   NOR2X2M U56 (.Y(n39), 
	.B(current[3]), 
	.A(n36));
   INVX2M U57 (.Y(n36), 
	.A(current[0]));
   NOR2X2M U58 (.Y(n6), 
	.B(current[1]), 
	.A(n45));
   NOR2X2M U59 (.Y(n5), 
	.B(current[0]), 
	.A(current[3]));
   NAND3X2M U60 (.Y(n23), 
	.C(current[1]), 
	.B(current[2]), 
	.A(n5));
   NAND3X2M U61 (.Y(n53), 
	.C(current[1]), 
	.B(n45), 
	.A(n5));
   NAND3X2M U62 (.Y(n52), 
	.C(n39), 
	.B(n45), 
	.A(current[1]));
   INVX2M U63 (.Y(n45), 
	.A(current[2]));
   INVX2M U64 (.Y(n83), 
	.A(RX_P_DATA[0]));
   INVX2M U66 (.Y(n82), 
	.A(RX_P_DATA[1]));
   INVX2M U67 (.Y(n54), 
	.A(Store[1]));
   INVX2M U68 (.Y(n56), 
	.A(Store[0]));
   OAI2B2X1M U69 (.Y(Tx_D_VLD), 
	.B1(n23), 
	.B0(n84), 
	.A1N(out_valid), 
	.A0(n67));
   NAND2X2M U70 (.Y(n38), 
	.B(RX_D_VLD), 
	.A(RX_P_DATA[3]));
   NAND4X2M U71 (.Y(n1), 
	.D(current[2]), 
	.C(current[3]), 
	.B(current[0]), 
	.A(current[1]));
   NAND3X2M U72 (.Y(n14), 
	.C(current[0]), 
	.B(n6), 
	.A(current[3]));
   NAND3X2M U73 (.Y(n30), 
	.C(n39), 
	.B(current[2]), 
	.A(current[1]));
   AND4X2M U74 (.Y(n16), 
	.D(n37), 
	.C(RX_P_DATA[7]), 
	.B(RX_P_DATA[2]), 
	.A(RX_P_DATA[6]));
   NOR3X2M U75 (.Y(n37), 
	.C(RX_P_DATA[1]), 
	.B(RX_P_DATA[5]), 
	.A(n38));
   NAND4X2M U76 (.Y(next[1]), 
	.D(n19), 
	.C(n18), 
	.B(n8), 
	.A(n17));
   AOI31X2M U77 (.Y(n18), 
	.B0(n41), 
	.A2(n20), 
	.A1(RX_P_DATA[0]), 
	.A0(RX_P_DATA[4]));
   NAND3X2M U78 (.Y(n19), 
	.C(out_valid), 
	.B(n25), 
	.A(ALU_EN));
   AOI22X1M U79 (.Y(n17), 
	.B1(RX_D_VLD), 
	.B0(n28), 
	.A1(n58), 
	.A0(n26));
   INVX2M U80 (.Y(n81), 
	.A(RX_P_DATA[2]));
   AND2X2M U81 (.Y(WrData[5]), 
	.B(WrEn), 
	.A(RX_P_DATA[5]));
   AND2X2M U82 (.Y(WrData[6]), 
	.B(WrEn), 
	.A(RX_P_DATA[6]));
   INVX2M U83 (.Y(n47), 
	.A(Store[3]));
   INVX2M U84 (.Y(n48), 
	.A(Store[2]));
   INVX2M U85 (.Y(n84), 
	.A(RdData_vld));
   OAI31X1M U86 (.Y(n26), 
	.B0(n30), 
	.A2(current[2]), 
	.A1(current[3]), 
	.A0(n46));
   OAI2BB1X2M U87 (.Y(Tx_P_DATA[0]), 
	.B0(n66), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[0]));
   AOI22X1M U88 (.Y(n66), 
	.B1(n43), 
	.B0(ALU_OUT[8]), 
	.A1(n42), 
	.A0(RdData[0]));
   OAI2BB1X2M U89 (.Y(Tx_P_DATA[1]), 
	.B0(n65), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[1]));
   AOI22X1M U90 (.Y(n65), 
	.B1(n43), 
	.B0(ALU_OUT[9]), 
	.A1(n42), 
	.A0(RdData[1]));
   OAI2BB1X2M U91 (.Y(Tx_P_DATA[2]), 
	.B0(n64), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[2]));
   AOI22X1M U92 (.Y(n64), 
	.B1(n43), 
	.B0(ALU_OUT[10]), 
	.A1(n42), 
	.A0(RdData[2]));
   OAI2BB1X2M U93 (.Y(Tx_P_DATA[3]), 
	.B0(n63), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[3]));
   AOI22X1M U94 (.Y(n63), 
	.B1(n43), 
	.B0(ALU_OUT[11]), 
	.A1(n42), 
	.A0(RdData[3]));
   OAI2BB1X2M U95 (.Y(Tx_P_DATA[4]), 
	.B0(n62), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[4]));
   AOI22X1M U96 (.Y(n62), 
	.B1(n43), 
	.B0(ALU_OUT[12]), 
	.A1(n42), 
	.A0(RdData[4]));
   OAI2BB1X2M U97 (.Y(Tx_P_DATA[5]), 
	.B0(n61), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[5]));
   AOI22X1M U98 (.Y(n61), 
	.B1(n43), 
	.B0(ALU_OUT[13]), 
	.A1(n42), 
	.A0(RdData[5]));
   OAI2BB1X2M U99 (.Y(Tx_P_DATA[6]), 
	.B0(n60), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[6]));
   AOI22X1M U100 (.Y(n60), 
	.B1(n43), 
	.B0(ALU_OUT[14]), 
	.A1(n42), 
	.A0(RdData[6]));
   OAI2BB1X2M U101 (.Y(Tx_P_DATA[7]), 
	.B0(n57), 
	.A1N(ALU_EN), 
	.A0N(ALU_OUT[7]));
   AOI22X1M U102 (.Y(n57), 
	.B1(n43), 
	.B0(ALU_OUT[15]), 
	.A1(n42), 
	.A0(RdData[7]));
   AND3X2M U103 (.Y(n7), 
	.C(current[3]), 
	.B(n36), 
	.A(n6));
   INVX2M U104 (.Y(n68), 
	.A(RX_P_DATA[4]));
   INVX2M U105 (.Y(n46), 
	.A(current[1]));
   INVX2M U106 (.Y(n59), 
	.A(RX_P_DATA[7]));
   AND4X2M U107 (.Y(n20), 
	.D(n40), 
	.C(RX_P_DATA[5]), 
	.B(n15), 
	.A(RX_P_DATA[1]));
   NOR4X1M U116 (.Y(n40), 
	.D(n59), 
	.C(n38), 
	.B(RX_P_DATA[2]), 
	.A(RX_P_DATA[6]));
   AND2X2M U117 (.Y(n3), 
	.B(n14), 
	.A(n13));
   NAND4X2M U118 (.Y(n13), 
	.D(n16), 
	.C(n15), 
	.B(RX_P_DATA[0]), 
	.A(RX_P_DATA[4]));
   INVX2M U3 (.Y(clk_div_en), 
	.A(LTIE_LTIELO_NET));
endmodule

