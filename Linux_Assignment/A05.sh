#!/bin/bash

#Rohit Prakash
#23/10/2021
#Description : Write a script to find the larger number of 'n' number of arguments

#Sample Input :
# $./A05.sh 5 6 8 4 2 1
#Sample Output :
#	Largest value is 8
#Sample Input :
# $./A05.sh 9
#Sample Output :
#	Largest value is 9
#Sample Input :
# $./A05.sh
#Sample Output :
#	Error: No arguments passed

if [ $# -eq 0 ]
then
	echo Error : No arguments passed
else
	array=($@)
	largest=${array[0]}
	for i in `seq 0 1 $(($# - 1))` 
	do
		if [[ ${array[$i]} -gt $largest ]]
		then
			((largest=${array[$i]}))
		fi
	done
	echo The largest value is $largest
fi

