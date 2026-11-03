vlog +acc -sv ../src/booth_enc_logic.sv
vlog +acc -sv ../tb/tb_booth_enc_logic.sv

vsim -voptargs=+acc -logfile ../log/tb_booth_enc_logic.log -debugDB -t 10ps work.tb_top

add wave *
run 200 ns


