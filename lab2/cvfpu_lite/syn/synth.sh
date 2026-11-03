
#original
export CLK_PERIOD=$(cat ../clock_period.txt | grep -w fpnew_top | cut -d ' ' -f 2)
echo "synthesis standard, clock period: " $CLK_PERIOD" ns"
dc_shell -f synth_script.scr > ../log/log.txt

#retiming (optimize register)
export CLK_PERIOD=$(cat ../clock_period.txt | grep -w fpnew_top_retiming | cut -d ' ' -f 2)
echo "synthesis with retiming, clock period: "$CLK_PERIOD" ns"
dc_shell -f synth_retiming_script.scr $CLK > ../log/log_retiming.txt

#optimization
export CLK_PERIOD=$(cat ../clock_period.txt | grep -w fpnew_top_retiming_ultra | cut -d ' ' -f 2)
echo "synthesis with compile_ultra, clock period: "$CLK_PERIOD" ns"
dc_shell -f synth_retiming_ultra_script.scr $CLK > ../log/log_ultra.txt

#usage of CSA
export CLK_PERIOD=$(cat ../clock_period.txt | grep -w fpnew_top_CSA | cut -d ' ' -f 2)
echo "synthesis with CSA, clock period: "$CLK_PERIOD" ns"
dc_shell -f synth_CSA.scr $CLK > ../log/log_CSA.txt

#usage of PPRACH
export CLK_PERIOD=$(cat ../clock_period.txt | grep -w fpnew_top_PPARCH | cut -d ' ' -f 2)
echo "synthesis with PPARCH, clock period: "$CLK_PERIOD" ns"
dc_shell -f synth_PPARCH.scr $CLK > ../log/log_PPARCH.txt
