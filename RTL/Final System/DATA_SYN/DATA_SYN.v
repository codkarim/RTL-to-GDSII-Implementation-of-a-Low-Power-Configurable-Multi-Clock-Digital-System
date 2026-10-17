module DATA_SYN # ( 
     parameter NUM_STAGES = 2 ,
	 parameter BUS_WIDTH = 8 )
	 
(	input	 wire					   bus_enable,
	input    wire                      CLK,
	input    wire                      RST,
	input    wire    [BUS_WIDTH-1:0]   unsync_bus,
	output   reg     [BUS_WIDTH-1:0]   sync_bus,
	output   reg     				   enable_pulse);
	
////////--------- internal generator --------////////	
	reg		[NUM_STAGES -1:0]	sync_reg;
	reg							enable_flop; 
	wire						pulse_out;	
	
	
////////--------- multi flip flop --------////////	
	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				begin
					sync_reg <= 'b0;
				end
			else 
				begin
					sync_reg <= {sync_reg[NUM_STAGES-2:0],bus_enable};
				end
		end
		
////////--------- pulse generator --------//////// 
/// we use pulse generator to capture data for one clock cycle			
	always @(posedge CLK or negedge RST)
		begin 
			if (!RST)
				begin
					enable_flop <= 1'b0;
				end	
			else
				begin
					enable_flop <= sync_reg [NUM_STAGES - 1] ;
				end
				
		end

	assign 	pulse_out = sync_reg [NUM_STAGES - 1] & !enable_flop;
	
	
////////--------- generate enable pulse signal --------////////	
	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				begin
					enable_pulse <= 1'b0;
				end
			else
				begin
				enable_pulse <= pulse_out;
				end
		end
		
////////--------- generate Sync Bus --------////////			
	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				begin
					sync_bus <= 'b0;
				end	
			else if (pulse_out)
				begin
					sync_bus <= unsync_bus;
				end	
		end
	
	
				
endmodule				