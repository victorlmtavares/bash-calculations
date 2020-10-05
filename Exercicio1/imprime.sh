#!/bin/bash
echo "Resultado do seu cálculo de $1: $2"

echo "Deseja relizar outro cálculo? (S/N)"
read OP

if [ $OP == "S" ]||[ $OP == "s" ]
then
	./leitura.sh
elif [ $OP == "N" ]||[ $OP == "n" ]
then
	echo "Calculadora encerrada!!"
else
	clear
	./imprime.sh $1 $2
fi
