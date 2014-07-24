#!/bin/bash

FOR=$(cat $1 | grep "$2" | awk '{printf $(NF-1) "+" $NF }')
FOR=$(echo $FOR | sed 's/ /+/g' | bc)

echo $2 $FOR