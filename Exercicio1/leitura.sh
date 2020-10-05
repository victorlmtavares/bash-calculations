#!/bin/bash
echo "Escolha uma operação a realizar:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Divisão"
echo "4 - Multiplicação"
read OP
case $OP in
1)
	echo "Informe os números a somar, separados por espaço"
	read STR
	./adicao.sh $STR
	;;
2)
	echo "Informe os números a subtrair, separados por espaço"
	read STR
	./subtracao.sh $STR
	;;
3)
	echo "Informe o número divisor"
	read NUM1
	echo "Informe o número dividendo"
	read NUM2
	STRVAZIO=" "
	./divisao.sh $NUM1$STRVAZIO$NUM2
	;;
4)
	echo "Informe os números a multiplicar, separados por espaço"
	read STR
	./multiplicacao.sh $STR
	;;
*)
	echo "Opção inválida"
	clear
	./leitura.sh
	;;
esac
