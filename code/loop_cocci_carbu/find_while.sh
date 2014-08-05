#!/bin/bash

awk '/^diff/ {print $NF, cnt ;line=$0 ;cnt=0}; /^[^-].*while/ {cnt++}' $1 | cut -d'/' -f2-
