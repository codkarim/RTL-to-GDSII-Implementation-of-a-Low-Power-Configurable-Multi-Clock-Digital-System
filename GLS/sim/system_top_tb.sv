`timescale 1ns/1ps
module system_top_tb ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter ref_clk_period  = 12.5;			//80 Mhz
parameter UART_clk_period = 271.2674;   // 3.6864 MHz

parameter DATA_WIDTH_TB = 8;
parameter RF_DEPTH = 16;
parameter ALU_WIDTH_TB  = 16;
parameter ADDR_WIDTH_TB = 4;

parameter WR_CMD  = 8'haa ;   
parameter RD_CMD  = 8'hbb ;   

parameter ALU_WOP_CMD  = 8'hcc ;   
parameter ALU_WNOP_CMD = 8'hdd ; 

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

reg			REF_CLK_TB;
reg			UART_CLK_TB;
reg			RST_TB;
reg			RX_IN_TB;
reg [3:0] 	SI;
reg 		SE;
reg 		scan_clk;
reg 		scan_rst;
reg 		test_mode;
reg [3:0] 	SO;
wire		TX_OUT_TB;
wire		framing_error_TB;
wire		parity_error_TB;

/////////////////////////////////////////////////////////
//////////////////// GLS Signals ////////////////////////
/////////////////////////////////////////////////////////

wire [DATA_WIDTH_TB-1:0] reg_arr [RF_DEPTH-1:0];

assign reg_arr[0] = {DUT.operand_A[7], DUT.operand_A[6], DUT.operand_A[5], DUT.operand_A[4], DUT.operand_A[3], DUT.operand_A[2], DUT.operand_A[1], DUT.operand_A[0]};

assign reg_arr[1] = {DUT.operand_B[7], DUT.operand_B[6], DUT.operand_B[5], DUT.operand_B[4], DUT.operand_B[3], DUT.operand_B[2], DUT.operand_B[1], DUT.operand_B[0]};

assign reg_arr[2] = {DUT.UART_config[7], DUT.UART_config[6], DUT.UART_config[5], DUT.UART_config[4], DUT.UART_config[3], DUT.UART_config[2], DUT.UART_config[1], DUT.UART_config[0]};

assign reg_arr[3] = {DUT.DIV_RATIO[7], DUT.DIV_RATIO[6], DUT.DIV_RATIO[5], DUT.DIV_RATIO[4], DUT.DIV_RATIO[3], DUT.DIV_RATIO[2], DUT.DIV_RATIO[1], DUT.DIV_RATIO[0]};

assign reg_arr[4] = {
    DUT.U0_regfile.\memory[4][7] ,
    DUT.U0_regfile.\memory[4][6] ,
    DUT.U0_regfile.\memory[4][5] ,
    DUT.U0_regfile.\memory[4][4] ,
    DUT.U0_regfile.\memory[4][3] ,
    DUT.U0_regfile.\memory[4][2] ,
    DUT.U0_regfile.\memory[4][1] ,
    DUT.U0_regfile.\memory[4][0] };

assign reg_arr[5] = {
    DUT.U0_regfile.\memory[5][7] ,
    DUT.U0_regfile.\memory[5][6] ,
    DUT.U0_regfile.\memory[5][5] ,
    DUT.U0_regfile.\memory[5][4] ,
    DUT.U0_regfile.\memory[5][3] ,
    DUT.U0_regfile.\memory[5][2] ,
    DUT.U0_regfile.\memory[5][1] ,
    DUT.U0_regfile.\memory[5][0] };

assign reg_arr[6] = {
    DUT.U0_regfile.\memory[6][7] ,
    DUT.U0_regfile.\memory[6][6] ,
    DUT.U0_regfile.\memory[6][5] ,
    DUT.U0_regfile.\memory[6][4] ,
    DUT.U0_regfile.\memory[6][3] ,
    DUT.U0_regfile.\memory[6][2] ,
    DUT.U0_regfile.\memory[6][1] ,
    DUT.U0_regfile.\memory[6][0] };

assign reg_arr[7] = {
    DUT.U0_regfile.\memory[7][7] ,
    DUT.U0_regfile.\memory[7][6] ,
    DUT.U0_regfile.\memory[7][5] ,
    DUT.U0_regfile.\memory[7][4] ,
    DUT.U0_regfile.\memory[7][3] ,
    DUT.U0_regfile.\memory[7][2] ,
    DUT.U0_regfile.\memory[7][1] ,
    DUT.U0_regfile.\memory[7][0] };

assign reg_arr[8] = {
    DUT.U0_regfile.\memory[8][7] ,
    DUT.U0_regfile.\memory[8][6] ,
    DUT.U0_regfile.\memory[8][5] ,
    DUT.U0_regfile.\memory[8][4] ,
    DUT.U0_regfile.\memory[8][3] ,
    DUT.U0_regfile.\memory[8][2] ,
    DUT.U0_regfile.\memory[8][1] ,
    DUT.U0_regfile.\memory[8][0] };

assign reg_arr[9] = {
    DUT.U0_regfile.\memory[9][7] ,
    DUT.U0_regfile.\memory[9][6] ,
    DUT.U0_regfile.\memory[9][5] ,
    DUT.U0_regfile.\memory[9][4] ,
    DUT.U0_regfile.\memory[9][3] ,
    DUT.U0_regfile.\memory[9][2] ,
    DUT.U0_regfile.\memory[9][1] ,
    DUT.U0_regfile.\memory[9][0] };

assign reg_arr[10] = {
    DUT.U0_regfile.\memory[10][7] ,
    DUT.U0_regfile.\memory[10][6] ,
    DUT.U0_regfile.\memory[10][5] ,
    DUT.U0_regfile.\memory[10][4] ,
    DUT.U0_regfile.\memory[10][3] ,
    DUT.U0_regfile.\memory[10][2] ,
    DUT.U0_regfile.\memory[10][1] ,
    DUT.U0_regfile.\memory[10][0] };

assign reg_arr[11] = {
    DUT.U0_regfile.\memory[11][7] ,
    DUT.U0_regfile.\memory[11][6] ,
    DUT.U0_regfile.\memory[11][5] ,
    DUT.U0_regfile.\memory[11][4] ,
    DUT.U0_regfile.\memory[11][3] ,
    DUT.U0_regfile.\memory[11][2] ,
    DUT.U0_regfile.\memory[11][1] ,
    DUT.U0_regfile.\memory[11][0] };

assign reg_arr[12] = {
    DUT.U0_regfile.\memory[12][7] ,
    DUT.U0_regfile.\memory[12][6] ,
    DUT.U0_regfile.\memory[12][5] ,
    DUT.U0_regfile.\memory[12][4] ,
    DUT.U0_regfile.\memory[12][3] ,
    DUT.U0_regfile.\memory[12][2] ,
    DUT.U0_regfile.\memory[12][1] ,
    DUT.U0_regfile.\memory[12][0] };

assign reg_arr[13] = {
    DUT.U0_regfile.\memory[13][7] ,
    DUT.U0_regfile.\memory[13][6] ,
    DUT.U0_regfile.\memory[13][5] ,
    DUT.U0_regfile.\memory[13][4] ,
    DUT.U0_regfile.\memory[13][3] ,
    DUT.U0_regfile.\memory[13][2] ,
    DUT.U0_regfile.\memory[13][1] ,
    DUT.U0_regfile.\memory[13][0] };

assign reg_arr[14] = {
    DUT.U0_regfile.\memory[14][7] ,
    DUT.U0_regfile.\memory[14][6] ,
    DUT.U0_regfile.\memory[14][5] ,
    DUT.U0_regfile.\memory[14][4] ,
    DUT.U0_regfile.\memory[14][3] ,
    DUT.U0_regfile.\memory[14][2] ,
    DUT.U0_regfile.\memory[14][1] ,
    DUT.U0_regfile.\memory[14][0] };

assign reg_arr[15] = {
    DUT.U0_regfile.\memory[15][7] ,
    DUT.U0_regfile.\memory[15][6] ,
    DUT.U0_regfile.\memory[15][5] ,
    DUT.U0_regfile.\memory[15][4] ,
    DUT.U0_regfile.\memory[15][3] ,
    DUT.U0_regfile.\memory[15][2] ,
    DUT.U0_regfile.\memory[15][1] ,
    DUT.U0_regfile.\memory[15][0] };
////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////

initial
 begin
	$dumpfile("system_top_tb.vcd");	// waveforms in this file
	$dumpvars;						// saves all waveforms
	initialize();
	reset();

	$monitor("###################### Test Configurations ---> PARITY_ENABLE = %0d PARITY_TYPE = %0d  PRESCALE = %p ######################",reg_arr[2][0],reg_arr[2][1],reg_arr[2][7:2]);		
////////////////--- Configuration 1 --- //////////////////
////////////////    PRESCALE : 32       //////////////////
////////////////    Parity   : Enabled  //////////////////
////////////////    TYPE     : EVEN     //////////////////

/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h06 & Data: 8'hA5)
	SEND_WR_CMD(8'h06,8'hA5);
	
//Check Write Operation
	CHECK_WR(8'h06,8'hA5);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h02)
	SEND_RD_CMD(8'h02);
 
// Check Read Operation
	CHECK_RD(8'h02);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Addition)
	SEND_ALU_WOP_CMD(8'd100,8'd50,8'd0) ;
 
// Check ALU Command
	CHECK_ALU(8'd0);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = Subtracion)
	SEND_ALU_WNOP_CMD(8'd1) ;
 
// Check ALU Command
	CHECK_ALU(8'd1);
/*
////////////////--- Configuration 2 --- //////////////////
////////////////    PRESCALE : 32       //////////////////
////////////////    Parity   : Enabled  //////////////////
////////////////    TYPE     : ODD      //////////////////
	
// to change Configuration register	
	SEND_WR_CMD(8'h02,8'h83);
	
/////////////////////  WRITE Operation  ///////////////////////
//Send Write Command (Address:8'h07 & Data: 8'h8f)
	SEND_WR_CMD(8'h07,8'h8f);
//Check Write Operation
	CHECK_WR(8'h07,8'h8f);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h06)
	SEND_RD_CMD(8'h06);
 
// Check Read Operation
	CHECK_RD(8'h06);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Multiplication)
	SEND_ALU_WOP_CMD(8'd100,8'd50,8'd2) ;
 
// Check ALU Command
	CHECK_ALU(8'd2);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = Division)
	SEND_ALU_WNOP_CMD(8'd3);
 
// Check ALU Command
	CHECK_ALU(8'd3);

////////////////--- Configuration 3 --- //////////////////
////////////////    PRESCALE : 32       //////////////////
////////////////    Parity   : Disabled //////////////////
////////////////    TYPE     : None	    //////////////////

// to change Configuration register		
	SEND_WR_CMD(8'h02,8'h80);
	
/////////////////////  WRITE Operation  ///////////////////////
//Send Write Command (Address:8'h08 & Data: 8'h72)
	SEND_WR_CMD(8'h08,8'h72);
//Check Write Operation
	CHECK_WR(8'h08,8'h72);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h07)
	SEND_RD_CMD(8'h07);
 
// Check Read Operation
	CHECK_RD(8'h07);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 0 & FUNC = AND OPERATION)
	SEND_ALU_WOP_CMD(8'd100,8'd0,8'd4) ;
 
// Check ALU Command
	CHECK_ALU(8'd4);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = OR OPERATION)
	SEND_ALU_WNOP_CMD(8'd5) ;
 
// Check ALU Command
	CHECK_ALU(8'd5);

		
////////////////--- Configuration 4 --- //////////////////
////////////////    PRESCALE : 16       //////////////////
////////////////    Parity   : Enabled  //////////////////
////////////////    TYPE     : EVEN     //////////////////

	SEND_WR_CMD(8'h02,8'h41);
	
/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h09 & Data: 8'h64)
	SEND_WR_CMD(8'h09,8'h64);
//Check Write Operation
	CHECK_WR(8'h09,8'h64);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h08)
	SEND_RD_CMD(8'h08);
 
// Check Read Operation
	CHECK_RD(8'h08);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 0 & FUNC = NAND OPERATION)
	SEND_ALU_WOP_CMD(8'd100,8'd0,8'd6) ;
 
// Check ALU Command
	CHECK_ALU(8'd6);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = NOR OPERATION)
	SEND_ALU_WNOP_CMD(8'd7) ;
 
// Check ALU Command
	CHECK_ALU(8'd7);

////////////////--- Configuration 5 --- //////////////////
////////////////    PRESCALE : 16       //////////////////
////////////////    Parity   : Enabled  //////////////////
////////////////    TYPE     : ODD      //////////////////

	SEND_WR_CMD(8'h02,8'h43);
	
/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h0a & Data: 8'h10)
	SEND_WR_CMD(8'h0a,8'h10);
//Check Write Operation
	CHECK_WR(8'h0a,8'h10);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h09)
	SEND_RD_CMD(8'h09) ;
 
// Check Read Operation
	CHECK_RD(8'h09);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 0 & FUNC = XOR OPERATION)
	SEND_ALU_WOP_CMD(8'd100,8'd0,8'd8) ;
 
// Check ALU Command
	CHECK_ALU(8'd8);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = XNOR OPERATION)
	SEND_ALU_WNOP_CMD(8'd9) ;
 
// Check ALU Command
	CHECK_ALU(8'd9);

////////////////--- Configuration 6 --- //////////////////
////////////////    PRESCALE : 16       //////////////////
////////////////    Parity   : Disabled //////////////////
////////////////    TYPE     : None	    //////////////////
	
	SEND_WR_CMD(8'h02,8'h40);
	
/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h0b & Data: 8'h21)
	SEND_WR_CMD(8'h0b,8'h21);
//Check Write Operation
	CHECK_WR(8'h0b,8'h21);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h0a)
	SEND_RD_CMD(8'h0a) ;
 
// Check Read Operation
	CHECK_RD(8'h0a);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = EQUAL OPERATION)
	SEND_ALU_WOP_CMD(8'd100,8'd50,8'd10) ;
 
// Check ALU Command
	CHECK_ALU(8'd10);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = "GREATER THAN" OPERATION)
	SEND_ALU_WNOP_CMD(8'd11) ;
 
// Check ALU Command
	CHECK_ALU(8'd11);

		
////////////////--- Configuration 7 --- //////////////////
////////////////    PRESCALE : 8       `//////////////////
////////////////    Parity   : Enabled  //////////////////
////////////////    TYPE     : EVEN     //////////////////

	SEND_WR_CMD(8'h02,8'h21);
	
