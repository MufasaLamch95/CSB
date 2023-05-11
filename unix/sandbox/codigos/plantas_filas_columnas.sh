#!/bin/bash

echo "nombre del archivo:"
echo $1
echo "Numero de filas:"
#imprime la cantidad total de filas 
cat $1 | wc -l
echo "Numero de columnas:"
#saltar la fila 1 que es la cabecera e imprime las columnas 
head -n 1 $1 | tr -d ' ' | tr -d '\n' | wc -c
