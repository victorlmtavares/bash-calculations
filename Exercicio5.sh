#!/bin/bash

valores=[]
maior1=-1
maior2=-1
menor1=101
menor2=101
soma=0

for ((i = 1; i < 15; i++)); do
    echo "Informe o sinal (valor inteiro) $i: "
    read valor
    while [ $valor -lt 0 ] || [ $valor -gt 100 ]; do
        echo "Valor inválido. Informe um valor inteiro entre 0 e 100:"
        read valor
    done

    valores[$i - 1]=$valor
done

for ((i = 0; i < 14; i++)); do
    if [ ${valores[$i]} -gt $maior1 ]; then
        maior2=$maior1
        maior1=${valores[$i]}
    elif [ ${valores[$i]} -gt $maior2 ]; then
        maior2=${valores[$i]}
    fi
    if [ ${valores[$i]} -lt $menor1 ]; then
        menor2=$menor1
        menor1=${valores[$i]}
    elif [ ${valores[$i]} -lt $menor2 ]; then
        menor2=${valores[$i]}
    fi
    soma=$(($soma + ${valores[$i]}))
done

filtroValores=$(($soma - $maior1 - $maior2 - $menor1 - $menor2))
media=$(echo "scale=2;($filtroValores/10)" | bc)
mediaComparacao=$(echo "scale=2;($soma/14)" | bc)

for ((i = 0; i < 14; i++)); do
    valorFloat=$(echo "scale=2;((${valores[$i]})/1)" | bc)

    if [[ $valorFloat > $media ]]; then
        echo "Valor ${valores[$i]} é maior do que a média $media"
    fi
    if [[ $valorFloat < $media ]]; then
        echo "Valor ${valores[$i]} é menor do que a média $media"
    fi
done

echo "A média é $media."
echo "Para fins de análise e comparação, a média seria $mediaComparacao se fossem utilizados todos os 14 sinais lidos pelo sensor."
