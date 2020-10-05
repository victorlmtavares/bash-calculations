#!/bin/bash
SUB=0
for VALOR in $*
do
	if [ $SUB -eq 0 ]
	then
		SUB=$(($VALOR-$SUB))
	else
		SUB=$(($SUB-$VALOR))
	fi
done
./imprime.sh subtração $SUB
