
#CLK_PERIOD=$(cat globalDefs.tcl | grep CLK_PERIOD | cut -f3 -d ' ')
#
#if [ $# -ne 2 ]; then
#    echo "Utilizzo: $0 <file> <valore_time> $NETLIST_PATH"
#    echo "Esempio: $0 file.txt 10ns"
#    exit 1
#fi

FILE="../../src/constants.vhd"
VALORE=7.92 

if [ ! -f "$FILE" ]; then
    echo "Errore: il file '$FILE' non esiste"
    exit 1
fi

# Pattern che cattura: "constant Ts : time := " + (numero) + (spazio) + (unità) + ";"
# e sostituisce tutto dopo := con il nuovo valore
sed -i "s/\(constant Ts : time := \)[^;]*;/\1$VALORE ns;/g" "$FILE"

