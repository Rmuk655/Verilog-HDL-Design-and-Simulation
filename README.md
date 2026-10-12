# Verilog Practice

This repository contains **Verilog HDL implementations** of fundamental **digital logic and hardware design components**.  

---

## Topics Implemented

The repository is organized by topic, with each folder containing Verilog modules (and testbenches where applicable).

### Arithmetic Circuits
- **adder/** – Half adder, full adder, and multi-bit adders  
- **subtractor/** – Binary subtractor implementations  
- **ALU/** – Arithmetic Logic Unit designs combining multiple operations  

### Data Routing & Selection
- **MUX/** – Multiplexer implementations  
- **decoder/** – Decoder circuits  
- **encoder/** – Encoder circuits  

### Sequential Circuits
- **flipflops/** – D, JK, T flip-flop implementations  
- **shift registers/** – Serial/parallel shift registers  
- **bit counter/** – Bit counters and related logic  

### Logical Operations
- **logical_operations/** – AND, OR, XOR, NOT, and composite logic  

---

##  Repository Structure

```
.
├── ALU/
├── MUX/
├── adder/
├── subtractor/
├── decoder/
├── encoder/
├── logical_operations/
├── flipflops/
├── shift registers/
├── bit counter/
├── Miscellaneous/
├── hello/
└── README.md
```

---

##  Tools Used

- **Verilog HDL**
- **Icarus Verilog (iverilog)** – Compilation and simulation
- **GTKWave** – Waveform visualization (if VCD files are generated)

---

##  How to Compile & Simulate

Example for a module and its testbench:

```bash
iverilog -o sim.out module.v module_tb.v
vvp sim.out
gtkwave dump.vcd
```

---

##  Notes

- Each folder focuses on a **single digital design concept**
- Modules can be reused in larger designs (e.g., ALU, processors)

---
