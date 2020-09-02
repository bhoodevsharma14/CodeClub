#!/bin/bash -x

	isparttime=1
	isfulltime=2
	totalsalary=0
	emprateperhrs=20
	numworkingdays=20

	for (( day=1; day<=$numworkingdays; day++ ))
	do
		empcheck=$((RANDOM%3))

		case $empcheck in

			$isparttime)
							emphrs=4
							;;
			$isfulltime)
							emphrs=8
							;;
				       *)
							emphrs=0
							;;

		esac
		salary=$(($emphrs*$emprateperhrs))
		totalsalary=$(($totalsalary+$salary))

	done

	echo $totalsalary
