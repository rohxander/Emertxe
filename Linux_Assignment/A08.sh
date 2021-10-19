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
elif [ $# -lt 3 ]
then
	echo Error : Please pass 3 arguments.
else
	case $2 in
		+)
			echo $1 + $3 | bc 
			;;
		-)
			echo $1 - $3 | bc 
			;;
		x)
			echo "$1 * $3" | bc  
			;;
		/)
			echo " scale=2 ;$1 / $3" | bc
			;;
		*)
			echo unknown operation
			;;
	esac
fi

