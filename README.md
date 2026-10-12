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

## Run the simulations

Install [Icarus Verilog](https://steveicarus.github.io/iverilog/) (optionally GTKWave for waveforms), then run every testbench:

```bash
sudo apt install iverilog gtkwave     # Debian / Ubuntu
./run_tests.sh                        # compile and simulate all 31 testbenches
./run_tests.sh adder                  # only testbenches whose path contains "adder"
```

macOS: `brew install icarus-verilog`. Windows: use the [Icarus Verilog installer](https://bleyer.org/icarus/) or WSL.

To run a single design by hand (testbenches `include` their design file, so run from its folder):

```bash
cd MUX
iverilog -g2012 -o mux mux_4_to_1_tb.v && vvp mux
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
