vlog +acc ../src/half_adder.sv
vlog +acc ../tb/tb_half_adder.sv

vsim -voptargs=+acc -logfile ../log/tb_half_adder.log -debugDB -t 10ps work.tb_top

add wave *
run 100 ns