/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h0c & Data: 8'h30)
	SEND_WR_CMD(8'h0c,8'h30);
 //Check Write Operation
	CHECK_WR(8'h0c,8'h30);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h0b)
	SEND_RD_CMD(8'h0b) ;
 
// Check Read Operation
	CHECK_RD(8'h0b);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = "SMALLER THAN" OPERATION)
	SEND_ALU_WOP_CMD(8'd100,8'd50,8'd12) ;
 
// Check ALU Command
	CHECK_ALU(8'd12);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = SHIFT RIGHT TO OPERAND A)
	SEND_ALU_WNOP_CMD(8'd13) ;
 
// Check ALU Command
	CHECK_ALU(8'd13);

////////////////--- Configuration 8 ---	//////////////////
////////////////    PRESCALE : 8       	//////////////////
////////////////    Parity   : Enabled  //////////////////
////////////////    TYPE     : ODD      //////////////////

	SEND_WR_CMD(8'h02,8'h23);
	
/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h0d & Data: 8'h50)
	SEND_WR_CMD(8'h0d,8'h50);
//Check Write Operation
	CHECK_WR(8'h0d,8'h50);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h0c)
	SEND_RD_CMD(8'h0c) ;
 
// Check Read Operation
	CHECK_RD(8'h0c);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = SHIFT LEFT TO OPERAN A)
	SEND_ALU_WOP_CMD(8'd100,8'd50,8'd14) ;
 
// Check ALU Command
	CHECK_ALU(8'd14);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = NOP)
	SEND_ALU_WNOP_CMD(8'd15) ;
 
// Check ALU Command
	CHECK_ALU(8'd15);

////////////////--- Configuration 9 --- //////////////////
////////////////    PRESCALE : 8        //////////////////
////////////////    Parity   : Disabled //////////////////
////////////////    TYPE     : None	    //////////////////

	SEND_WR_CMD(8'h02,8'h20);
	
/////////////////////  WRITE Operation  ///////////////////////

//Send Write Command (Address:8'h0e & Data: 8'h81)
	SEND_WR_CMD(8'h0e,8'h81);
//Check Write Operation
	CHECK_WR(8'h0e,8'h81);
	
/////////////////////  Read Operation  ///////////////////////
 
// Send Read Command (Address:8'h0d)
	SEND_RD_CMD(8'h0d) ;
 
// Check Read Operation
	CHECK_RD(8'h0d);

/////////////////////  ALU Operation With Operand ///////////////////////

// Send ALU WOP Command (OP_A = 25 & OP_B = 75 & FUNC = Addition)
	SEND_ALU_WOP_CMD(8'd75,8'd25,8'd0) ;
 
// Check ALU Command
	CHECK_ALU(8'd0);
  
/////////////////////  ALU Operation WITH No Operand ////////////////////
	
// Send ALU WNOP Command (FUNC = Subtracion)
	SEND_ALU_WNOP_CMD(8'd1) ;
 
// Check ALU Command
	CHECK_ALU(8'd1);
 */ 
	#2000
	$stop;	
 end

////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize;
	begin
		REF_CLK_TB  = 1'b0;
		UART_CLK_TB = 1'b0;
		RX_IN_TB    = 1'b1;
		
	 	SI = 'b0;
		SE = 'b0;
		scan_clk  = 'b0;
		scan_rst  = 'b0;
		test_mode = 'b0;
	end
endtask

///////////////////////// RESET /////////////////////////
task reset;
	begin
		RST_TB = 1'b0;
		#ref_clk_period
		RST_TB = 1'b1;
		#ref_clk_period;
	end
endtask


///////////////////// Receive_TX_Frame ////////////////////
task TX_Frame;
	input		reg		[DATA_WIDTH_TB-1:0]		FRAME;		
	
	integer	 i;
	
	begin	
		@(posedge DUT.U0_UART.TX_CLK)	
		RX_IN_TB <= 1'b0;					//start bit
				
		for	(i=0;i<DATA_WIDTH_TB;i=i+1)
			begin
				@(posedge DUT.U0_UART.TX_CLK)	
				RX_IN_TB <= FRAME[i]; 		//data bits
			end
		if(reg_arr[2][0])
		begin	
			@(posedge DUT.U0_UART.TX_CLK) 
			case(reg_arr[2][1]) 	
			 1'b0 : RX_IN_TB <= ^FRAME ; 	//caculate even parity
			 1'b1 : RX_IN_TB <= ~^FRAME;    //caculate odd  parity
			endcase 
		end
		@(posedge DUT.U0_UART.TX_CLK)	
		RX_IN_TB <= 1'b1;					//stop bit	
	end
endtask

//////////////////  write operation commands ////////////////////
task SEND_WR_CMD;
input  [DATA_WIDTH_TB-1:0]  ADDR ;
input  [DATA_WIDTH_TB-1:0]  DATA ;
	begin
	// Load Write Command
		TX_Frame(WR_CMD);
		
	// Load Write Address	
		@(posedge DUT.U0_ctrl.RX_D_VLD) //wait RX data valid to asserted
		TX_Frame(ADDR);	
		
	// Load Write Data	
		@(posedge DUT.U0_ctrl.RX_D_VLD)
		TX_Frame(DATA);		
	end
endtask

//////////////////  read operation commands ////////////////////
task SEND_RD_CMD;
input  [DATA_WIDTH_TB-1:0]  ADDR ;
	begin
		TX_Frame(RD_CMD);	// Load Read Command
		TX_Frame(ADDR);		// Load Read Address
	end
endtask

//////////////////  ALU operation  with operand commands //////////////
task SEND_ALU_WOP_CMD;
input  [DATA_WIDTH_TB-1:0]  OP_A ;
input  [DATA_WIDTH_TB-1:0]  OP_B ;
input  [DATA_WIDTH_TB-1:0]  FUNC ;
	begin
		TX_Frame(ALU_WOP_CMD);	// Load ALU_WOP Command
		TX_Frame(OP_A);			// Load Operand A
		TX_Frame(OP_B);			// Load Operand B
		TX_Frame(FUNC);			// Load ALU Function
	end
endtask


//////////////////  ALU operation  with No operand commands //////////////
task SEND_ALU_WNOP_CMD;
input  [DATA_WIDTH_TB-1:0]  FUNC ;
	begin
		TX_Frame(ALU_WNOP_CMD);	// Load ALU_WNOP Command
		TX_Frame(FUNC);			// Load ALU Function
	end
endtask

//////////////// Check Write Operation /////////////////
task CHECK_WR ;
input  [DATA_WIDTH_TB-1:0]  ADDR ;
input  [DATA_WIDTH_TB-1:0]  DATA ;

begin
	wait(DUT.U0_regfile.WrEn)
	repeat(2) @(posedge REF_CLK_TB);
	
	if(reg_arr[ADDR[ADDR_WIDTH_TB-1:0]] == DATA)
		begin
			$display("Write Operation with Data = %h of Address = %0d is Succeeded at time = %0d",DATA,ADDR,$time);
			$display("									");
		end	
	else
		begin
			$display("Write Operation with Data = %h of Address = %0d is Failed at time = %0d",DATA,ADDR,$time);
			$display("									");
		end	
end

endtask

//////////////// Check Read Operation /////////////////
task CHECK_RD ;
input  [DATA_WIDTH_TB-1:0]  ADDR ;

reg 	[10:0]	result,expec_out;
reg				parity_bit;

integer	k;
	
	begin	
		@(posedge DUT.U0_UART.TX_OUT_V)		//Wait TX_busy to activate
			for (k=0;k<11;k=k+1)
				begin	
					@(negedge DUT.U0_UART.TX_CLK) result[k] = TX_OUT_TB;  
				end		
				
		if (reg_arr[2][0])
			begin
				case(reg_arr[2][1]) 	
					1'b0 : parity_bit = ^ reg_arr[ADDR[ADDR_WIDTH_TB-1:0]]; 	//caculate even parity
					1'b1 : parity_bit = ~^reg_arr[ADDR[ADDR_WIDTH_TB-1:0]];   //caculate odd  parity
				endcase
			end
		else
				parity_bit = 1'b1;
		
		
		if (reg_arr[2][0])			
			expec_out = {1'b1,parity_bit,reg_arr[ADDR[ADDR_WIDTH_TB-1:0]],1'b0};		
		else
			expec_out = {1'b1,1'b1,reg_arr[ADDR[ADDR_WIDTH_TB-1:0]],1'b0};
			
			
		if (result == expec_out)
			begin
				$display("read Operation with Data = %h of Address = %0d is Succeeded at time = %0d",reg_arr[ADDR[ADDR_WIDTH_TB-1:0]],ADDR,$time);
				$display("									");
			end	
		else
			begin
				$display("read Operation with Data = %h of Address = %0d is Failed at time = %0d",reg_arr[ADDR[ADDR_WIDTH_TB-1:0]],ADDR,$time);
				$display("									");
			end	
	end		
endtask

//////////////// Check ALU Operation /////////////////
task CHECK_ALU ;
 input  [DATA_WIDTH_TB-1:0]  	FUNCTION;
 
 reg 	[10:0]	result_0,expec_out_0;
 reg 	[10:0]	result_1,expec_out_1;
 
 reg				parity_bit_0,parity_bit_1;
 
 reg    [ALU_WIDTH_TB -1:0] ALU_OUT;
 
 integer	k;
 string func_type;	
 
	begin
		//generated byte0 frame
		@(posedge DUT.U0_UART.TX_OUT_V)		//Wait TX_busy to activate
			for (k=0;k<11;k=k+1)
				begin	
					@(negedge DUT.U0_UART.TX_CLK) result_0[k] = TX_OUT_TB;  
				end		
			
		//generated byte0 frame
		@(posedge DUT.U0_UART.TX_OUT_V)		//Wait TX_busy to activate
			for (k=0;k<11;k=k+1)
				begin	
					@(negedge DUT.U0_UART.TX_CLK) result_1[k] = TX_OUT_TB;  
				end	
		
//calculate ALU Output
	case (FUNCTION) 
//arthimitic operation (ADD,SUB,MUL,DIV) 
		4'b0000 : ALU_OUT = reg_arr[0] + reg_arr[1] ;
		4'b0001 : ALU_OUT = reg_arr[0] - reg_arr[1] ;
		4'b0010 : ALU_OUT = reg_arr[0] * reg_arr[1] ;
		4'b0011 : ALU_OUT = reg_arr[0] / reg_arr[1] ;			      
// LOGICAL Operation (AND,OR,NAND,NOR,XOR,XNOR)
		4'b0100 : ALU_OUT = reg_arr[0] & reg_arr[1] ;
		4'b0101 : ALU_OUT = reg_arr[0] | reg_arr[1] ;
		4'b0110 : ALU_OUT = ~ (reg_arr[0] & reg_arr[1]) ;
		4'b0111 : ALU_OUT = ~ (reg_arr[0] | reg_arr[1]) ;	
		4'b1000 : ALU_OUT = reg_arr[0] ^ reg_arr[1] ;	
		4'b1001 : ALU_OUT = ~ (reg_arr[0] ^ reg_arr[1]);								      
// Comparison Operation (EQUAL,GREATER,LESS) 			
		4'b1010 :	begin
						if(reg_arr[0] == reg_arr[1])
							ALU_OUT = 16'd1  ;
						else	
							ALU_OUT = 16'd0 ;
					end
		4'b1011 :	begin
						if(reg_arr[0] > reg_arr[1])
							ALU_OUT = 16'd2  ;
						else	
							ALU_OUT = 16'd0 ;
					end
		4'b1100 : 	begin
						if(reg_arr[0] < reg_arr[1])
							ALU_OUT = 16'd3  ;
						else	
							ALU_OUT = 16'd0 ;
					end
// SHIFT Operation(shift right, shift left)
		4'b1101 : ALU_OUT = reg_arr[0] >> 1 ;
		4'b1110 : ALU_OUT = reg_arr[0] << 1 ;
		4'b1111 : ALU_OUT = 16'b0 ;
	endcase	
//calculate expected parity bit for ALU byte0 data
	if (reg_arr[2][0])
		begin		
			case(reg_arr[2][1]) 	
				1'b0 : parity_bit_0 = ^ ALU_OUT[DATA_WIDTH_TB-1:0];   //caculate even parity
				1'b1 : parity_bit_0 = ~^ALU_OUT[DATA_WIDTH_TB-1:0];   //caculate odd  parity
			endcase
		end
	else
		parity_bit_0 = 1'b1;
		
//calculate expected parity bit for ALU byte1 data 
	if (reg_arr[2][0])
		begin		
			case(reg_arr[2][1]) 	
				1'b0 : parity_bit_1 = ^ ALU_OUT[ALU_WIDTH_TB-1:DATA_WIDTH_TB];   //caculate even parity
				1'b1 : parity_bit_1 = ~^ALU_OUT[ALU_WIDTH_TB-1:DATA_WIDTH_TB];   //caculate odd  parity
			endcase
		end
	else
		parity_bit_1 = 1'b1;
		
//expected byte0 frame		
		if (reg_arr[2][0])			
			expec_out_0 = {1'b1,parity_bit_0,ALU_OUT[DATA_WIDTH_TB-1:0],1'b0};		
		else
			expec_out_0 = {1'b1,1'b1,ALU_OUT[DATA_WIDTH_TB-1:0],1'b0};
//expected byte1 frame
		if (reg_arr[2][0])			
			expec_out_1 = {1'b1,parity_bit_1,ALU_OUT[ALU_WIDTH_TB-1:DATA_WIDTH_TB],1'b0};		
		else
			expec_out_1 = {1'b1,1'b1,ALU_OUT[ALU_WIDTH_TB-1:DATA_WIDTH_TB],1'b0};
 
 
//deterimine function TYPE
		
//calculate ALU Output
	case (FUNCTION) 
//arthimitic operation (ADD,SUB,MUL,DIV) 
		4'b0000 : func_type = "Addition";
		4'b0001 : func_type = "Subtraction";
		4'b0010 : func_type = "Multiplication";
		4'b0011 : func_type = "Division";			      
// LOGICAL Operation (AND,OR,NAND,NOR,XOR,XNOR)
		4'b0100 : func_type = "AND";
		4'b0101 : func_type = "OR";
		4'b0110 : func_type = "NAND";
		4'b0111 : func_type = "NOR";	
		4'b1000 : func_type = "XOR";
		4'b1001 : func_type = "XNOR";								      
// Comparison Operation (EQUAL,GREATER,LESS) 			
		4'b1010 :	begin
						func_type = "EQUAL";
					end
		4'b1011 :	begin
						func_type = "GREATER THAN";
					end
		4'b1100 : 	begin
						func_type = "SMALLER THAN";
					end
// SHIFT Operation(shift right, shift left)
		4'b1101 :  func_type = "SHIFT RIGHT TO 'A'";
		4'b1110 :  func_type = "SHIFT LEFT TO 'A'";
		4'b1111 :  func_type = "NOP";
	endcase
 
 
		if (expec_out_0 == result_0 && expec_out_1 ==result_1 )
			begin
				$display("ALU Operation with 'A' = %0d and 'B' = %0d generated the result = %0d with func = \"%S\" is Succeeded at time = %0d",reg_arr[0],reg_arr[1],ALU_OUT,func_type,$time);
				$display("									");
			end	
		else
			begin
				$display("ALU Operation with 'A' = %0d and 'B' = %0d generated the result = %0d with func = \"%S\" is Failed at time = %0d",reg_arr[0],reg_arr[1],ALU_OUT,func_type,$time);
				$display("									");
			end	
	end		
endtask

//////////////////////////////////////////////////////// 
///////////////// Clock Generation /////////////////////
////////////////////////////////////////////////////////

// REF Clock Generator with 80 Mhz
always #(ref_clk_period/2.0) REF_CLK_TB  = ~REF_CLK_TB;

//UART Clock Generator with 3.6864 MHz
always #(UART_clk_period/2.0) UART_CLK_TB = ~UART_CLK_TB;

//////////////////////////////////////////////////////// 
///////////////// Design Instaniation //////////////////
////////////////////////////////////////////////////////



system_top DUT(	.REF_CLK(REF_CLK_TB),
				.UART_CLK(UART_CLK_TB),
				.RST(RST_TB),
				.RX_IN(RX_IN_TB),
				.SI(SI),
				.SE(SE),
				.scan_clk(scan_clk),
				.scan_rst(scan_rst),
				.test_mode(test_mode),
				.SO(SO),
				.TX_OUT(TX_OUT_TB),
				.framing_error(framing_error_TB),
				.parity_error(parity_error_TB));


endmodule