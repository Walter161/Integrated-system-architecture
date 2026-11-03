#!/bin/bash
# used to clean folder

shopt -s extglob

#whitelist
rm -rf !(\
"filterOut.txt"|\ 
"fp16_num"|\
"prova.txt"|\
"res.txt"|\
"cleaner.sh"|\
"samples.txt"|\
"tb.do"|\
"tb_verNetlist.do"|\
"textFilter.sh"|\
"verifyNetlist_backannotation.sh"|\
"waves"|\
"waveCapture.sh"|\
"verifyResults.sh"|\
"tb_rtl.do"|\
"README.md")

#recursive cleaner
ls -d */ 2>/dev/null | while read -r dir 
do

cd $dir
if [ -f "cleaner.sh" ]; then
	./cleaner.sh   
fi
cd ..

done

