#!/bin/bash

# Paramètre: le fichier .patch contenant tous les changements à apporter sur les boucles du noyau
# Sortie standard sous la forme <nom_du_driver> <nombre_for> <nombre_while> à rediriger dans un fichier

function find_for()
{
    NB_FOR=$(grep for $1 | grep "-" | wc -l)
    echo $NB_FOR
}


function find_while()
{
    NB_WHILE=$(grep while $1 | grep "-" | wc -l)
    echo $NB_WHILE
}

function check_arg()
{
  if [ -z $1 ]; then
    echo "Usage: $0 <loop.patch> > foo.txt"
    exit 1
  fi
}

#check_arg

DIFF_LINE=$(grep -n "diff " $1 | cut -d':' -f 1 | sed ':a;N;$!ba;s/\n/ /g')
foo=($DIFF_LINE)
tLen=${#foo[@]}

for (( i=1; i<${tLen}; i++ ));
do
    sed -n ${foo[$i-1]},$(( ${foo[$i]} -1 ))p "$1" | grep diff | grep drivers | awk '{printf $4}' | cut -d'/' -f5- | tr '\n' ' '
    sed -n ${foo[$i-1]},$(( ${foo[$i]} -1 ))p "$1" | find_for | tr '\n' ' '
    sed -n ${foo[$i-1]},$(( ${foo[$i]} -1 ))p "$1" | find_while
done

