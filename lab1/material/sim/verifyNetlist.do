source ../globalDefs.tcl
vlog $NETLIST_PATH/datapath.v
vcom $SRC_PATH/constants.vhd
vcom $SRC_PATH/clk_gen.vhd
vcom $SRC_PATH/data_maker.vhd
vcom $SRC_PATH/data_sink.vhd
vlog $TB_PATH/$TB_FILE
vsim -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 work.tb_fir_top
add wave *
run $SIMULATION_TIME_NS
