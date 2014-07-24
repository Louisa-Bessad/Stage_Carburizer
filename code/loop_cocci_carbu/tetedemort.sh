#!/bin/bash

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

DIFF_LINE=$(grep -n diff $1 | cut -d':' -f 1 | sed ':a;N;$!ba;s/\n/ /g')
foo=($DIFF_LINE)
tLen=${#foo[@]}

for (( i=1; i<${tLen}; i++ ));
do
    sed -n ${foo[$i-1]},$(( ${foo[$i]} -1 ))p "$1" | grep diff | awk '{print $NF}' | cut -d'/' -f2- | tr '\n' ' '
    sed -n ${foo[$i-1]},$(( ${foo[$i]} -1 ))p "$1" | find_for | tr '\n' ' '
    sed -n ${foo[$i-1]},$(( ${foo[$i]} -1 ))p "$1" | find_while
done

