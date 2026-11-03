#POST PLACE AND ROUTE SIMULATION AND SWITCHING ACTIVITY BASED POWER CONSUMPTION ESTIMATION
#Questasim part

#variabale definition
source ../../globalDefs.tcl

# compiling stimulus
vcom -work ./work ../$VHDL_SRC_PATH/constants.vhd
vcom -work ./work ../$VHDL_SRC_PATH/clk_gen.vhd
vcom -work ./work ../$VHDL_SRC_PATH/data_maker.vhd
vcom -work ./work ../$VHDL_SRC_PATH/data_sink.vhd

# compiling verilog netllist
vlog -work ./work ../nockg/${TOP_ENTITY}_nockg.v

# compile testbench 
vlog -sv -work ./work ../$TB_PATH/$TB_FILE

# compiling verilog source
vsim -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 -sdfmax /$TB_MODULE/$TB_TOP_ENTITY_UUT=../nockg/${TOP_ENTITY}_nockg.sdf work.$TB_MODULE 

# creating vcd
vcd file ../$VCD_PATH/${TOP_ENTITY}_nockg_post_route.vcd
vcd add /$TB_MODULE/$TB_TOP_ENTITY_UUT/*

# running simulation
run $SIMULATION_TIME_NS 
quit

