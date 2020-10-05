#!/bin/bash
MULT=0
for VALOR in $*
do
	if [ $MULT -eq 0 ]
	then
		MULT=$1
	else
		MULT=$(("$MULT*$VALOR"| bc))
	fi
done
./imprime.sh multiplicação $MULT
