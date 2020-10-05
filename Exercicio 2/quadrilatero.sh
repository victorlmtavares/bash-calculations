#!/bin/bash
AREA=0
for VALOR in *$; do
	AREA=$(($1 * $2))
done

./imprime.sh quadrilátero $AREA
