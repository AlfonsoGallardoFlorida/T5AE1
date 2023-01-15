#!/bin/bash
read -p "Introduce el nombre de usuario quieres consultar: " user
numVeces=`cat usuarios.txt | grep $user | wc -l`
if [ $numVeces -eq 0 ]
    then
    echo "$user no se ha logueado"
    else
    echo "$user se ha logueado $numVeces veces"
fi