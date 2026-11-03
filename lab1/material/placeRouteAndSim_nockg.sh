#!/bin/bash

# this command should exit the script if any command returns an error
START_PATH=$(pwd)
script1="scripts.tcl" 
script2="post_place_nockg.do"
script3="scripts2.tcl"
clock_script="setClock_nockg_7.48ns.sh"

echo "this script computes place and route and post place sim WITHOUT CLOCK GATING"

cd $START_PATH/innovus/nockg
echo "setting clock for innovus ..."
./$clock_script

cd $START_PATH/innovus/nockg
echo "running innovus with script $script1 ..."
innovus -abort_on_error -no_logv -no_cmd -no_gui -files $script1 > $START_PATH/log/innovus_nockg_${script1}.log

if [ $? -ne 0 ]; then
	echo "ERROR, check logs"
	exit 1
fi

cd $START_PATH/innovus/sim_post_place_nockg/
echo "running questaSim with $script2 ..."
vsim -c -do $script2 > $START_PATH/log/questa_nockg_${script2}.log
if [ $? -ne 0 ]; then
	echo "ERROR, check logs"
	exit 1
fi


cd $START_PATH/innovus/nockg
echo "running innovus with $script3 ..."
# log file is generated in folder also
innovus -no_logv -no_cmd -files $script3 > $START_PATH/log/innouvs_nockg_${script3}.log
if [ $? -ne 0 ]; then
	echo "ERROR, check logs"
	exit 1
fi

echo "done"
exit 0
