#!/bin/bash -x

read -p "enter the nuber of elements:" n
evensum=0
oddsum=0
for ((i=0,j=1;i<n;i++))
do
	read -p "enter the number $[j++] " arr[$i]
done

echo "array elements are :" ${arr[@]}

for val in ${arr[@]}
do
	if [ $(($val%2)) -eq 0 ]
	then
		evensum=$(($evensum+$val))
	else
		oddsum=$(($oddsum+$val))
	fi
done

echo oddsum=$oddsum
echo evensum=$evensum
