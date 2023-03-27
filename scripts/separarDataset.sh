#!/bin/bash


file=$1

output1="workingData.csv"
output2="validationData.csv"

# número total de líneas en el archivo original
total_lines=$(wc -l < $file)

# número de líneas en el primer archivo de salida
lines1=$((total_lines * 8 / 10))

# número de líneas en el segundo archivo de salida
lines2=$((total_lines - lines1))

# extrae la primera línea y las escribe en ambos archivos de salida
head -n 1 $file > $output1
head -n 1 $file > $output2

# selecciona las líneas aleatorias y escribelas en los archivos de salida
tail -n +2 $file | shuf | head -n $lines1 - >> $output1
tail -n +2 $file | shuf | head -n $lines2 - >> $output2
