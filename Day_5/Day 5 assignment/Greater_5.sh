#!/bin/bash 

	num1=$((RANDOM%899+100))
	num2=$((RANDOM%899+100))
	num3=$((RANDOM%899+100))
	num4=$((RANDOM%899+100))
	num5=$((RANDOM%899+100))

	max=0
	min=0
	if [ $num1 -gt $num2 -a $num1 -gt $num3 -a $num1 -gt $num4 -a $num1 -gt $num5 ]
	then
		max=$num1
	elif [ $num2 -gt $num3 -a $num2 -gt $num4 -a $num2 -gt $num5 ]
	then
		max=$num2
	elif [ $num3 -gt $num4 -a $num3 -gt $num5 ]
	then
		max=$num3
	elif [ $num4 -gt $num5 ]
	then
		max=$num4
	else
		max=$num5
	fi

	echo Maximum between $num1,$num2,$num3,$num4,$num5 is $max

	if [ $num1 -lt $num2 -a $num1 -lt $num3 -a $num1 -lt $num4 -a $num1 -lt $num5 ]
	then
		min=$num1
	elif [ $num2 -lt $num3 -a $num2 -lt $num4 -a $num2 -lt $num5 ]
   then
      min=$num2
   elif [ $num3 -lt $num4 -a $num3 -lt $num5 ]
   then
      min=$num3
   elif [ $num4 -lt $num5 ]
   then
      min=$num4
   else
      min=$num5
   fi

   echo Miniimum between $num1,$num2,$num3,$num4,$num5 is $min

