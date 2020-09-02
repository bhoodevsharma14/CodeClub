#!/bin/bash

declare -A ArrDict

Arr1=(1 2 3 4 5)
arr2=(A B C D E)
arr3=(A D A E A)
for ((i=0;i<5;i++))
do
	ArrDict[${arr2[$i]}]=${Arr1[@]}
done

for i in ${!ArrDict[@]}
do
	echo "$i : ${ArrDict[$i]}"
done

for i in arr3
do
	if 
