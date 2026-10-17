/* A clock divider is a circuit that takes an input signal of a frequency fin (faster) 
and generates an output signal of a frequency fout (slower),
where fout = fin / n and 'n' is an integer
*/
module ClkDiv #(parameter divide_ratio = 8)
		
(	input	wire							i_ref_clk,    	 //Reference Frequency
	input	wire							i_rst_n,
	input	wire							i_clk_en,	     //Clock Divider Block Enable
	input	wire	[divide_ratio -1:0]		i_div_ratio,	//The divided ratio
	output	wire							o_div_clk);    //Divided clock
	
////////--------- internal signals --------////////	
// the counter width is that because when we divided by 255(max divide ratio) 
//the counter wiil count up to 127
	reg		[divide_ratio-2 :0]		counter;                              // counts up
	reg 							flag;								 // when divided by odd_number and need to choose which operation will implement
	reg 							div_clk;
	
	wire	[divide_ratio-2 :0] 	half_tog,odd_high;
	wire							odd;
	wire 							CLK_DIV_EN;
	wire							odd_first_half,odd_second_half;
	
	
	
	
	always @(posedge i_ref_clk or negedge i_rst_n)
		begin
			if (!i_rst_n)
				begin
					div_clk <= 0;
					counter <= 0 ;
					flag <= 1 ;
				end
			
			else if (CLK_DIV_EN)
				begin	
					if ((!odd && (counter == half_tog) ))		        // even edge flip condition
						begin
							div_clk <= ~ div_clk ;
							counter <= 'd0 ;
						end
					else if (( odd_first_half || odd_second_half ))	// odd edge flip condition
						begin
							div_clk <= ~ div_clk ;
							counter <= 'd0 ;
							flag    <= ~ flag; 
						end
						
					else 
						begin
							counter <= counter + 1'b1 ;
						end
				end		
				
		end
		
// general any odd_num his LSB =1	
	assign 	odd  = i_div_ratio [0]  ;
	
//for divided by even number Ex : ((4/2) - 1 =1) or divided by odd number for odd_first_half Ex:(3/2 = 1)
// so for even example counter will count 0 then 1 , for odd example counter will count 0  
	assign 	half_tog = ((i_div_ratio >> 1) -1) ;  

//for divided by odd number for odd_second_half Ex:(3/2 = 1)
//so for odd example counter will count 0 then 1  	
	assign 	odd_high = i_div_ratio >> 1 ;	 	
	
	// Enable if div_ratio not equal to 0 or 1 and block is enabled
	// zero doesnt make error because if divided by zero it the block doesnt enabled yet
	assign 	CLK_DIV_EN  = i_clk_en &&(i_div_ratio !='d0) &&(i_div_ratio != 'd1); 
	
	
	assign	odd_first_half  = odd && (counter == half_tog) && flag  ;
	assign 	odd_second_half = odd && (counter == odd_high) && !flag ;	
	
	
	assign o_div_clk = CLK_DIV_EN ? div_clk : i_ref_clk ; 
	
endmodule