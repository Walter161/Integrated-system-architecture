source ../globalDefs.tcl
vlog $NETLIST_PATH/datapath_pipe.v
vcom $VHDL_SRC_PATH/clk_gen.vhd
vcom $VHDL_SRC_PATH/data_maker.vhd
vcom $VHDL_SRC_PATH/data_sink.vhd
vlog $TB_PATH/$TB_FILE
vsim -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 work.tb_fir_pipe_top 
add wave *
run $SIMULATION_TIME_NS
