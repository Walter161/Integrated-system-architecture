#!/bin/bash
# used to clean folder

shopt -s extglob

#whitelist
rm -rf !(".gitignore"|"verifyResults.sh"|"tb.do"|"tb_booth_enc_logic.do"|"tb_ful_adder.do"|"tb_half_adder.do"|"tb_MBE.do"|"tb_mult.do"|"tb_verNetlist.do"|"tb_wallace_tree.do"|"cleaner.sh")

#recursive cleaner
ls -d */ 2>/dev/null | while read -r dir 
do

cd $dir
if [ -f "cleaner.sh" ]; then
	./cleaner.sh   
fi
cd ..

done

