#!/bin/bash

archivos=../data/Saavedra2013/*.txt
for f in $archivos 
do
    filas=`cat $f | wc -l`
    columnas=`head -n 1 $f | tr -d ' ' | tr -d '\n' | wc -c`
    echo $f $filas $columnas
done