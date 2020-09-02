#!/bin/bash -x

isFulltime=1
isParttime=2
empRatePerHour=20
numbWorkingDays=20
totalsalary=0
fullday=0
halfday=0
absent=0

for ((day=1;day<=$numbWorkingDays;day++))
do
randomcheck=$((RANDOM%3))
	case $randomcheck in
		$isFulltime)
		emphrs=8
		fullday=$(($fullday+1))
		;;
		$isParttime)
		emphrs=4
		halfday=$(($halfday+1))
		;;
		*)
		emphrs=0
		absent=$(($absent+1))
		;;
	esac
	salary=$(($emphrs*$empRatePerHour))
	totalsalary=$(($totalsalary+$salary))
done

echo Salary of Employ is $totalsalary
echo fullday $fullday days,halfday $halfday day,absent $absent day
