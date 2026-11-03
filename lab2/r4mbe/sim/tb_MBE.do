vlog +acc -sv ../src/MBE.sv
vlog +acc -sv ../src/booth_enc_logic.sv
vlog +acc -sv ../tb/tb_MBE.sv

vsim -voptargs=+acc -logfile ../log/tb_MBE.log -debugDB -t 10ps work.tb_top

# to add default radix
add wave * 
run 200 ns


