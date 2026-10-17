# RTL to GDS Implementation of a Low-Power Configurable Multi Clock Digital System
## 1.Project Overview
This project presents the RTL design and ASIC implementation of a low-power, configurable multi-clock digital communication system using Verilog/System Verilog, targeting TSMC 130nm technology.

The system receives commands UART RX, decodes and executes them using a system controller, and do some operations based on received command such as arithmetic, logical,shift,read and write file operations. The processed results are then transmitted back through a UART TX.

The architecture integrates two clock domains, with dedicated clock-domain crossing (CDC) mechanisms, including data and reset synchronizers and an asynchronous FIFO, to support reliable communication between different clock domains. Clock gating is also incorporated to reduce unnecessary switching activity in the ALU.

The project covers the key stages of the ASIC design flow: RTL design and verification (ModelSim), lint/CDC (SpyGlass), synthesis, DFT scan insertion, and timing analysis (Synopsys Design Compiler), equivalence checking (Formality), PnR (Cadence Innovus), GLS (QuestaSim), and VCD-based power analysis (PrimeTime).

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
