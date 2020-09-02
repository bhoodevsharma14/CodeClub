#!/bin/bash 

course=("java" "linux" "python" "dot.net")
echo "ALL THE ARRY ELEMENTS "${course[@]}
echo ${course[1]}
echo ${course[2]}
echo ${course[3]}
echo "Indexing" ${!course[@]}


course[10]="cloud computing"
echo ${course[@]}

echo "Indexing" ${!course[@]}

echo counting number of element ${#course[@]}

echo counting characters of index 0 element ${#course[0]}

echo deleting 5th element unset `${course[3]}`

echo ${course[@]}

echo ranging ${course[@]:2:5}
