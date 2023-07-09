#!/bin/bash

echo "Enter the value of n?"

read N

i=1
SUM=0

while [ $i -le $N ]
 do
 SUM=$(expr $i + $SUM)
 i=$(expr $i + 1)
 done

echo "Total Sum = $SUM"
