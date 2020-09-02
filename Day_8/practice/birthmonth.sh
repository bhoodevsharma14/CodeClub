#!/bin/bash
declare -A birthdictionary
for ((i=1;i<=50;i++))
do
	index="person$i"
	yr=$(( $RANDOM % 2 + 92 ))
	mo=$(( $RANDOM % 12 + 1))
	birthdictionary[$index]="$mo-$yr"

done
#	echo ${birthdictionary[@]}|grep "1-92" |uniq -c

declare -A grouping

for i in ${!birthdictionary[@]}
do
	month=`echo ${birthdictionary[$i]}|awk -F- '{print $1}'`
#	echo $month
	if [ $month -eq 1 ]
	then
		echo "$i : ${birthdictionary[$i]}"
	fi
:<<"com"
	case $month
	1)	echo "$i : ${birthdictionary[$i]}"
	;;
	2)	echo "$i : ${birthdictionary[$i]}"
	;;
	3)	echo "$i : ${birthdictionary[$i]}"
	;;
	4)	echo "$i : ${birthdictionary[$i]}"
	;;
	5)	echo "$i : ${birthdictionary[$i]}"
	;;
	6)	echo "$i : ${birthdictionary[$i]}"
	;;
	7)	echo "$i : ${birthdictionary[$i]}"
	;;
	8)	echo "$i : ${birthdictionary[$i]}"
	;;
	9)	echo "$i : ${birthdictionary[$i]}"
	;;
	10)	echo "$i : ${birthdictionary[$i]}"
	;;
	11)	echo "$i : ${birthdictionary[$i]}"
	;;
	12)	echo "$i : ${birthdictionary[$i]}"
	;;
	esac
com
done
