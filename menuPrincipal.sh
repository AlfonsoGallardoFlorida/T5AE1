#!/bin/bash
opcion=0

while [ $opcion -ne "5" ]
do
    echo "1: BUSCAR NÚMERO DE CONEXIONES POR NOMBRE DE USUARIO"
    echo "2: BUSCAR CONEXIONES POR MES"
    echo "3: BUSCAR CONEXIONES POR DIA Y MES"
    echo "4: CONSULTAR ÚLTIMA CONEXIÓN"
    echo "5: FIN DE PROGRAMA"
    read -p "Selecciona una opción (1..5): " opcion

    case $opcion in 
    "1")
    ./sh1.sh
    ;;
    "2")
    ./sh2.sh
    ;;
    "3")
    ./sh3.sh
    ;;
    "4")
    ./sh4.sh
    ;;
    "5")
    echo "Fin de programa."
    break
    ;;
    *)
    echo "ERROR: La opción es incorrecta"
    ;;
    esac

done