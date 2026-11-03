LOG_PATH="../log"
NETLIST_GEN_NAME="synthFirFilter_ckg"
BACK_ANNOT_NAME_1="backAnnotation_1_ckg"
BACK_ANNOT_NAME_2="backAnnotation_2_ckg"
VCD_PATH="vcd"
TOP_ENTITY="datapath_pipe"
SAIF_PATH="saif"

echo "this script computes the whole backannotation with clock gating"

echo "setting clock for backannotation..."
./setClock.sh

echo "running $NETLIST_GEN_NAME ..."
cd syn/
dc_shell -f ${NETLIST_GEN_NAME}.scr > $LOG_PATH/${NETLIST_GEN_NAME}.log
cd ..

echo "running $BACK_ANNOT_NAME_1 ..."

# moving to correct directory
cd sim/
vsim -c -do ${BACK_ANNOT_NAME_1}.do > $LOG_PATH/${BACK_ANNOT_NAME_1}.log
cd ..

echo "converting vcd2saif..."
 
vcd2saif -input $VCD_PATH/${TOP_ENTITY}_syn_ckg.vcd -output $SAIF_PATH/${TOP_ENTITY}_syn_ckg.saif > log/vcd2saif.log

echo "running $BACK_ANNOT_NAME_2 ..."

cd syn/
dc_shell -f ${BACK_ANNOT_NAME_2}.scr > $LOG_PATH/${BACK_ANNOT_NAME_2}.log
cd ..

echo "done"

exit 0

 
