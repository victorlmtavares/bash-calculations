#!/bin/bash
AREATRI=0
for VALOR in $
do
	AREATRI=$(echo "scale=2;($1*$2)/2"| bc)
done
./imprime.sh triangulo $AREATRI
