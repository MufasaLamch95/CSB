#salta la primera linea del archivo csv, ordena y busca los identificadores unicos 
Identificadores=`tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`

#repetidir de ids
for id in $Identificadores
do
    contadores=`bash contador.sh ../data/Gesquiere2011_data.csv $id`
    echo "Identificador:" $id "conteos:" $contadores
done 