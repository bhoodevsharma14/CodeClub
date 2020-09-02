#!/bin/bash -x


# 1. Employee is present or absent

	atdn=$((RANDOM%2))

	if [ $atdn -eq 1 ]
		then
			echo Present
		else
			echo Absent
	fi


# 2. Employee Wages

	if [ $atdn -eq 1 ]
		then
			EmpRatePerhr=20
			EmpHr=8
			Salary=$(($EmpRatePerhr*$EmpHr))
		else
			Salary=0
	fi

	echo Salary=$Salary
