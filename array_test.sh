#!/bin/bash

arreglo=("elem1" "elem2" "elem3" "elem4")

# Contar cantidad de elementos en el arreglo.
echo ${#arreglo[@]}

# Mostrar todos los elementos del arreglo.
echo ${arreglo[@]}

# Recorrer elementos del arreglo.
for elemento in "${arreglo[@]}"
do
    echo $elemento
done
