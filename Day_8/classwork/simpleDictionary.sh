#!/bin/bash

declare -A dictionary

dictionary=(["course1"]=java ["course2"]=python ["course3"]=shellscript)

echo "All the elements "${dictionary[@]}

echo ${dictionary["course1"]}
:<<"comments"
echo ${!dictionary[@]}
echo ${#dictionary[@]}
comments
for i in ${!dictionary[@]}
do
	echo $i
done
