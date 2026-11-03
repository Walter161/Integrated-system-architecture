vlib work

# fpu
vlog +acc -sv -work ./work ../src/cvfpu_mbe/cf_math_pkg.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/lzc.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/rr_arb_tree.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_pkg.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_classifier.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_rounding.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_fma.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_opgroup_fmt_slice.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_opgroup_block.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_opgroup_block.sv
vlog +acc -sv -work ./work ../src/cvfpu_mbe/fpnew_top.sv

# r4mbe
vlog +acc -sv -work ./work ../src/half_adder.sv
vlog +acc -sv -work ./work ../src/full_adder.sv
vlog +acc -sv -work ./work ../src/rca_wt.sv
vlog +acc -sv -work ./work ../src/wallace_tree.sv
vlog +acc -sv -work ./work ../src/booth_enc_logic.sv
vlog +acc -sv -work ./work ../src/MBE.sv
vlog +acc -sv -work ./work ../src/mult.sv

# tb
vcom -work ./work ../tb/cvfpu/clk_gen.vhd
vcom -work ./work ../tb/cvfpu/data_gen16_v2.vhd
vlog -sv -work ./work ../tb/cvfpu/data_sink.sv
vlog +acc -work ./work ../tb/cvfpu/tb_fpnew_top_rtl.sv

vsim -voptargs=+acc -logfile ../log/tb_r4mbe.log -debugDB -t 10ps work.tb_fpnew_top

add wave tb_fpnew_top/UUT/*
run 200 ns

