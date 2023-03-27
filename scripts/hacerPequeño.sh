#!/bin/bash

# nombre del archivo original
file=$1
output=$2
lines=1000000

# extrae la primera línea y las escribe en el archivo de salida
head -n 1 $file > $output

# selecciona las líneas aleatorias (excluyendo la primera) y escribelas en el archivo de salida
tail -n +2 $file | shuf -n $lines - >> $output
