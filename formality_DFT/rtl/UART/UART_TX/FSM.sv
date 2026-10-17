module FSM (
	input		wire				CLK,RST,
	input		wire				VALID_FSM,
	input		wire				PAR_EN_FSM,
	input		wire				ser_done_fsm,
	output		reg					ser_en_fsm,
	output		reg		[1:0]		SEL_FSM,
	output		reg					busy);
	
	
	localparam		I0  = 2'b00,	//start
					I1  = 2'b01,	//DATA
					I2  = 2'b10,	//parity
					I3  = 2'b11;	//stop
	
	typedef enum  bit [2:0]	 {	IDLE   = 3'b000,	//used this way to show the name on the waveform
								START  = 3'b001,
								DATA   = 3'b011,
								parity = 3'b010,
								STOP   = 3'b110
	}		state_e;							
	
	state_e	current,next;
	
	//to regester busy signal
	reg		busy_c;
	
	// state transition 
	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				begin
					current <= IDLE;
				end
			else
				begin
					current <= next;
				end
		end
	
	
	// i make outputs(busy_c and SEL_FSM) follow next state to regester it then in current state   
	// next_state and output logic 
	always@(*)
		begin
		 case (current)
			IDLE    :	begin
							if(VALID_FSM)
								begin
									next = START;
									ser_en_fsm = 1'b0;
									SEL_FSM = I0;
									busy_c = 1'b1;	
								end
							else
								begin
									next = IDLE;
									ser_en_fsm = 1'b0;
									SEL_FSM = I3;
									busy_c = 1'b0;	
								end	
							end
						
			START   :	begin
							next = DATA;
							ser_en_fsm = 1'b1;
							SEL_FSM = I1;
							busy_c = 1'b1;
						end

			DATA    : 	begin
							if(ser_done_fsm && PAR_EN_FSM)
								begin
									next = parity;
									ser_en_fsm = 1'b0;
									SEL_FSM = I2;
									busy_c = 1'b1;	
								end
							else if (ser_done_fsm && !PAR_EN_FSM)
								begin
									next = STOP;
									ser_en_fsm = 1'b0;
									SEL_FSM = I3;
									busy_c = 1'b1;	
								end
								
							else
								begin
									next = DATA;
									ser_en_fsm = 1'b1;
									SEL_FSM = I1;
									busy_c = 1'b1;	
								end	
						end
						
			parity	: 	begin
							next = STOP;
							ser_en_fsm = 1'b0;
							SEL_FSM = I3;
							busy_c = 1'b1;	
						end
						  
			STOP    : 	begin
							next = IDLE;
							ser_en_fsm = 1'b0;
							SEL_FSM = I3;
							busy_c = 1'b0;
						end
						
			default :	begin
							next = IDLE;
							ser_en_fsm = 1'b0;
							SEL_FSM = I3;
							busy_c = 1'b0;	
						end		
						
			endcase
		end
	
	
	
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				busy <= 1'b0;
			else
				busy <= busy_c;
		end
		
endmodule