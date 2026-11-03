source ../../globalDefs.tcl
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
encMessage warning 0
encMessage debug 0
encMessage info 0
is_common_ui_mode
restoreDesign /home/isa29_2025_2026/repo/Integrated-System-Architecture/lab1/material/innovus/ckg/datapath_ckg.enc.dat ${TOP_ENTITY}
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
reset_parasitics
extractRC
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -scope /tb_fir_top/firFilter_tb -start {} -end {} -block {} ../../vcd/${TOP_ENTITY}_ckg_post_route.vcd
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//${TOP_ENTITY}_ckg.rpt
report_power -outfile power_report_innovus -sort { total }
