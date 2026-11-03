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
vlog -sv -work ./work ../src/fpnew_top.sv

vcom -work ./work ../tb/clk_gen.vhd
vcom -work ./work ../tb/data_gen16_v2.vhd
vlog -sv -work ./work ../tb/data_sink.sv
vlog -work ./work ../tb/tb_fpnew_top_rtl.sv
vsim -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 work.tb_fpnew_top

add wave *
run 2us
quit
