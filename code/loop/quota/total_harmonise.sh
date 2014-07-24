#!/bin/bash

#Pensez à se mettre dans le répertoire à lister sinon ne fonctionne pas, trouver pk???

REP=$1
CPT=0
CPT_REP=0

#echo $REP/
#ls $REP

for i  in $(ls $REP)
do
    #echo '--------------'
    #echo 'for:' $i
    if [ -d $i ]
    then
	cd $i
	#for j in $i
	#do
	    #echo 'je suis là'
	    #pwd
	    #echo 'ls'
	    ls .
	    RES=$( ls | wc -l )
	    echo $RES
	    CPT=$(($CPT + $RES ))
	    CPT_REP=$(($CPT_REP + 1))
	    #echo $i $CPT $RES $CPT_REP
	    echo $i $RES $CPT_REP
	    RES=$(($RES - $CPT_REP))
	    echo $RES
	    echo '--------------'
	    cd ..
	#done
    #else
	#CPT=$(($CPT + 1))
	#echo 'else' $CPT
#	echo '---------------'
    fi
done

#cd ..
#RES=$(ls $REP | wc -l )
#CPT=$(($CPT + $RES - $CPT_REP))
#echo $CPT
