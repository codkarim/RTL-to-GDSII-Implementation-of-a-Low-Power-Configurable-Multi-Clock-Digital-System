module RST_SYNC
#(	parameter NUM_STAGES =2)

(	input    wire                      CLK,
	input    wire                      RST,
	output   reg    				   SYNC_RST);

	reg		[NUM_STAGES-1:0]		   sync_reg;
	
always @(posedge CLK or negedge RST)
	begin
		if (!RST)
			begin
				sync_reg <=0;
			end
			
		else
			begin
				sync_reg <= {sync_reg[NUM_STAGES-2:0],1'b1};
			/*	sync_reg[0] <= 'b1;
				sync_reg[1] <= sync_reg[0];
			*/	
			end
	end


always @(*)
	begin
		SYNC_RST = sync_reg[NUM_STAGES-1];
	end
	
endmodule