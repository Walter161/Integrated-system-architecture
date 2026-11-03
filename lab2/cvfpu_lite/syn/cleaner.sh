#!/bin/bash
# used to clean folder

shopt -s extglob

#whitelist
rm -rf !("alib-52"|"report"|".synopsys_dc.setup"|"synth.sh"|"synth_CSA.scr"|"synth_PPARCH.scr"|"synth_retiming_script.scr"|"synth_retiming_ultra_script.scr"|"synth_script.scr"|"cleaner.sh")


#recursive cleaner
ls -d */ 2>/dev/null | while read -r dir 
do

cd $dir
if [ -f "cleaner.sh" ]; then
	./cleaner.sh   
fi
cd ..

done

