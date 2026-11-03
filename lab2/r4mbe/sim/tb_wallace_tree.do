vlog +acc -sv ../src/half_adder.sv
vlog +acc -sv ../src/full_adder.sv
vlog +acc -sv ../src/rca_wt.sv
vlog +acc -sv ../src/wallace_tree.sv

# vsim -voptargs=+acc -logfile ../log/tb_MBE.log -debugDB -t 10ps work.tb_top

# to add default radix
# add wave * 
# run 200 ns


