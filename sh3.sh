#!/bin/bash
read -p "Introduce el mes: " mes
read -p "Introduce el dia del mes: " dia
fecha=$dia" "$mes
lim=`cat usuarios.txt | grep "$fecha" | wc -l`
user=""
if [ $lim -eq 0 ]
    then
    echo "El $fecha no han habido logs"
    else
    for i in `seq 1 $lim`
        do
        us=`cat usuarios.txt| grep "$fecha"| head -n$i|tail -n1| awk '{print $1}' `
        user=$user" "$us
    done
    echo "En la fecha $fecha se conectaron los usuarios$user"
fi