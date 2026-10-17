// ************************* Description *********************** //
//  This synchronizer is implemented to:-                        //
//   -- synchronize data bus encoded in gray code                //
//   -- synchronize control bus encoded in gray code             //
//   -- synchronize address bus encoded in gray code             //
// ************************************************************* //

module DF_SYNC #(parameter BUS_WIDTH = 4)
(
	input	wire						CLK,RST,
	input	wire	[BUS_WIDTH-1:0]		Async,
	output	reg		[BUS_WIDTH-1:0]		sync);
	
	reg		[BUS_WIDTH-1:0]	meta_flop	;
	
//----------------- Multi flop synchronizer --------------//
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					meta_flop <= 'b0;
					sync <= 'b0;
				end	
			
			else
				begin
					meta_flop <= Async;
					sync <= meta_flop;
				end			
		end
		
	
endmodule