
#!/bin/bash

errorcount=$(diff tb_results.txt ../../cvfpu_lite/sim/filterOut.txt|wc -l)
if [[ errorcount -gt 1 ]] 
then
	((errorcount--))
	echo "number of wrong results: $errorcount"
	diff tb_results.txt filterOut.txt >> ../log/verifyResults.log
	echo "check errors in ../log/verifyResults.log" 
else
	echo "no errors found"
fi
