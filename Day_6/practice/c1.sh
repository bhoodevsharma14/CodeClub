#!/bin/bash -x

function indegC
{
	C=`echo $(($1-32)) |awk '{print $1*5/9 }'`
	echo $C Degree Celsius
}


indegC 212

function indegF
{
	D=`echo $1 |awk '{print $1*9/5 +32 }'`
	echo $D Degree Fahrenheit
}

indegF 100

