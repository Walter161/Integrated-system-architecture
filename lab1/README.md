# Repository for LAB1: Design and Implementation of a FIR Filter of order 8.

The process involves:
	- Modelization through matlab and C of the filter response with quantized coefficients
	- Development using HDL (VHDL/SystemVerilog) for the description of the digital filter
	- Simulation with Siemens QuestaSim
	- Synthesis with Synopsys DC Compiler
	- Place & routing with Cadence Innovus 
	- Power, area and performance analysis of obtained filter with 45nm technology

The filter has been designed, synthetized and P&R'd both with and without using pipelining. They can be found in the following folders: 
- FIR Without pipeline:	--> `material/`
- FIR with pipeline:  	--> `material_pipe/`

# Usage
Everthing applies to both `material/` and `material_pipe/`.
Note: the detailed output of each script is found inside the `log/` folder with the corresponding name
- `sim/tb_firFilter.do`        ----> runs the testbench with questasim in shell mode. This command also outputs to the shell to check the simulation results. Must be run inside the `sim/` directory.

- 
- `backAnnotation_ckg.sh`      ----> runs the whole backannotation process applying clock gating to the design. **The correct clock to apply must be set inside the `globalDefs.tcl` file BEFORE RUNNING THE SCRIPT**.
The reports from this scripts of the area, timing and power can be found inside the `syn/report/nockg/` directory.

- `backAnnotation_nockg.sh`      ----> runs the whole backannotation process without clock gating the design. **The correct clock to apply must be set inside the `globalDefs.tcl` file BEFORE RUNNING THE SCRIPT **.
The reports from this script of area, timing and power can be found inside the `syn/report/nockg/` directory.

- `placeRouteAndSim_ckg.sh`    ----> runs the P&R process and performs the post-routing switching activity simulation using the clock gated design. **It is not necessary for this script to set the clock before the `globalDefs.tcl` folder as they are hardcoded**.
The report from this script of the power can be found at `innovus/ckg/power_report_innovus`.

- `placeRouteAndSim_nockg.sh`    ----> runs the P&R process and performs the post-routing switching activity simulation using the non-clock gated design. **It is not necessary for this script to set the clock before the `globalDefs.tcl` folder as they are hardcoded**.
The report from this script of the power can be found at `innovus/nockg/power_report_innovus`.

