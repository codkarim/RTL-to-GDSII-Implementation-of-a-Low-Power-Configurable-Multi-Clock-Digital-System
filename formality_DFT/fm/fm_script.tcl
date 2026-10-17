########################### Define Top Module ############################
                                                   
set top_module system_top

######################## Output Directories Setup ############################

file mkdir reports

set REPORTS_FOLDER  reports

###################################################################
########################### Setup Paths #############################
###################################################################

set project_path /home/ICer/backend/formality_DFT

# Add paths to search path
lappend search_path $project_path/std_cells
lappend search_path $project_path/rtl/ALU
lappend search_path $project_path/rtl/mux2x1
lappend search_path $project_path/rtl/ASYNC_FIFO
lappend search_path $project_path/rtl/ClkDiv
lappend search_path $project_path/rtl/clk_div_mux
lappend search_path $project_path/rtl/CLK_GATE
lappend search_path $project_path/rtl/DATA_SYN
lappend search_path $project_path/rtl/PULSE_GEN
lappend search_path $project_path/rtl/regfile
lappend search_path $project_path/rtl/RST_SYNC
lappend search_path $project_path/rtl/SYS_CTRL
lappend search_path $project_path/rtl/system_top
lappend search_path $project_path/rtl/UART/UART_RX
lappend search_path $project_path/rtl/UART/UART_TX
lappend search_path $project_path/rtl/UART/UART_TOP

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable

set synopsys_auto_setup true

# Formality Setup File

set_svf "../dft/$top_module.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Files

read_verilog  -container Ref system_top.v
read_verilog  -container Ref ALU.v
read_verilog  -container Ref mux2X1.v
read_verilog  -container Ref regfile.v

read_verilog  -container Ref {ASYNC_FIFO.v DF_SYNC.v FIFO_MEM_CNTRL.v FIFO_RD.v FIFO_WR.v}
read_verilog  -container Ref {ClkDiv.v clk_div_mux.v CLK_GATE.v}
read_verilog  -container Ref {DATA_SYN.v PULSE_GEN.v RST_SYNC.v}

read_verilog  -container Ref UART.v
read_verilog  -container Ref {MUX_4x1.v parity_calc.v Serializer.v UART_TX.v  }
read_sverilog -container Ref FSM.sv
read_verilog  -container Ref {data_sampling.v deserializer.v edge_bit_counter.v par_check.v start_check.v stop_check.v UART_RX.v}
read_sverilog -container Ref FSM_RX.sv
read_sverilog -container Ref SYS_CTRL.sv

# Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 

set_reference_design $top_module
set_top $top_module

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files

read_verilog -netlist -container Imp "../dft/results/top_DFT.v" 

# Read Implementation technology libraries

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design

set_implementation_design $top_module
set_top $top_module

###################################################################
###################### load setup file ############################
###################################################################

########################## Don't verify ###########################

# do not verify  scan out port as a compare point as it is existed only after synthesis and not existed in the RTL

#scan_out

set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO

############################### contants #####################################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#test_mode

set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable

set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]

if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting #############################
 
report_passing_points > $REPORTS_FOLDER/passing_points.rpt
report_failing_points > $REPORTS_FOLDER/failing_points.rpt
report_aborted_points > $REPORTS_FOLDER/aborted_points.rpt
report_unverified_points > $REPORTS_FOLDER/unverified_points.rpt

################# starting graphical user interface #######################

start_gui

###########################################################################
