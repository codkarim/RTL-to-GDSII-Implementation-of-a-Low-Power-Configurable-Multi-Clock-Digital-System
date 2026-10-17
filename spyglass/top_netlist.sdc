###################################################################

# Created by write_sdc on Mon Oct 12 21:28:51 2026

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell INVX3M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports RX_IN]
set_load -pin_load 0.1 [get_ports TX_OUT]
set_load -pin_load 0.1 [get_ports framing_error]
set_load -pin_load 0.1 [get_ports parity_error]
create_clock [get_ports REF_CLK]  -name REF  -period 12.5  -waveform {0 6.25}
set_clock_uncertainty -setup 0.2  [get_clocks REF]
set_clock_uncertainty -hold 0.1  [get_clocks REF]
set_clock_transition -max -rise 0.05 [get_clocks REF]
set_clock_transition -max -fall 0.05 [get_clocks REF]
set_clock_transition -min -rise 0.05 [get_clocks REF]
set_clock_transition -min -fall 0.05 [get_clocks REF]
create_generated_clock [get_pins U0_gating_clk/GATED_CLK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock REF  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
create_clock [get_ports UART_CLK]  -name UART  -period 271  -waveform {0 135}
set_clock_uncertainty -setup 0.2  [get_clocks UART]
set_clock_uncertainty -hold 0.1  [get_clocks UART]
set_clock_transition -max -rise 0.05 [get_clocks UART]
set_clock_transition -max -fall 0.05 [get_clocks UART]
set_clock_transition -min -rise 0.05 [get_clocks UART]
set_clock_transition -min -fall 0.05 [get_clocks UART]
create_generated_clock [get_pins U0_divider_rx/o_div_clk]  -name RX_CLK  -source [get_ports UART_CLK]  -master_clock UART  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks RX_CLK]
create_generated_clock [get_pins U0_divider_tx/o_div_clk]  -name TX_CLK  -source [get_ports UART_CLK]  -master_clock UART  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks TX_CLK]
group_path -name INOUT  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]  -to [list [get_ports TX_OUT] [get_ports framing_error] [get_ports parity_error]]
group_path -name INREG  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]
group_path -name REGOUT  -to [list [get_ports TX_OUT] [get_ports framing_error] [get_ports parity_error]]
set_input_delay -clock RX_CLK  54.2  [get_ports RX_IN]
set_output_delay -clock TX_CLK  54.2  [get_ports TX_OUT]
set_output_delay -clock TX_CLK  54.2  [get_ports framing_error]
set_output_delay -clock TX_CLK  54.2  [get_ports parity_error]
set_clock_groups -asynchronous -name REF_1 -group [list [get_clocks REF] [get_clocks ALU_CLK]] -group [list [get_clocks UART] [get_clocks RX_CLK] [get_clocks TX_CLK]]
