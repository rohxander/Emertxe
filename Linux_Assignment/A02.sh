#!/bin/bash

#Rohit Prakash
#12/10/2021
#Read 'n' and generate a pattern given below(number increasing from Top to bottom)
#Sample Input : 4
#Sample Output : 
#1
#2 3
#4 5 6
#7 8 9 10

read -p "Enter the number : " n

if [ $n -lt $((2**5)) -a $n -gt 2 ] 
then
	for i in `seq $n` 
	do
		for j in `seq $i` 
		do
			((var = var + 1))
			echo -n	"$var " 
		done
		echo
	done
else
	echo "Error : Number out of range, Please enter 2 < number < "$((2**5))""
fi

