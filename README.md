# DECA labs in SystemVerilog

This repository contains my DECA labs from 1st year EIE @ Imperial College London in SystemVerilog rather than [Issie](https://github.com/tomcl/issie).

You should not take this as an educational resource. I am still a beginner to SystemVerilog, so do not expect this to be a role model for how SystemVerilog should be written. This is written for fun, and not for a module at Imperial.

## Naming conventions

At first glance, naming convention seems to be non-existent in this codebase. I base all my variable names off (and actually circuit and component designs too) off the official [EEE1 Repository](https://github.com/edstott/EEE1labs).

## Running the test-benches

If you would like to run the test-benches, ensure you have `make` and, crucially, `verilator` & `gtkwave`.

Navigate into the circuit or component's directory and call `make`. This will run `verilator` and open a wave visualization with `gtkwave`.

This repo was developed on Ubuntu, though it'll likely work on other operating systems and WSL.

Alternatively, you can open the existing `dump.vcd` files in each respective directory with `gtkwave` directly, bypassing the need to use `verilator` should you wish.