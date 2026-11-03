vlib work

vlog -sv -work ./work ../src/cvfpu_mbe/cf_math_pkg.sv
vlog -sv -work ./work ../src/cvfpu_mbe/fpnew_pkg.sv

# verify netlist
vlog -work ./work  ../netlist/fpnew_top_r4mbe_ultra.v

vcom -work ./work ../tb/cvfpu/clk_gen.vhd
vcom -work ./work ../tb/cvfpu/data_gen16_v2.vhd
vlog -sv -work ./work ../tb/cvfpu/data_sink.sv
vlog -sv -work ./work ../tb/cvfpu/tb_fpnew_top_net.sv

vsim -t 10ps -L /eda/dk/nangate45/verilog/qsim2020.4 -sdftyp /tb_fpnew_top/UUT=../netlist/fpnew_top_r4mbe_ultra.sdf  work.tb_fpnew_top -logfile log.txt
add wave *
run 2us
#quit

