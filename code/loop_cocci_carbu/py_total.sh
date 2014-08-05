#!/bin/bash

if [ -z $1 ]; then
  echo "Usage: $0 <file_created_by_tetedemort.sh> <driver_to_analyze>"
  exit 1
fi

FOR=$(cat $1 | grep "$2" | awk '{print $(NF-1) "+" $NF }')
FOR=$(echo $FOR | sed 's/ /+/g' | bc)
#WHI=$(echo $(cat gg.dat | grep "$1" | awk '{print $(NF-1) "+" $NF }'); echo $WHI | sed 's/ /+/g' | bc)

echo $2 $FOR
#echo "While: $WHI"
#echo $(( $FOR + $WHI ))
