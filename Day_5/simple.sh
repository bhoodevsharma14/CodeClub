#!/bin/bash -x

is_present=1
randomCheck=$((RANDOM%2))
if [ $is_present -eq $randomCheck ]
then
	echo Present
else
	echo Absent
fi
