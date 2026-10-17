vlib work
vlog ALU/*.*v     ASYNC_FIFO/*.*v  clk_div_mux/*.*v CLK_GATE/*.*v 
vlog ClkDiv/*.*v  DATA_SYN/*.*v    PULSE_GEN/*.*v   RST_SYNC/*.*v 
vlog regfile/*.*v SYS_CTRL/*.*v    system_top/*.*v  Testbench/*.*v
vsim -voptargs=+acc work.system_top_tb
do wave.do
run -all
