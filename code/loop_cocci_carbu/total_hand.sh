#!/bin/bash

#en manuel pour chaque driver pour l'instant

#FOR=$(cat "results/while_v5_cut_1.dat" | grep "$1" | awk '{print $(NF-1) "+" $NF }')
FOR=$(cat "results/while_v5_cut_1.dat" | grep "$1" | awk '{print $2}')
FOR=$(echo $FOR | sed 's/ /+/g' | bc)
#WHI=$(echo $(cat gg.dat | grep "$1" | awk '{print $(NF-1) "+" $NF }'); echo $WHI | sed 's/ /+/g' | bc)

echo $1 $FOR
#echo "While: $WHI"
#echo $(( $FOR + $WHI ))