set_app_var power_enable_analysis true
set_app_var power_analysis_mode time_based
set power_vcd_time_unit 1ns

set report_dir /home/ICer/backend/GLS/pt/report
file mkdir $report_dir

set Out_report System_pw

# Tcl variables for SDF and VCD mapping
set power_vcd_name_mapping true
set read_sdf_unresolved_argument_verbose true
set sdf_enable_no_negedge true
set read_sdf_process_hierarchical_pins true

# Enable clock propagation across multiplexers
set_app_var case_analysis_propagate_through_icg true
set_app_var timing_enable_preset_clear_arcs true

#------------------------------------------------------------------------------
# Libraries
#------------------------------------------------------------------------------
lappend search_path /home/ICer/backend/GLS/std_cells

set TTLIB   scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
set SSLIB   scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
set FFLIB   scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db

set target_library [list $TTLIB $SSLIB $FFLIB]
set link_library   [list * $TTLIB $SSLIB $FFLIB]

#------------------------------------------------------------------------------
# Read Design Files
#------------------------------------------------------------------------------

# Read Verilog Netlist
read_verilog /home/ICer/backend/GLS/sim/system_top.v

current_design system_top

link_design

# Read SDC File
read_sdc /home/ICer/backend/GLS/sim/top_DFT.sdc


# force Functional Mode for DFT Clock Muxes
set test_pins [get_ports -quiet {scan_en test_mode SE scan_mode test_en}]
if {[sizeof_collection $test_pins] > 0} {
    set_case_analysis 0 $test_pins
}

# Read SDF File
read_sdf /home/ICer/backend/GLS/sim/system_top.sdf

#------------------------------------------------------------------------------
# Read Switching Activity
#------------------------------------------------------------------------------
read_vcd -strip_path system_top_tb/DUT /home/ICer/backend/GLS/sim/VCD/system_top_tb.vcd

update_power

#------------------------------------------------------------------------------
# Reports
#------------------------------------------------------------------------------
report_switching_activity -list_not_annotated > $report_dir/not_annotated.rpt
report_power -cell_power  -net_power -verbose > $report_dir/${Out_report}_detailed.rpt
report_power -hierarchy > $report_dir/${Out_report}_hier.rpt
report_power            > $report_dir/$Out_report.rpt

echo "----------------------------------------"
echo "PrimeTime PX Analysis Finished"
echo "Reports saved in:"
echo "$report_dir"
echo "----------------------------------------"
#start_gui
exit
