#!/bin/bash
echo "A área da forma $1 é: $2"

echo "Deseja realizar um novo cálculo? (S/N)"
read OP
if [ $OP == "s" ] || [ $OP == "S" ]; then
	./leitura.sh
elif [ $OP == "N" ] || [ $OP == "n" ]; then
	echo "Cálculos encerrados!!"
else
	clear
	./imprime.sh $1 $2
fi
