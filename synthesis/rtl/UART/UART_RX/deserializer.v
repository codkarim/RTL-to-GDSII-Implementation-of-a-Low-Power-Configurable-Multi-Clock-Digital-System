// This module converts serial data received from the UART TX into parallel data.
module deserializer #(parameter DATA_WIDTH = 8,parameter count_num =6,scale_size =6)
(	input		wire							sampled_bit,
	input		wire							deser_en,
	input		wire	[scale_size -1:0]		prescale,
	input		wire	[count_num-1:0]			edge_cnt,
	input		wire							CLK,RST,
	output		reg		[DATA_WIDTH-1:0]		P_DATA );

	
	always @(posedge CLK or negedge RST)
		begin
			if(!RST)
				begin
					P_DATA <= 'b0;
				end
			else if (deser_en && edge_cnt == (prescale - 'b1))
				begin
					P_DATA <= {sampled_bit,P_DATA[DATA_WIDTH-1:1]};  //shift right
				end		
		end
	 
	
endmodule