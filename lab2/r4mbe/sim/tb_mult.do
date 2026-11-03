vlog +acc -sv -work ./work ../src/half_adder.sv
vlog +acc -sv -work ./work ../src/full_adder.sv
vlog +acc -sv -work ./work ../src/rca_wt.sv
vlog +acc -sv -work ./work ../src/wallace_tree.sv
vlog +acc -sv -work ./work ../src/booth_enc_logic.sv
vlog +acc -sv -work ./work ../src/MBE.sv
vlog +acc -sv -work ./work ../src/mult.sv

vlog +acc -sv -work ./work ../tb/tb_mult.sv

vsim -voptargs=+acc -debugDB -t 10ps -work ./work work.tb_top

# to add default radix
add wave * 
run 1200 ns


