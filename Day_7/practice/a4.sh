#!/bin/bash 

read -p "Enter first number " num
array+=($num)
read -p "Enter second number " num
array+=($num)
read -p "Enter second number " num
array+=($num)

echo "Your Array is (${array[@]})"
sum=0

for i in ${array[@]}
do
	((sum+=$i))
done

if [ $sum -eq 0 ]
then
	echo "Total Sum of numbers is 'EQUAL TO ZERO'"
else
	echo "Total Sum of Numbers is 'NOT EQUAL TO ZERO' "
fi
