# get global definitions
source ../globalDefs.tcl
 
# creates work library
vlib work

# compile vhdl components in work
vcom -work ./work $VHDL_SRC_PATH/adder.vhd 
vcom -work ./work $VHDL_SRC_PATH/ff.vhd 
vcom -work ./work $VHDL_SRC_PATH/clk_gen.vhd 
vcom -work ./work $VHDL_SRC_PATH/register.vhd 
vcom -work ./work $VHDL_SRC_PATH/mult.vhd 
vcom -work ./work $VHDL_SRC_PATH/data_maker.vhd 
vcom -work ./work $VHDL_SRC_PATH/data_sink.vhd 
vcom -work ./work $VHDL_SRC_PATH/datapath_pipe.vhd 

# compile systemVerilog testbench
vlog -sv -work ./work $TB_PATH/$TB_FILE

# open simulator from command line
vsim -t 10ps -c work.$TB_MODULE

# run simulation 
puts "\n\n RUNNING SIMULATION \n\n"
run $SIMULATION_TIME_NS

