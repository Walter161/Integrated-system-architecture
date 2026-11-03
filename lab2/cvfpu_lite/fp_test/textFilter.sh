#!/bin/bash
cat res.txt | grep c | sed -E 's/.*\((.*)\)/\1/' | tr -d '-' > filterOut.txt 
