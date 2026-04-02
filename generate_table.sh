#!/bin/bash

TABLE=jobtable.csv

# eventually check if table exists, otherwise ask if we want it to be removed or add a -f flag

HEADER="executable,arguments,infile,outfile,request_cpus,request_memory,request_disk"
echo $HEADER > $TABLE

for f in inputs/*
do
 #echo ${f}
 ID=`echo ${f} | cut -d / -f 2 | cut -d . -f 1`
 echo "/opt/conda/bin/python3,example.py $ID,$ID.csv,$ID.png,1,2GB,2GB" >> $TABLE
done
