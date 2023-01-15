#!/bin/bash
read -p "Introduce el mes: " mes
lim=`cat usuarios.txt | grep $mes | wc -l`
dia=""
if [ $lim -eq 0 ]
    then
    echo "En $mes no han habido logueos"
    else
    for i in `seq 1 $lim`
        do
        num=`cat usuarios.txt| grep $mes| head -n$i|tail -n1| awk '{print $2}' `
        dia=$dia" "$num
    done
    echo "En el mes de $mes hubieron logins los dias$dia"
fi