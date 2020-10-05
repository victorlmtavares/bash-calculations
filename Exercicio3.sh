#!/bin/bash

while [[ $option != 'X' ]]; do
    echo "Pressione E para iniciar o cronometro ou X para sair."
    read -r option
    segundos=0
    if [[ $option == 'E' ]]; then
        while [[ $option != 'F' ]]; do
            segundos=$(($segundos + 1))
            horas=$(echo "scale=0;(($segundos - ($segundos % 3600))/3600)" | bc)
            minutos=$(echo "scale=0;(($segundos - ($segundos % 60))/60)" | bc)
            segundosDisplay=$(echo "scale=0;($segundos % 60)" | bc)
            echo "${horas}:${minutos}:${segundosDisplay}"
            read -r -t1 option
        done
    fi
done
