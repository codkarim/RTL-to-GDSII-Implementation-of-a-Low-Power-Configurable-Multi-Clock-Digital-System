# RTL to GDS Implementation of a Low-Power Configurable Multi Clock Digital System
## 1.Project Overview
This project presents the RTL design and ASIC implementation of a low-power, configurable multi-clock digital communication system using Verilog/System Verilog, targeting TSMC 130nm technology.

The system receives  UART RX commands from master, decodes and executes them using a system controller, and do some operations based on received command such as arithmetic, logical, shift, read and write file operations. The processed results are then transmitted back through a UART TX to master.

<img width="1224" height="787" alt="image" src="https://github.com/user-attachments/assets/9693fdd9-a7af-4a56-a490-bca77e481162" />

The architecture integrates two clock domains, with dedicated clock-domain crossing (CDC) mechanisms, including data and reset synchronizers and an asynchronous FIFO, to support reliable communication between different clock domains. Clock gating is also incorporated to reduce unnecessary switching activity in the ALU.

To Reviewing the completed work : 
1. Read the [frontend specification](./Specs/Final_System.pdf) and [backend assignment](./Specs/System_Assignment.pdf).
2. Start with [system_top.v](./RTL/Final%20System/system_top/system_top.v) and [SYS_CTRL.sv](./RTL/Final%20System/SYS_CTRL/SYS_CTRL.sv) to follow the system connections and command sequence.

---

## 2.Implemented flow
| Stage | work completed | Files
|---|---|---|
|1.RTL design | Design (ALU, Register File, Asynchronous FIFO, Clock Divider, Clock Gating, Synchronizers, Controller, UART TX, UART RX).|[RTL](./RTL/Final%20System)| 
|2.verification | Integrate each subsystem into the final system and verify functionality using modelsim.|[TB](./RTL/Final%20System/Testbench)|
|3.lint/CDC | check linting and CDC issues using (lint_rtl,CDC_setup_check,CDC_verify_struct,CDC_verify,rdc_verify_struct).|[SPYGLASS](./spyglass)|
|4.synthesis |Synthesize and optimize the design, then analyze timing paths, and fix setup and hold violations using Design Compiler tool.|[SYN](./synthesis/syn)|
|5.DFT | Inserted DFT logic into the design to enhance testability and enable efficient manufacturing test.|[DFT](./DFT/dft)|
|6.Formal verification| Verify Functionality equivalence by compare RTL to netlist using the Formality tool.|[FM_DFT](./formality_DFT/fm) [FM_SYN](./formality_synthesis/fm)|
|7.PnR | Floorplan, Power planning, placement, CTS, routing and generate GDS file in Cadence Innovus. |[PNR](./system_pnr)|
|8.GLS | verify netlist_pnr using RTL testbench then generate VCD file to analysis power in prime time. |[GLS](./GLS)|

---

## 3.Features

| Feature | Description |
|---|---|
|**1.Two Master Clocks** | `REF_CLK` = **80 MHz** and `UART_CLK` = **3.6864 MHz** |
|**2.One DFT Clock** | `scan_CLK` = **100 MHz** |
|**3.Three Generated Clocks** | `ALU_CLK` = **80 MHz** ,`RX_CLK` = **3.6864 MHz** and `TX_CLK` = **115.2 KHz** |
|**4.ALU** | Arithmetic, logical, comparison and shift operations with result = 16-bit |
|**5.Register File** | 16 × 8-bit registers|
|**6.UART** | UART_TX , UART_RX|
|**7.CLK gating** | for reducing power for ALU using ICG cell |
|**8.Synchronizers** | Reset synchronizers, data synchronizer, Async FIFO (8 x 8) |
|**9.Uart configurations** | prescale (32,16,8), parity(odd,even,disable) |
|**10.Num of scan chains** | four scan chains |

#### For more details for each subsystem specification, see the [System_specs](./Specs).
---
## 4.output results

Final routed layout of project : 
<img width="961" height="643" alt="Screenshot 2026-10-15 150801" src="https://github.com/user-attachments/assets/4d114446-6087-4193-a880-a5f64af23040" />

These values come from the saved project outputs.

| Item | Output result | Output |
|---|---|---|
| spyglass goals | lint_rtl,CDC_setup_check,CDC_verify_struct,CDC_verify,rdc_verify_struct (with zero errors) | [Synthesis area report](./spyglass)|
| Synthesized cell area | 24576.56 µm²| [Synthesis area report](./synthesis/syn/reports/area.rpt) |
| DFT cell area | 24227.076951 µm²| [DFT area report](./DFT/dft/reports/area.rpt) |
| Die size area | 240.47 x 160.47 µm| [Die size area](./system_pnr/floorplan.tcl) |
| Scan chains | 86, 85, 85, and 85 elements; four scan chains | [scan chains](./DFT/dft/dft.log) |
| test coverage | 99.58% | [test coverage](./DFT/dft/reports/dft_drc_post_dft.rpt) |
| Post-synthesis equivalence | SUCCEEDED; 345 passing points with no failing points | [Formality log](./formality_synthesis/fm/reports) |
| Post-DFT equivalence | SUCCEEDED; 345 passing points with no failing points | [Formality log](./formality_DFT/fm/reports) |
| Post-route setup WNS | +0.183 ns with 0 setup violations | [Setup summary](./system_pnr/report/system_top_postRoute.summary) |
| Post-route hold WNS | +0.073 ns with 0 hold violations | [Hold summary](./system_pnr/report/system_top_postRoute_hold.summary) |
| Successful functional checks | tesetd successfully default configurations (prescale =32, enable parity which is even ) | [Simulation transcript](./GLS/sim/Transcript.png) |
| total power using VCD | 700 µW with annotated nets = 2129 (100.00%)| [PrimeTime PX report](./GLS/pt/report/System_pw.rpt) |

**Power note:** VCD mapping annotated nets = 2129 (100.00%) and Number of fully annotated leaf cells = 1967 (100.00%), 
See the [activity log](./GLS/pt/pw.log).


[PNR export](./system_pnr/export) contains all files exported from PnR in Cadence Innovus, including the post-route netlist, SDF, SDC, SPF, and GDSII layout.

---
## Author

**karim mohamed Abomera**

Faculty of Engineering, Kafr El-Sheikh University 

---
