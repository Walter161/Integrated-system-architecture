
source ../globalDefs.tcl

# creates work library
vlib work

# compile vhdl components in work (+acc is for debugging)
vcom +acc -work ./work $VHDL_SRC_PATH/constants.vhd
vcom +acc -work ./work $VHDL_SRC_PATH/adder.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/ff.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/clk_gen.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/register.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/mult.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/data_maker.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/data_sink.vhd 
vcom +acc -work ./work $VHDL_SRC_PATH/datapath.vhd 


# compile systemVerilog testbench
vlog +acc -sv -work ./work $TB_PATH/tb_firFilter.sv

# open simulator as GUI (debugDB is just for schematic viewing)
vsim -debugDB -t 10ps work.$TOP_ENTITY_NAME -voptargs=+acc
add wave *  

# run simulation 
puts "\n\n RUNNING SIMULATION \n\n"
run $SIMULATION_TIME_NS

