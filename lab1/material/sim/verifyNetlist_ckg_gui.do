source ../globalDefs.tcl
vlog +acc $NETLIST_PATH/datapath_ckg.v
vcom +acc $SRC_PATH/constants.vhd
vcom +acc $SRC_PATH/clk_gen.vhd
vcom +acc $SRC_PATH/data_maker.vhd
vcom +acc $SRC_PATH/data_sink.vhd
vlog +acc $TB_PATH/$TB_FILE
vsim -debugDB -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 work.tb_fir_top
add wave *
run $SIMULATION_TIME_NS
