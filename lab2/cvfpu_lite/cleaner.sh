#!/bin/bash
# used to clean folder

shopt -s extglob

#whitelist
rm -rf !("flexfloat"|"fp_test"|"log"|"netlist"|"sim"|"src"|"syn"|"tb"|"clock_period.txt"|"prj.txt"|"cleaner.sh"|"README.md")

#recursive cleaner
ls -d */ 2>/dev/null | while read -r dir 
do

cd $dir
if [ -f "cleaner.sh" ]; then
	./cleaner.sh   
fi
cd ..

done

