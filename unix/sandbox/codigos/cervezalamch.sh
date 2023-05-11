#!/bin/bash

echo "nombre columna :"
#busque el archivo seleccionado y la posición de la columna que se requiere 
cut -d ',' -f $2 $1 | head -n 1
echo "valores distintos :"
#busca los valores unicos y distintos de la columna seleccionada 
cut -d ',' -f $2 $1 | tail -n +2 | sort | uniq | wc -l
echo "valor mínimo:"
#busca el valor minimo de la columna seleccionada
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | head -n 1 
echo "valor máximo:"
#busca el valor máximo 
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | tail -n 1