#!/bin/bash
# used to clean folder

shopt -s extglob

#whitelist
rm -rf !("cleaner.sh")


#recursive cleaner
ls -d */ 2>/dev/null | while read -r dir 
do

cd $dir
if [ -f "cleaner.sh" ]; then
	./cleaner.sh   
fi
cd ..

done

