module Serializer #(parameter DATA_WIDTH =8)
(	
	input 		wire	[DATA_WIDTH-1:0]	P_DATA_SER,
	input		wire						CLK,
	input		wire		    			RST,
	input		wire						ser_en,
	input		wire						DATA_VALID,
	input		wire						busy,
	output		reg							ser_done,
	output		reg							SER_OUT);
	
	reg 	[DATA_WIDTH-1:0]	Regester;
	reg		[3:0]				counter;
	wire						high;
	
	
	always @(posedge CLK or negedge RST)
		begin
			if (!RST)
				begin
					Regester <= 'b0;
					counter <= 4'b0;
				end
			else if (DATA_VALID && !busy)	// busy is improtant  because if valid is high during transmission not accepted new data
				begin
					Regester <= P_DATA_SER;			//store parallel data
				end	
			else if (ser_en && !high)
				begin
					Regester <= {1'b0,Regester[7:1]};		//shift right
					counter <= counter + 1;					//count up
				end
			else
				begin
					counter <= 4'b0;				
				end	
		end			
	
	always @(*)
		begin
			if (ser_en && !high)
				SER_OUT = Regester[0];		//generate the output
			else
				SER_OUT = 1'b0;
		end
	
	always @(*)
		begin
			if (high)				//generate done signal
				ser_done = 1'b1;
			else
				ser_done = 1'b0;
		end
	
	assign high = (counter == 4'b1000);		//stop when generate parallel data output which is 8 bit
	
	
endmodule



