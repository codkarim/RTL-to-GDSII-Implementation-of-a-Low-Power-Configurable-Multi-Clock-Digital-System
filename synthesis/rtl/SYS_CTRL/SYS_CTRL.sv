module SYS_CTRL  #( parameter ALU_width  = 16,
					parameter func_WIDTH = 4,
					parameter addr_width = 4,
					parameter DATA_WIDTH = 8)
					
( input		wire	[ALU_width-1:0]		 	ALU_OUT,
  input		wire						 	out_valid,
  input		wire						 	CLK,RST,
  input		wire						 	RX_D_VLD,
  input		wire	[DATA_WIDTH-1:0]	 	RX_P_DATA,
  input		wire	[DATA_WIDTH-1:0]	 	RdData,
  input		wire				 			RdData_vld,
  input		wire							FIFO_FULL,
	
  output	reg							 	CLK_EN,
  output	reg							 	ALU_EN,
  output	reg		[func_WIDTH-1:0]	 	ALU_FUN,
  output	reg		[addr_width-1:0]	 	addr,
  output	reg							 	WrEn,
  output	reg							 	RdEn,
  output	reg		[DATA_WIDTH-1:0]	 	WrData,
  output	reg		[DATA_WIDTH-1:0]	 	Tx_P_DATA,		//FIFO_WR_DATA
  output	reg							 	Tx_D_VLD,		//W_INC
  output	reg							 	clk_div_en);


