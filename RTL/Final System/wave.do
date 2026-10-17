onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB_SIGNALS /system_top_tb/RST_TB
add wave -noupdate -group TB_SIGNALS -color {Dark Orchid} /system_top_tb/REF_CLK_TB
add wave -noupdate -group TB_SIGNALS -color {Dark Orchid} /system_top_tb/UART_CLK_TB
add wave -noupdate -group TB_SIGNALS -color Salmon /system_top_tb/RX_IN_TB
add wave -noupdate -group TB_SIGNALS -color Cyan /system_top_tb/TX_OUT_TB
add wave -noupdate -group TB_SIGNALS /system_top_tb/parity_error_TB
add wave -noupdate -group TB_SIGNALS /system_top_tb/framing_error_TB
add wave -noupdate -group UART /system_top_tb/DUT/U0_UART/RST
add wave -noupdate -group UART -color {Dark Orchid} /system_top_tb/DUT/U0_UART/TX_CLK
add wave -noupdate -group UART -color {Dark Orchid} /system_top_tb/DUT/U0_UART/RX_CLK
add wave -noupdate -group UART -radix unsigned /system_top_tb/DUT/U0_UART/prescale
add wave -noupdate -group UART -color Gold /system_top_tb/DUT/U0_UART/TX_IN_P
add wave -noupdate -group UART -color Gold /system_top_tb/DUT/U0_UART/TX_IN_V
add wave -noupdate -group UART -expand -group {TX_STATES
} -color Cyan /system_top_tb/DUT/U0_UART/U0_tx/U0_FSM/current
add wave -noupdate -group UART -expand -group {TX_STATES
} -color Cyan /system_top_tb/DUT/U0_UART/U0_tx/U0_FSM/next
add wave -noupdate -group UART -color Cyan /system_top_tb/DUT/U0_UART/TX_OUT_S
add wave -noupdate -group UART -color Cyan /system_top_tb/DUT/U0_UART/TX_OUT_V
add wave -noupdate -group UART /system_top_tb/DUT/U0_UART/PAR_EN
add wave -noupdate -group UART /system_top_tb/DUT/U0_UART/PAR_TYP
add wave -noupdate -group UART -color Salmon /system_top_tb/DUT/U0_UART/RX_IN_S
add wave -noupdate -group UART -expand -group {RX_STATES
} /system_top_tb/DUT/U0_UART/U0_rx/U0_FSM/current
add wave -noupdate -group UART -expand -group {RX_STATES
} /system_top_tb/DUT/U0_UART/U0_rx/U0_FSM/next
add wave -noupdate -group UART -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_UART/RX_OUT_P
add wave -noupdate -group UART -color Salmon /system_top_tb/DUT/U0_UART/RX_OUT_V
add wave -noupdate -group UART /system_top_tb/DUT/U0_UART/Parity_error
add wave -noupdate -group UART /system_top_tb/DUT/U0_UART/stop_error
add wave -noupdate -group fifo -expand -group {Write domain} /system_top_tb/DUT/U0_ASYNC_FIFO/W_RST
add wave -noupdate -group fifo -expand -group {Write domain} -color {Dark Orchid} /system_top_tb/DUT/U0_ASYNC_FIFO/W_CLK
add wave -noupdate -group fifo -expand -group {Write domain} -color Salmon /system_top_tb/DUT/U0_ASYNC_FIFO/W_INC
add wave -noupdate -group fifo -expand -group {Write domain} -color Salmon /system_top_tb/DUT/U0_ASYNC_FIFO/wr_en
add wave -noupdate -group fifo -expand -group {Write domain} -color Cyan -expand -subitemconfig {{/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[7]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[6]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[5]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[4]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[3]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[2]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[1]} {-color Cyan} {/system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory[0]} {-color Cyan}} /system_top_tb/DUT/U0_ASYNC_FIFO/U0_memory/memory
add wave -noupdate -group fifo -expand -group {Write domain} -color {Dark Orchid} -radix unsigned /system_top_tb/DUT/U0_ASYNC_FIFO/Wr_addr
add wave -noupdate -group fifo -expand -group {Write domain} -radix hexadecimal /system_top_tb/DUT/U0_ASYNC_FIFO/WR_DATA
add wave -noupdate -group fifo -expand -group {Write domain} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/wptr
add wave -noupdate -group fifo -expand -group {Write domain} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/wq2_rptr
add wave -noupdate -group fifo -expand -group {Write domain} -color Cyan /system_top_tb/DUT/U0_ASYNC_FIFO/FULL
add wave -noupdate -group fifo -expand -group {Read domain} /system_top_tb/DUT/U0_ASYNC_FIFO/R_RST
add wave -noupdate -group fifo -expand -group {Read domain} -color {Dark Orchid} /system_top_tb/DUT/U0_ASYNC_FIFO/R_CLK
add wave -noupdate -group fifo -expand -group {Read domain} -color Salmon /system_top_tb/DUT/U0_ASYNC_FIFO/R_INC
add wave -noupdate -group fifo -expand -group {Read domain} -radix hexadecimal /system_top_tb/DUT/U0_ASYNC_FIFO/RD_DATA
add wave -noupdate -group fifo -expand -group {Read domain} -color {Dark Orchid} -radix unsigned /system_top_tb/DUT/U0_ASYNC_FIFO/Rd_addr
add wave -noupdate -group fifo -expand -group {Read domain} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/rptr
add wave -noupdate -group fifo -expand -group {Read domain} -color Gold /system_top_tb/DUT/U0_ASYNC_FIFO/rq2_wptr
add wave -noupdate -group fifo -expand -group {Read domain} -color Cyan /system_top_tb/DUT/U0_ASYNC_FIFO/EMPTY
add wave -noupdate -expand -group SYS_CONTROL /system_top_tb/DUT/U0_ctrl/RST
add wave -noupdate -expand -group SYS_CONTROL -color {Dark Orchid} /system_top_tb/DUT/U0_ctrl/CLK
add wave -noupdate -expand -group SYS_CONTROL -color Salmon /system_top_tb/DUT/U0_ctrl/RX_D_VLD
add wave -noupdate -expand -group SYS_CONTROL -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_ctrl/RX_P_DATA
add wave -noupdate -expand -group SYS_CONTROL /system_top_tb/DUT/U0_ctrl/FIFO_FULL
add wave -noupdate -expand -group SYS_CONTROL /system_top_tb/DUT/U0_ctrl/clk_div_en
add wave -noupdate -expand -group SYS_CONTROL -color Cyan /system_top_tb/DUT/U0_ctrl/Tx_P_DATA
add wave -noupdate -expand -group SYS_CONTROL -color Cyan /system_top_tb/DUT/U0_ctrl/Tx_D_VLD
add wave -noupdate -expand -group SYS_CONTROL -expand -group {regfile_control} -radix unsigned /system_top_tb/DUT/U0_ctrl/addr
add wave -noupdate -expand -group SYS_CONTROL -expand -group {regfile_control} /system_top_tb/DUT/U0_ctrl/WrEn
add wave -noupdate -expand -group SYS_CONTROL -expand -group {regfile_control} -color Gold /system_top_tb/DUT/U0_ctrl/WrData
add wave -noupdate -expand -group SYS_CONTROL -expand -group {regfile_control} /system_top_tb/DUT/U0_ctrl/RdEn
add wave -noupdate -expand -group SYS_CONTROL -expand -group {regfile_control} /system_top_tb/DUT/U0_ctrl/RdData_vld
add wave -noupdate -expand -group SYS_CONTROL -expand -group {regfile_control} -color Gold /system_top_tb/DUT/U0_ctrl/RdData
add wave -noupdate -expand -group SYS_CONTROL -expand -group {ALU_CONTROL} /system_top_tb/DUT/U0_ctrl/CLK_EN
add wave -noupdate -expand -group SYS_CONTROL -expand -group {ALU_CONTROL} /system_top_tb/DUT/U0_ctrl/ALU_EN
add wave -noupdate -expand -group SYS_CONTROL -expand -group {ALU_CONTROL} -color Gold -radix unsigned /system_top_tb/DUT/U0_ctrl/ALU_FUN
add wave -noupdate -expand -group SYS_CONTROL -expand -group {ALU_CONTROL} -color Gold -radix unsigned /system_top_tb/DUT/U0_ctrl/ALU_OUT
add wave -noupdate -expand -group SYS_CONTROL -expand -group {ALU_CONTROL} /system_top_tb/DUT/U0_ctrl/out_valid
add wave -noupdate -expand -group SYS_CONTROL -expand -group {control_state} -color Cyan /system_top_tb/DUT/U0_ctrl/current
add wave -noupdate -expand -group SYS_CONTROL -expand -group {control_state} -color Cyan /system_top_tb/DUT/U0_ctrl/next
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/RST
add wave -noupdate -group Reg_file -color {Dark Orchid} /system_top_tb/DUT/U0_regfile/CLK
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/WrEn
add wave -noupdate -group Reg_file -color Cyan /system_top_tb/DUT/U0_regfile/WrData
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/RdEn
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/RdData_valid
add wave -noupdate -group Reg_file -color Cyan /system_top_tb/DUT/U0_regfile/RdData
add wave -noupdate -group Reg_file -radix unsigned /system_top_tb/DUT/U0_regfile/address
add wave -noupdate -group Reg_file -color Salmon -radix hexadecimal -childformat {{{/system_top_tb/DUT/U0_regfile/memory[15]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[14]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[13]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[12]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[11]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[10]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[9]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[8]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[7]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[6]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[5]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[4]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[3]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[2]} -radix hexadecimal} {{/system_top_tb/DUT/U0_regfile/memory[1]} -radix unsigned} {{/system_top_tb/DUT/U0_regfile/memory[0]} -radix unsigned}} -subitemconfig {{/system_top_tb/DUT/U0_regfile/memory[15]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[14]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[13]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[12]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[11]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[10]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[9]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[8]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[7]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[6]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[5]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[4]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[3]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[2]} {-color Salmon -radix hexadecimal} {/system_top_tb/DUT/U0_regfile/memory[1]} {-color Salmon -radix unsigned} {/system_top_tb/DUT/U0_regfile/memory[0]} {-color Salmon -radix unsigned}} /system_top_tb/DUT/U0_regfile/memory
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG0
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG1
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG2
add wave -noupdate -group Reg_file /system_top_tb/DUT/U0_regfile/REG3
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/ADDR
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/result
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/expec_out
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/parity_bit
add wave -noupdate -group {CHK_READ
} /system_top_tb/CHECK_RD/k
add wave -noupdate -group ALU /system_top_tb/DUT/U0_ALU/RST
add wave -noupdate -group ALU -color {Dark Orchid} /system_top_tb/DUT/U0_ALU/CLK
add wave -noupdate -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/A
add wave -noupdate -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/B
add wave -noupdate -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/ALU_FUN
add wave -noupdate -group ALU /system_top_tb/DUT/U0_ALU/EN
add wave -noupdate -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/ALU_OUT_COMB
add wave -noupdate -group ALU -color Cyan -radix unsigned /system_top_tb/DUT/U0_ALU/ALU_OUT
add wave -noupdate -group ALU -radix unsigned /system_top_tb/DUT/U0_ALU/out_valid_comb
add wave -noupdate -group ALU -color Cyan /system_top_tb/DUT/U0_ALU/out_valid
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
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/CLK_EN
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/CLK
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/Latch_Out
add wave -noupdate -group CLK_GATING /system_top_tb/DUT/U0_gating_clk/GATED_CLK
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/RST
add wave -noupdate -group Data_sync -color {Dark Orchid} /system_top_tb/DUT/U0_DATA_SYN/CLK
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/bus_enable
add wave -noupdate -group Data_sync -radix hexadecimal /system_top_tb/DUT/U0_DATA_SYN/unsync_bus
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/sync_reg
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/enable_flop
add wave -noupdate -group Data_sync /system_top_tb/DUT/U0_DATA_SYN/pulse_out
add wave -noupdate -group Data_sync -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_DATA_SYN/sync_bus
add wave -noupdate -group Data_sync -color Salmon -radix hexadecimal /system_top_tb/DUT/U0_DATA_SYN/enable_pulse
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/CLK
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/RST
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/SYNC_RST
add wave -noupdate -group RST_SYNC_1 /system_top_tb/DUT/U0_rst_1/sync_reg
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/CLK
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/RST
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/SYNC_RST
add wave -noupdate -group RST_SYNC_2 /system_top_tb/DUT/U0_rst_2/sync_reg
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
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/counter
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/flag
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/div_clk
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/half_tog
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/odd_high
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/odd
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/CLK_DIV_EN
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/odd_first_half
add wave -noupdate -group CLK_DIV_RX -expand -group {internal_signals} /system_top_tb/DUT/U0_divider_rx/odd_second_half
add wave -noupdate -group CLK_DIV_TX /system_top_tb/DUT/U0_divider_tx/i_rst_n
add wave -noupdate -group CLK_DIV_TX -color {Dark Orchid} /system_top_tb/DUT/U0_divider_tx/i_ref_clk
add wave -noupdate -group CLK_DIV_TX /system_top_tb/DUT/U0_divider_tx/i_clk_en
add wave -noupdate -group CLK_DIV_TX -radix unsigned /system_top_tb/DUT/U0_divider_tx/i_div_ratio
add wave -noupdate -group CLK_DIV_TX -color {Dark Orchid} /system_top_tb/DUT/U0_divider_tx/o_div_clk
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/counter
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/flag
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/div_clk
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/half_tog
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/odd_high
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/odd
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/CLK_DIV_EN
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/odd_first_half
add wave -noupdate -group CLK_DIV_TX -expand -group {internal signals} /system_top_tb/DUT/U0_divider_tx/odd_second_half
add wave -noupdate -group MUX_DIV /system_top_tb/DUT/U0_mux_div/divide_ratio
add wave -noupdate -group MUX_DIV /system_top_tb/DUT/U0_mux_div/scale_size
add wave -noupdate -group MUX_DIV -radix unsigned /system_top_tb/DUT/U0_mux_div/prescale
add wave -noupdate -group MUX_DIV -radix unsigned /system_top_tb/DUT/U0_mux_div/i_div_ratio
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5725285000 ps} 0}
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
WaveRestoreZoom {0 ps} {17630172930 ps}
