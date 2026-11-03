# Assignement 1: Synthesis strategies for cvfpu module
## Usage

Note: the output of each script can be found inside the `log/` folder with the correspondig name.
- `sim/tb_rtl.do` ---> Running this with QuestaSim simulates the cvfpu rtl design and runs the testbench. The output of the testbench is written inside the file `tb_results.txt`. It is not necessary to use the gui in this part.
- `sim/verifyResults.sh` ---> Running this script compares the output of testbench and the output of the given C++ executable.
- `syn/synth.sh` ---> Running this script does all 5 synthesis (base, ultra, retiming, csa impl, pparch impl). The report of each one is written in `syn/report/` while the netlists are written inside `netlist/` folder.  
The clocks used in the script are located inside the file `clock_period.txt`.
- `sim/verifyNetlist_backannotation.sh` ---> Run this script to test all 5 netlists with the testbench
- `cleaner.sh` ---> Running this script cleans the project from temporary files.   
