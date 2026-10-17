

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#===================================================================================#
#=========================== REF CLK with frequency = 80Mhz =======================#
#===================================================================================#

set CLK_REF REF
set REF_PER 12.5

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_transition 0.05

#=========================== MASTER CLK ========================#
create_clock -name $CLK_REF -period $REF_PER -waveform "0 [expr $REF_PER/2]" [get_ports REF_CLK]

#=========================== CLK_GATING ========================#
create_generated_clock  -master_clock $CLK_REF \
			-source [get_ports REF_CLK] \
			-name "ALU_CLK" -divide_by 1 \
			[get_ports  U0_gating_clk/GATED_CLK]

#===================================================================================#
#========================== UART CLK with frequency = 3.686Mhz =====================#
#===================================================================================#

set CLK_UART UART
set UART_PER 271

#=========================== MASTER CLK ========================#
create_clock -name $CLK_UART -period $UART_PER -waveform "0 [expr $UART_PER/2]" [get_ports UART_CLK]

#=========================== CLK_DIVIDER =======================#
#RX CLK
create_generated_clock  -master_clock $CLK_UART \
			-source [get_ports UART_CLK] \
			-name "RX_CLK" -divide_by 1 \
			[get_ports  U0_divider_rx/o_div_clk]

#TX CLK
create_generated_clock  -master_clock $CLK_UART \
			-source [get_ports UART_CLK] \
			-name "TX_CLK" -divide_by 32 \
			[get_ports  U0_divider_tx/o_div_clk]


#================= SETUP CLK_UNCERTAINTY ========================#
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "$CLK_REF $CLK_UART ALU_CLK RX_CLK TX_CLK"]

#================= HOLD CLK_UNCERTAINTY ========================#

set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "$CLK_REF $CLK_UART ALU_CLK RX_CLK TX_CLK"]

#CLK_TRANSITION (for master_clk only and we can make one command for rise,fall)
set_clock_transition $CLK_transition  [get_clocks "$CLK_REF $CLK_UART"]

	
#================= add don't touch ========================#				   
set_dont_touch_network [get_clocks "$CLK_REF $CLK_UART ALU_CLK RX_CLK TX_CLK"]
#set_dont_touch_network [get_ports RST]


####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK_REF  ALU_CLK"] -group [get_clocks "$CLK_UART RX_CLK TX_CLK"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

## input & output delay  = 3.686 * 0.2
set in_delay  [expr 0.2 * $UART_PER]
set out_delay [expr 0.2 * $UART_PER]

#================= set input_delay ========================#

set_input_delay $in_delay   -clock RX_CLK [get_ports  RX_IN]

#================= set output_delay ========================#

set_output_delay $out_delay -clock TX_CLK [get_ports "TX_OUT framing_error parity_error"]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -lib_cell INVX3M  -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports "TX_OUT framing_error parity_error"]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions    -min_library  "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min  "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
  		            -max_library  "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max  "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" 

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################



