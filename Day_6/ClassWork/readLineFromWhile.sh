#!/bin/bash -x

filename="company.txt"
n=1
while read line
do
	echo "line no: $n : $line"
	n=$(($n+1))
done < $filename
num=1
while (($num<5))
do
echo $num
num=$(($num+1))
done
