#!/bin/bash -x

#A. 1ft=12in then 42in=?ft

echo			A.
inc=42
ft=$(($inc/12))
i=$(($inc%12))
echo $ft.$i ft

#B. Rectangular Plot of 60 feet x 40 feet in meters (1ft=12inc)(1inch=2.54cm)(100cm=1m)(1ft=0.0328083m)

echo 			B.

awk 'BEGIN{print 60*0.3048*40*0.3048 " Sq Meter"}'


#C. Calculate area of 25 such plots in acres

echo			C.

awk 'BEGIN{print 25*60*0.3048*40*0.3048/43560 " Acre"}'
