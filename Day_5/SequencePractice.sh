#!/bin/bash 

#1. Use randome function to get single digit

number=$((RANDOM%10))
echo $number

#2. Use Random to get Dice Number between 1 to 6

dice=$((RANDOM%6+1))
echo Dice $dice

#3. Add two Random Dice Number and Print the Result

D1=$((RANDOM%6+1))
D2=$((RANDOM%6+1))
echo Sum of two dice is $(($D1 + $D2))


#4. Write a program that reads 5 Random 2 Digit values , then find their sum and the average

n1=$((RANDOM%99+10))
n2=$((RANDOM%99+10))
n3=$((RANDOM%99+10))
n4=$((RANDOM%99+10))
n5=$((RANDOM%99+10))
SUM=$(($n1+$n2+$n3+$n4+$n5))
echo sum of $n1+$n2+$n3+$n4+$n5 is $SUM
echo $SUM |awk '{print Average of the Numbers are $1/5}'

