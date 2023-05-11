#!/bin/bash
#eliminar primera fila del archivo deseado y retorna el registro por id
cut -f 1 $1 | grep -c -w $2