// state encoding
	typedef enum bit [3:0] { IDLE             = 4'b0000,
							 ADDR_WR_OPER 	  = 4'b0001,
							 WR_OPER      	  = 4'b0011,
							 ADDR_RD_OPER 	  = 4'b0010,
							 RD_OPER	  	  = 4'b0110,
							 ALU_OP_1     	  = 4'b0111,
							 ALU_OP_2     	  = 4'b0101,
							 FUNC_OP	  	  = 4'b0100,
							 FUNC_NOP	  	  = 4'b1100,
							 ALU_OPER_1st	  = 4'b1101,
							 ALU_OPER_2nd	  = 4'b1111
										 
	}  state_e;

	state_e	  current,next;
	
	reg		[3:0]	 	Store;
	
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
			case(current)
			  IDLE    : 	 begin
								if(RX_D_VLD && RX_P_DATA == 'hAA)
									next = ADDR_WR_OPER;
								else if (RX_D_VLD && RX_P_DATA == 'hBB)
									next = ADDR_RD_OPER;
								else if (RX_D_VLD && RX_P_DATA == 'hCC)
									next = ALU_OP_1;	
								else if (RX_D_VLD && RX_P_DATA == 'hDD)
									next = FUNC_NOP;	
								else
									next = IDLE;
							 end
							
			 ADDR_WR_OPER :  begin
								if(RX_D_VLD)
									next = WR_OPER;
								else	
									next = ADDR_WR_OPER;
							 end
								
			 WR_OPER   :	 begin
								if(RX_D_VLD)
									next = IDLE;
								else
									next = WR_OPER;
							 end
							
			 ADDR_RD_OPER :  begin
								if(RX_D_VLD)
									next = RD_OPER;
								else
									next = ADDR_RD_OPER;	
							 end
							  
			 RD_OPER 	 :   begin
								if(RdData_vld &!FIFO_FULL)
									next = IDLE;
								else
									next = RD_OPER;	
							 end			  
							  
			 ALU_OP_1    :   begin
								if(RX_D_VLD)
									next = ALU_OP_2;
								else
									next = ALU_OP_1;
							 end
			 ALU_OP_2    :   begin
								if(RX_D_VLD)
									next = FUNC_OP ;
								else
									next = ALU_OP_2;
							 end	
			 FUNC_OP    :	 begin
								if(RX_D_VLD)
									next = ALU_OPER_1st ;
								else
									next = FUNC_OP;
							 end					
							
			 FUNC_NOP    :	 begin
								if(RX_D_VLD)
									next = ALU_OPER_1st ;
								else
									next = FUNC_NOP;
							 end			
			 ALU_OPER_1st  : begin
								if(out_valid & !FIFO_FULL)
									next = ALU_OPER_2nd;
								else
									next = ALU_OPER_1st ;
							 end
							 
			 ALU_OPER_2nd  : begin
								if(!FIFO_FULL)
									next = IDLE;
								else
									next = ALU_OPER_2nd;
							 end
							 
			 default     : 	 begin
								next = IDLE;
							 end
				
			endcase
		end
	
	
// output logic	
	always @(*)
		begin
			CLK_EN     = 'b0;
			ALU_EN     = 'b0;
			WrEn       = 'b0;
			RdEn   	   = 'b0;
			clk_div_en = 'b1;
			Tx_D_VLD   = 'b0;
			
			Tx_P_DATA  = 'b0;
			WrData     = 'b0;
			ALU_FUN    = 'b0;
			addr       = 'd0;
			case(current)
			 IDLE 	  : 	begin
								CLK_EN     = 'b0;
								ALU_EN     = 'b0;
								WrEn       = 'b0;
								RdEn   	   = 'b0;
								clk_div_en = 'b1;
								Tx_D_VLD   = 'b0;
	
								Tx_P_DATA  = 'b0;
								WrData     = 'b0;
								ALU_FUN    = 'b0;
								addr       = 'd0;
							end
			 ADDR_WR_OPER : begin
								if(RX_D_VLD)
										addr = RX_P_DATA[addr_width-1:0];
								else	
										addr = 'd0;
							end		
						
			 WR_OPER   :	begin
								addr = Store;
								if(RX_D_VLD)
									begin
										WrData =  RX_P_DATA;
										WrEn   = 'b1;
									end	
								else	
									begin
										WrData = 'd0;
										WrEn   = 'b0;
									end	
							end
			 ADDR_RD_OPER : begin
								if(RX_D_VLD)
										begin
											addr = RX_P_DATA[addr_width-1:0];
											RdEn = 'b1;
										end	
								else
										begin
											addr = 'd0;
											RdEn = 'b0;
										end	
							end
			RD_OPER    	 :  begin
								addr   	   = Store;
								Tx_D_VLD   = RdData_vld;
								Tx_P_DATA  = RdData;
							end			   
			ALU_OP_1    :   begin
								addr   	   = 'd0;
								if(RX_D_VLD)
									begin
										WrData =  RX_P_DATA;
										WrEn   = 'b1;
									end	
								else	
									begin
										WrData = 'd0;
										WrEn   = 'b0;
									end	
							end
			ALU_OP_2    :	begin
								addr   	   = 'd1;
								if(RX_D_VLD)
									begin
										WrData =  RX_P_DATA;
										WrEn   = 'b1;
									end	
								else	
									begin
										WrData = 'd0;
										WrEn   = 'b0;
									end	
							end	
			FUNC_OP    :	begin
								if (RX_D_VLD)
									begin
										ALU_FUN    = RX_P_DATA[func_WIDTH-1:0];
									end
								else
									begin	
										ALU_FUN    = 'b0;
									end
							end					
						
			FUNC_NOP    :	begin
								if (RX_D_VLD)
									begin
										ALU_FUN    = RX_P_DATA[func_WIDTH-1:0];
									end
								else
									begin	
										ALU_FUN    = 'b0;
									end
							end
			ALU_OPER_1st  :	begin
								CLK_EN     = 'b1;
								ALU_EN     = 'b1;
								
								ALU_FUN    = Store;
								Tx_D_VLD   = out_valid;
								Tx_P_DATA  = ALU_OUT[DATA_WIDTH-1:0];
							end
							  
				ALU_OPER_2nd  :begin
								CLK_EN     = 'b1;
								ALU_EN     = 'b0;
								
								ALU_FUN    = Store;
								Tx_D_VLD   = out_valid;
								Tx_P_DATA  = ALU_OUT[ALU_width-1:DATA_WIDTH];
							   end			  
							  
				default     : begin
								CLK_EN     = 'b0;
								ALU_EN     = 'b0;
								WrEn       = 'b0;
								RdEn   	   = 'b0;
								clk_div_en = 'b1;
								Tx_D_VLD   = 'b0;
								
								Tx_P_DATA  = 'b0;
								WrData     = 'b0;
								ALU_FUN    = 'b0;
								addr       = 'd0;	
							  end
				
			endcase
		end
		
//To Store Address and ALU's function operation	
	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				Store <= 'b0;
			else if(RX_D_VLD)
				Store <= RX_P_DATA[3:0]; 
		end

endmodule
