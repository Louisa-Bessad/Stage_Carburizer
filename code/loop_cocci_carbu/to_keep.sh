#!/bin/bash

#ssh louisa@walafc0.org -t screen -rd

awk '/^diff/ {print cnt,line ;line=$0 ;cnt=0}; /^[^-].*while/ {cnt++}' patch/while_v5.patch 

awk '/^diff/ {print line,cnt ;line=$0 ;cnt=0}; /^[^-].*while/ {cnt++}' patch/while_v5.patch 

grep '\(diff\|while\)' patch/while_v5.patch

grep b/ results/while_v5_bis.dat | awk '{print $5, $6}'
awk '{print $5, $6}' while_v5_bis.dat

