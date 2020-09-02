#!/bin/bash -x

isFulltime=1
isParttime=2
empRatePerHour=20
numbWorkingDays=20
totalsalary=0
max_hrs=10
max_Wday=20

totalemphrs=0
totalwday=0

function getWorkingDays
{
	case $1 in
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
	echo $emphrs

}


while [[ $totalemphrs -lt $max_hrs && $totalwday -lt $max_Wday ]]
do
	(($totalowday++))
	randomcheck=$((RANDOM%3))
	emphrs="$( getWorkingDays $randomecheck )"
	totalemphrs=$(($totalemphrs+$emphrs))
done
totalsalary=$(($totalemphrs*$empRatePerHour))
echo $totalsalary
