#!/bin/bash

FOR=$(cat gg.dat | grep "$1" | awk '{print $(NF-1) "+" $NF }')
FOR=$(echo $FOR | sed 's/ /+/g' | bc)
#WHI=$(echo $(cat gg.dat | grep "$1" | awk '{print $(NF-1) "+" $NF }'); echo $WHI | sed 's/ /+/g' | bc)

echo $1 $FOR
#echo "While: $WHI"
#echo $(( $FOR + $WHI ))