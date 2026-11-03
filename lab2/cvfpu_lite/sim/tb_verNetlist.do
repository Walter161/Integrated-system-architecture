#set netlist and sdf file using external variable
set netlist_file $1.v
set sdf_file $1.sdf

# set current_clk
vlib work

vlog -sv -work ./work ../src/cf_math_pkg.sv
vlog -sv -work ./work ../src/lzc.sv
vlog -sv -work ./work ../src/rr_arb_tree.sv
vlog -sv -work ./work ../src/fpnew_pkg.sv
vlog -sv -work ./work ../src/fpnew_classifier.sv
vlog -sv -work ./work ../src/fpnew_rounding.sv
vlog -sv -work ./work ../src/fpnew_fma.sv
vlog -sv -work ./work ../src/fpnew_opgroup_fmt_slice.sv
vlog -sv -work ./work ../src/fpnew_opgroup_block.sv
# verify netlist
vlog -work ./work  ../netlist/$netlist_file

vcom -work ./work ../tb/clk_gen.vhd
vcom -work ./work ../tb/data_gen16_v2.vhd
vlog -sv -work ./work ../tb/data_sink.sv
vlog -sv -work ./work ../tb/tb_fpnew_top_net.sv

vsim  -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 -sdftyp /tb_fpnew_top/UUT=../netlist/$sdf_file  work.tb_fpnew_top -logfile log.txt
# add wave *

config wave -signalnamewidth 1
add wave -radix hex clk_i
add wave -radix hex -expand operands_i 
add wave -radix hex UUT/result_o 
run 100ns

#section to print a snapshot
#write wave file waves/wave_$1.ps -start ${2}ns -end ${3}ns 
#ps2pdfwr waves/wave_$1.ps waves/wave_$1.pdf
quit -f

