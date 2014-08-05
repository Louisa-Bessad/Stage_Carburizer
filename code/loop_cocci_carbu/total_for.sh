#!/bin/bash

# On grep $1  dans le fichier et on affiche les deux derniers éléments de la ligne
# FOR=$(grep $1 $2 | awk '{printf $NF }')
# echo $1 $FOR

# AA=$1
# awk '/^\\$AA/' $2
awk -v a=this '{print ARGV[1]}' 
