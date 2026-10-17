# RTL to GDS Implementation of a Low-Power Configurable Multi Clock Digital System
## 1.Project Overview
This project presents the RTL design and ASIC implementation of a low-power, configurable multi-clock digital communication system using Verilog/System Verilog, targeting TSMC 130nm technology.

The system receives  UART RX commands from master, decodes and executes them using a system controller, and do some operations based on received command such as arithmetic, logical, shift, read and write file operations. The processed results are then transmitted back through a UART TX to master.

<img width="1224" height="787" alt="image" src="https://github.com/user-attachments/assets/9693fdd9-a7af-4a56-a490-bca77e481162" />

The architecture integrates two clock domains, with dedicated clock-domain crossing (CDC) mechanisms, including data and reset synchronizers and an asynchronous FIFO, to support reliable communication between different clock domains. Clock gating is also incorporated to reduce unnecessary switching activity in the ALU.

---

## 2.ASIC flow
| Stage | work completed | Files
|---|---|---|
|1.RTL design | Design (ALU, Register File, Asynchronous FIFO, Clock Divider, Clock Gating, Synchronizers, Controller, UART TX, UART RX).|[RTL](./RTL/Final_System)| 
|2.verification | Integrate each subsystem into the final system and verify functionality using modelsim.|[TB](./RTL/Final_System/Testbench)|
|3.lint/CDC | check linting and CDC issues using (lint_rtl,CDC_setup_check,CDC_verify_struct,CDC_verify,rdc_verify_struct).|[SPYGLASS](./spyglass)|
|4.synthesis |Synthesize and optimize the design, then analyze timing paths, and fix setup and hold violations using Design Compiler tool.|[SYN](./synthesis/syn)|
|5.DFT | Inserted DFT logic into the design to enhance testability and enable efficient manufacturing test.|[DFT](./DFT/dft)|
|6.Formal verification| Verify Functionality equivalence by compare RTL to netlist using the Formality tool.|[FM_DFT](./formality_DFT/fm) [FM_SYN](./formality_sythesis/fm)|
|7.PnR | Floorplan, Power planning, placement, CTS, routing and generate GDS file in Cadence Innovus. |[PNR](./system_pnr)|
|8.GLS | verify netlist_pnr using RTL testbench then generate VCD file to analysis power in prime time. |[GLS](./GLS)|

---

## 3.Features

| Feature | Description |
|---|---|
|**1.Two Master Clocks** | `REF_CLK` = **80 MHz** and `UART_CLK` = **3.6864 MHz** |
|**2.One DFT Clock** | `scan_CLK` = **100 MHz** |
|**3.Three Generated Clocks** | `ALU_CLK` = **80 MHz** ,`RX_CLK` = **3.6864 MHz** and `TX_CLK` = **115.2 KHz** |
|**4.ALU** | Arithmetic, logical, comparison and shift operations |
|**5.Register File** | 16 × 8-bit registers|
|**6.UART** | UART_TX , UART_RX|
|**7.CLK gating** | for reducing power for ALU using ICG cell |
|**8.Synchronization** | Reset synchronizers, data synchronizer, Async FIFO |
|**9.Robust RX** | Oversampling, parity / stop-bit / start-glitch detection |

For more details, see the [SpyGlass reports](./spyglass).
---
