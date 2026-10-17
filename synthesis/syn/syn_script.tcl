########################### Define Top Module ############################
                                                   
set top_module system_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

######################## Output Directories Setup ############################

file mkdir results
file mkdir reports

set RESULTS_FOLDER  results
set REPORTS_FOLDER  reports
 
################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
set project_path /home/ICer/backend/synthesis

lappend search_path $project_path/std_cells
lappend search_path $project_path/rtl/ALU
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

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################
puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_v verilog
set file_sv sverilog

analyze -format $file_v  system_top.v
analyze -format $file_v  ALU.v
analyze -format $file_v  regfile.v

analyze -format $file_v  {ASYNC_FIFO.v DF_SYNC.v FIFO_MEM_CNTRL.v FIFO_RD.v FIFO_WR.v}
analyze -format $file_v  {ClkDiv.v clk_div_mux.v CLK_GATE.v}
analyze -format $file_v  {DATA_SYN.v PULSE_GEN.v RST_SYNC.v}

analyze -format $file_v  UART.v
analyze -format $file_v  {MUX_4x1.v parity_calc.v Serializer.v UART_TX.v  }
analyze -format $file_sv FSM.sv
analyze -format $file_v  {data_sampling.v deserializer.v edge_bit_counter.v par_check.v start_check.v stop_check.v UART_RX.v}
analyze -format $file_sv FSM_RX.sv  

analyze -format $file_sv SYS_CTRL.sv

# ================== Elaborate Top Module ================== #

elaborate -lib work $top_module

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Checking Design Consistency #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design > $REPORTS_FOLDER/check_design.rpt

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"
#used to arrange paths at timing(setup,hold).rpt

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"


compile -map_effort high

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -hierarchy -output $RESULTS_FOLDER/top_netlist.v
write_file -format ddc	   -hierarchy -output $RESULTS_FOLDER/top_netlist.ddc
write_sdc  -nosplit	                      $RESULTS_FOLDER/top_netlist.sdc
write_sdf  	   	                      $RESULTS_FOLDER/top_netlist.sdf

################# reporting #######################

report_area        -hierarchy     >                 $REPORTS_FOLDER/area.rpt
report_power       -hierarchy     >                 $REPORTS_FOLDER/power.rpt
report_clock 	   -attributes    >                 $REPORTS_FOLDER/clocks.rpt
report_timing      -max_paths 100 -delay_type max > $REPORTS_FOLDER/setup.rpt 
report_timing      -max_paths 100 -delay_type min > $REPORTS_FOLDER/hold.rpt 
report_constraint  -all_violators >                 $REPORTS_FOLDER/constraints.rpt

################# starting graphical user interface #######################

gui_start

#exit
