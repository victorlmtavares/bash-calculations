#!/bin/bash
echo "Calculadora de áreas"
echo "Escolha uma forma: "
echo "1- Quadrilátero"
echo "2- Triângulo"
echo "3- Círculo"
read OP
case $OP in
1)
	echo "Informe os valores de base e altura, separados por espaço: "
	read NUM
	./quadrilatero.sh $NUM
	;;
2)
	echo "Informe o valor de base e altura, separados por espaço: "
	read NUM
	./triangulo.sh $NUM
	;;
3)
	echo "Informe o valor do raio do círculo: "
	read NUM
	./circulo.sh $NUM
	;;
*)
	echo "Opção inválida"
	clear
	./leitura.sh
	;;
esac
