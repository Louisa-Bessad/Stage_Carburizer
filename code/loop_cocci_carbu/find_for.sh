#!/bin/bash

awk '/^diff/ {print $NF,cnt ;line=$0 ;cnt=0}; /^[^-].*for/ {cnt++}' $1 | cut -d'/' -f2-

#EOF
