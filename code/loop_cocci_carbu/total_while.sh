#!/bin/bash

# On grep $1  dans le fichier et on affiche les deux derniers éléments de la ligne
WHI=$(grep $1 $2 | awk '{printf $NF }')
echo $1 $WHI
