#!/bin/bash
SOMA=0
for VALOR in $*
do
	SOMA=$(($VALOR+$SOMA))
done
./imprime.sh adição $SOMA
