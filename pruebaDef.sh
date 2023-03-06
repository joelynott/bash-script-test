#!/bin/bash

# Prueba de parámetros por defecto para una variable.

# Definiendo variables de entrada en base a parámetros
# VARIABLES
param1=$1
param2=$2

# Definiendo función
# Esta función sólo muestra un texto con los parametros recibidos.
# FUNCIONES
function insertarDatos(){

# Estas variables reciben el 1er y 2do parámetro respectivamente.
# Si un parámetro NO es proporcionado, muestra el valor pordefecto.
# En estricto rigor, el primer parámetro no necesitaría valor por defecto
# Puesto que si no está presente, el CASE no llega hasta la función
func_param1=$1
func_param2=${2:-"no argument 2"}

echo "Un texto X: $func_param1 y $func_param2"

}

function uso(){

echo "Forma de uso:"
echo "  ./pruebaDef.sh param1 param2"
echo "  kk o KK es el param1 requerido"
}


# Definiendo CASE para los parametros de entrada
case $param1 in
# Definición de valores válidos
kk|KK)
insertarDatos $param1 $param2;;

# Cualquier otro valor no definido anteriormente, muestra la forma de uso.
*)
uso;;

esac
