onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB_SIGNALS /system_top_tb/RST_TB
add wave -noupdate -group TB_SIGNALS -color {Dark Orchid} /system_top_tb/REF_CLK_TB
add wave -noupdate -group TB_SIGNALS -color {Dark Orchid} /system_top_tb/UART_CLK_TB
add wave -noupdate -group TB_SIGNALS -color Salmon /system_top_tb/RX_IN_TB
add wave -noupdate -group TB_SIGNALS -color Cyan /system_top_tb/TX_OUT_TB
add wave -noupdate -group TB_SIGNALS /system_top_tb/parity_error_TB
add wave -noupdate -group TB_SIGNALS /system_top_tb/framing_error_TB
add wave -noupdate -expand -group UART /system_top_tb/DUT/U0_UART/RST
add wave -noupdate -expand -group UART -color {Dark Orchid} /system_top_tb/DUT/U0_UART/TX_CLK
add wave -noupdate -expand -group UART -color {Dark Orchid} /system_top_tb/DUT/U0_UART/RX_CLK
add wave -noupdate -expand -group UART -radix unsigned /system_top_tb/DUT/U0_UART/prescale
add wave -noupdate -expand -group UART -color Gold /system_top_tb/DUT/U0_UART/TX_IN_P
add wave -noupdate -expand -group UART -color Gold /system_top_tb/DUT/U0_UART/TX_IN_V
add wave -noupdate -expand -group UART -group {TX_STATES
} -color Cyan /system_top_tb/DUT/U0_UART/U0_tx/U0_FSM/current
add wave -noupdate -expand -group UART -group {TX_STATES
} -color Cyan /system_top_tb/DUT/U0_UART/U0_tx/U0_FSM/next
add wave -noupdate -expand -group UART -color Cyan /system_top_tb/DUT/U0_UART/TX_OUT_S
add wave -noupdate -expand -group UART -color Cyan /system_top_tb/DUT/U0_UART/TX_OUT_V
add wave -noupdate -expand -group UART /system_top_tb/DUT/U0_UART/PAR_EN
add wave -noupdate -expand -group UART /system_top_tb/DUT/U0_UART/PAR_TYP
add wave -noupdate -expand -group UART -color Salmon /system_top_tb/DUT/U0_UART/RX_IN_S
add wave -noupdate -expand -group UART -group {RX_STATES
} /system_top_tb/DUT/U0_UART/U0_rx/U0_FSM/current
add wave -noupdate -expand -group UART -group {RX_STATES
} /system_top_tb/DUT/U0_UART/U0_rx/U0_FSM/next
add wave -noupdate -expand -group UART -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_UART/RX_OUT_P
add wave -noupdate -expand -group UART -color Salmon /system_top_tb/DUT/U0_UART/RX_OUT_V
add wave -noupdate -expand -group UART /system_top_tb/DUT/U0_UART/Parity_error
add wave -noupdate -expand -group UART /system_top_tb/DUT/U0_UART/stop_error
add wave -noupdate -expand -group ALU /system_top_tb/DUT/U0_ALU/RST
add wave -noupdate -expand -group ALU -color {Dark Orchid} /system_top_tb/DUT/U0_ALU/CLK
add wave -noupdate -expand -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/A
add wave -noupdate -expand -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/B
add wave -noupdate -expand -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/ALU_FUN
add wave -noupdate -expand -group ALU /system_top_tb/DUT/U0_ALU/EN
add wave -noupdate -expand -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/ALU_OUT_COMB
add wave -noupdate -expand -group ALU -color Cyan -radix unsigned /system_top_tb/DUT/U0_ALU/ALU_OUT
add wave -noupdate -expand -group ALU -color Cyan /system_top_tb/DUT/U0_ALU/out_valid
add wave -noupdate -group fifo -expand -group {Write domain
} /system_top_tb/DUT/U0_ASYNC_FIFO/W_RST
add wave -noupdate -group fifo -expand -group {Write domain
} -color {Dark Orchid} /system_top_tb/DUT/U0_ASYNC_FIFO/W_CLK
add wave -noupdate -group fifo -expand -group {Write domain
} -color Salmon /system_top_tb/DUT/U0_ASYNC_FIFO/W_INC
add wave -noupdate -group fifo -expand -group {Write domain
} -color {Dark Orchid} -radix unsigned /system_top_tb/DUT/U0_ASYNC_FIFO/Wr_addr
add wave -noupdate -group fifo -expand -group {Write domain
} -radix hexadecimal /system_top_tb/DUT/U0_ASYNC_FIFO/WR_DATA
add wave -noupdate -group fifo -expand -group {Write domain
} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/wptr
add wave -noupdate -group fifo -expand -group {Write domain
} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/wq2_rptr
add wave -noupdate -group fifo -expand -group {Write domain
} -color Cyan /system_top_tb/DUT/U0_ASYNC_FIFO/FULL
add wave -noupdate -group fifo -expand -group {Read domain} /system_top_tb/DUT/U0_ASYNC_FIFO/R_RST
add wave -noupdate -group fifo -expand -group {Read domain} -color {Dark Orchid} /system_top_tb/DUT/U0_ASYNC_FIFO/R_CLK
add wave -noupdate -group fifo -expand -group {Read domain} -color Salmon /system_top_tb/DUT/U0_ASYNC_FIFO/R_INC
add wave -noupdate -group fifo -expand -group {Read domain} -radix hexadecimal /system_top_tb/DUT/U0_ASYNC_FIFO/RD_DATA
add wave -noupdate -group fifo -expand -group {Read domain} -color {Dark Orchid} -radix unsigned /system_top_tb/DUT/U0_ASYNC_FIFO/Rd_addr
add wave -noupdate -group fifo -expand -group {Read domain} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/rptr
add wave -noupdate -group fifo -expand -group {Read domain} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/rq2_wptr
add wave -noupdate -group fifo -expand -group {Read domain} -color Cyan /system_top_tb/DUT/U0_ASYNC_FIFO/EMPTY
add wave -noupdate -group SYS_CONTROL /system_top_tb/DUT/U0_ctrl/RST
add wave -noupdate -group SYS_CONTROL -color {Dark Orchid} /system_top_tb/DUT/U0_ctrl/CLK
add wave -noupdate -group SYS_CONTROL -color Salmon /system_top_tb/DUT/U0_ctrl/RX_D_VLD
add wave -noupdate -group SYS_CONTROL -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_ctrl/RX_P_DATA
add wave -noupdate -group SYS_CONTROL /system_top_tb/DUT/U0_ctrl/FIFO_FULL
add wave -noupdate -group SYS_CONTROL /system_top_tb/DUT/U0_ctrl/clk_div_en
add wave -noupdate -group SYS_CONTROL -color Cyan /system_top_tb/DUT/U0_ctrl/Tx_P_DATA
add wave -noupdate -group SYS_CONTROL -color Cyan /system_top_tb/DUT/U0_ctrl/Tx_D_VLD
add wave -noupdate -group SYS_CONTROL -expand -group {regfile_control
} -radix unsigned /system_top_tb/DUT/U0_ctrl/addr
add wave -noupdate -group SYS_CONTROL -expand -group {regfile_control
} /system_top_tb/DUT/U0_ctrl/WrEn
add wave -noupdate -group SYS_CONTROL -expand -group {regfile_control
} -color Gold /system_top_tb/DUT/U0_ctrl/WrData
add wave -noupdate -group SYS_CONTROL -expand -group {regfile_control
} /system_top_tb/DUT/U0_ctrl/RdEn
add wave -noupdate -group SYS_CONTROL -expand -group {regfile_control
} /system_top_tb/DUT/U0_ctrl/RdData_vld
add wave -noupdate -group SYS_CONTROL -expand -group {regfile_control
} -color Gold /system_top_tb/DUT/U0_ctrl/RdData
add wave -noupdate -group SYS_CONTROL -expand -group {ALU_CONTROL
} /system_top_tb/DUT/U0_ctrl/CLK_EN
add wave -noupdate -group SYS_CONTROL -expand -group {ALU_CONTROL
} /system_top_tb/DUT/U0_ctrl/ALU_EN
add wave -noupdate -group SYS_CONTROL -expand -group {ALU_CONTROL
} -color Gold -radix unsigned /system_top_tb/DUT/U0_ctrl/ALU_FUN
add wave -noupdate -group SYS_CONTROL -expand -group {ALU_CONTROL
} -color Gold -radix unsigned /system_top_tb/DUT/U0_ctrl/ALU_OUT
add wave -noupdate -group SYS_CONTROL -expand -group {ALU_CONTROL
} /system_top_tb/DUT/U0_ctrl/out_valid
add wave -noupdate -group SYS_CONTROL -expand -group {control_state
} -color Cyan /system_top_tb/DUT/U0_ctrl/current
add wave -noupdate -group SYS_CONTROL -expand -group {control_state
} -color Cyan /system_top_tb/DUT/U0_ctrl/next
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/RST
add wave -noupdate -group Reg_file -color {Dark Orchid} /system_top_tb/DUT/U0_regfile/CLK
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/WrEn
add wave -noupdate -group Reg_file -color Cyan /system_top_tb/DUT/U0_regfile/WrData
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/RdEn
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/RdData_valid
add wave -noupdate -group Reg_file -color Cyan /system_top_tb/DUT/U0_regfile/RdData
add wave -noupdate -group Reg_file -color Salmon -radix unsigned /system_top_tb/DUT/U0_regfile/address
add wave -noupdate -group Reg_file -color {Dark Orchid} -expand -subitemconfig {{/system_top_tb/reg_arr[15]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[14]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[13]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[12]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[11]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[10]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[9]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[8]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[7]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[6]} {-color Salmon} {/system_top_tb/reg_arr[5]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[4]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[3]} {-color {Dark Orchid}} {/system_top_tb/reg_arr[2]} {-color Salmon} {/system_top_tb/reg_arr[1]} {-color Salmon} {/system_top_tb/reg_arr[0]} {-color {Dark Orchid}}} /system_top_tb/reg_arr
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG0
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG1
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG2
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG3
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/FUNCTION
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/result_0
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/expec_out_0
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/result_1
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/expec_out_1
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/parity_bit_0
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/parity_bit_1
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/ALU_OUT
add wave -noupdate -group {CHK_ALU
} /system_top_tb/CHECK_ALU/k
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/ADDR
add wave -noupdate -group {CHK_READ
} -radix hexadecimal /system_top_tb/CHECK_RD/result
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/expec_out
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/parity_bit
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/k
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/CLK_EN
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/CLK
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/GATED_CLK
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/RST
add wave -noupdate -group Data_sync -color {Dark Orchid} /system_top_tb/DUT/U0_DATA_SYN/CLK
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/bus_enable
add wave -noupdate -group Data_sync -radix hexadecimal /system_top_tb/DUT/U0_DATA_SYN/unsync_bus
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/sync_reg
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/enable_flop
add wave -noupdate -group Data_sync -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_DATA_SYN/sync_bus
add wave -noupdate -group Data_sync -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_DATA_SYN/enable_pulse
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/CLK
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/RST
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/SYNC_RST
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/CLK
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/RST
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/SYNC_RST
add wave -noupdate -group PULSE_GENERATOR -color {Dark Orchid} /system_top_tb/DUT/U0_pulse/CLK
add wave -noupdate -group PULSE_GENERATOR /system_top_tb/DUT/U0_pulse/RST
add wave -noupdate -group PULSE_GENERATOR /system_top_tb/DUT/U0_pulse/LVL_SIG_flop
add wave -noupdate -group PULSE_GENERATOR /system_top_tb/DUT/U0_pulse/LVL_SIG
add wave -noupdate -group PULSE_GENERATOR /system_top_tb/DUT/U0_pulse/pulse_flop
add wave -noupdate -group PULSE_GENERATOR -color Salmon /system_top_tb/DUT/U0_pulse/pulse_SIG
add wave -noupdate -group CLK_DIV_RX /system_top_tb/DUT/U0_divider_rx/i_rst_n
add wave -noupdate -group CLK_DIV_RX -color {Dark Orchid} /system_top_tb/DUT/U0_divider_rx/i_ref_clk
add wave -noupdate -group CLK_DIV_RX /system_top_tb/DUT/U0_divider_rx/i_clk_en
add wave -noupdate -group CLK_DIV_RX -radix unsigned /system_top_tb/DUT/U0_divider_rx/i_div_ratio
add wave -noupdate -group CLK_DIV_RX -color {Dark Orchid} /system_top_tb/DUT/U0_divider_rx/o_div_clk
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals
} /system_top_tb/DUT/U0_divider_rx/counter
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals
} /system_top_tb/DUT/U0_divider_rx/flag
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals
} /system_top_tb/DUT/U0_divider_rx/div_clk
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals
} /system_top_tb/DUT/U0_divider_rx/half_tog
add wave -noupdate -group CLK_DIV_TX /system_top_tb/DUT/U0_divider_tx/i_rst_n
add wave -noupdate -group CLK_DIV_TX -color {Dark Orchid} /system_top_tb/DUT/U0_divider_tx/i_ref_clk
add wave -noupdate -group CLK_DIV_TX /system_top_tb/DUT/U0_divider_tx/i_clk_en
add wave -noupdate -group CLK_DIV_TX -radix unsigned /system_top_tb/DUT/U0_divider_tx/i_div_ratio
add wave -noupdate -group CLK_DIV_TX -color {Dark Orchid} /system_top_tb/DUT/U0_divider_tx/o_div_clk
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals
} /system_top_tb/DUT/U0_divider_tx/counter
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals
} /system_top_tb/DUT/U0_divider_tx/flag
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals
} /system_top_tb/DUT/U0_divider_tx/div_clk
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals
} /system_top_tb/DUT/U0_divider_tx/half_tog
add wave -noupdate -group MUX_DIV -radix unsigned /system_top_tb/DUT/U0_mux_div/prescale
add wave -noupdate -group MUX_DIV -radix unsigned /system_top_tb/DUT/U0_mux_div/i_div_ratio
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1015303 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1738976 ns}
