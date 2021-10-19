#!/bin/bash

#Rohit Prakash
#16/10/2021
#Description : Write a script for addition of two numbers for real numbers also
#Sample Input :
	#Enter the numbers to do addition
	#Number 1 : 10.32
	#Number 2 : 20.45
#Sample Output :
	#The answer is 30.77
if [ $# -eq 0 ]
then
	echo Error : Please pass the arguments through command line.
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
	echo $largest
fi

