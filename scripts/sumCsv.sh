#!/bin/bash

values=($(awk -F ',' 'NR > 1 {print $2}' profit.csv))
sum=0

for value in "${values[@]}" ; do
   sum=$((sum+value))

done

echo $sum