#!/bin/bash

#Rohit Prakash
#12/10/2021
#Read 'n' and generate a pattern given below( number increments from left to right)
#Sample Input : 4
#Sample Output :
#1
#1 2 
#1 2 3 
#1 2 3 4

read -p "Enter the number : " n

if [ $n -lt $((2**5)) -a $n -gt 2 ] 
then
	for i in `seq $n` 
	do
		for j in `seq $i` 
		do
			echo -n "$j "
		done
		echo
	done
else
	echo 'Error : Number out of range, Please enter 2 < number < 32'
fi
