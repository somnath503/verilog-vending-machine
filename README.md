# 🛒 Vending Machine in Verilog

This project implements a simple **Finite State Machine (FSM)-based Vending Machine** using Verilog HDL. It accepts ₹5 and ₹10 as input and dispenses a product when the total value reaches ₹10. It also returns change when applicable. The design is simulated and verified using **Xilinx Vivado**.

---

## 📦 Project Structure

vending_machine_project/
├── vending_machine.v # Main Verilog module (FSM logic)
├── vending_machine_tb.v # Testbench for simulating input sequences

## 🚀 Features

- FSM with 3 states: ₹0, ₹5, ₹10
- Accepts ₹5 and ₹10 (as binary: `01`, `10`)
- Dispenses product when total reaches ₹10
- Returns ₹5 or ₹2 as change when needed
- Reset and clock-driven design
- Testbench simulates coin insertions
- Verified on Xilinx Vivado simulator

## 🧠 State Diagram (Summary)

| State | Total Amount | Input ₹ | Next State | Output | Change |
|-------|--------------|---------|------------|--------|--------|
| S0    | ₹0           | ₹5      | S1         | No     | ₹0     |
| S1    | ₹5           | ₹5      | S2         | No     | ₹0     |
| S2    | ₹10          | ₹0      | S0         | No     | ₹10    |
| S1    | ₹5           | ₹10     | S0         | Yes    | ₹0     |
| S2    | ₹10          | ₹5      | S0         | Yes    | ₹5     |

## 🧪 How to Run (Using Xilinx Vivado)

1. Open **Xilinx Vivado** and create a new project.
2. Add the following files:
   - `vending_machine.v`
   - `vending_machine_tb.v`
3. Set `vending_machine_tb.v` as the top module for simulation.
4. Run behavioral simulation.
5. Observe the waveform and output (`out` and `change`).

