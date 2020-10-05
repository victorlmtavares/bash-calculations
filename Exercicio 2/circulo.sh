#!/bin/bash
AREACIR=0
for VALOR in $
do
	AREACIR=$(echo "3.14 * $1*$1"| bc)
done
./imprime.sh circulo $AREACIR

