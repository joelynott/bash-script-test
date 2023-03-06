#!/bin/bash

# VARIABLES
mono=$1

# FUNCIONES
function goku(){
	# arreglo/array
	poderes=("kamehame" "kaioken" "henkidama")
	# guardo largo del arreglo
	largo=${#poderes[@]}
	# saco un numero aleatorio del arreglo
	ran=${poderes[$((RANDOM % largo))]}
	# devuelvo el valor aleatorio del arreglo
	echo ${ran}
}

function lufy(){
	poderes=("pistoru" "gatorin" "bazooka" "red hawk")
	largo=${#poderes[@]}
	ran=${poderes[$((RANDOM % largo))]}
	echo "gomu gomu no ${ran}"
}

function naruto(){
	poderes=("rasengan" "kage bunshin" "sexy jutsu")
	largo=${#poderes[@]}
	ran=${poderes[$((RANDOM % largo))]}
	echo ${ran}
}

# prueba de funcion que recibe parametros
function param(){
	# parametros de la funcion
	p1=$1
	p2=${2:-"no hay nah"}
	echo $p1, $p2
	echo $p2
}

# CASE
case $mono in
	"")
		echo "nada por aqui";;
	goku)
		goku;;
	lufy)
		lufy;;
	naruto)
		naruto;;
	# recibe una opcion o la otra
	algo|param)
		# llamo a la funcion param y le paso dos parametros separados
		param uno;;
	*)
		echo "no cacho a ese wn";;
esac

