#!/bin/bash 
declare -A birthdictionary
for ((i=1;i<=50;i++))
do	dob=""
	index="person$i"
	yr=$(( $RANDOM % 2 + 92 ))
	mo=$(( $RANDOM % 12 + 1))
	dob="$mo-$yr"
	array=(${birthdictionary[$dob]})
	array+=($index)
	birthdictionary[$dob]=${array[@]}

done

for i in ${!birthdictionary[@]}
do
	echo $i  : ${birthdictionary[$i]}
done

