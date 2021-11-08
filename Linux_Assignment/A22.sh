#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : Shell script to convert string lower to upper and upper to lower
<<comments
Sample Input : 
	./A22.sh file.txt
Sample output:
	1 - upper to lower
	2 - lower to upper
	please select 1 or 2: 1
	LINE NUMBER 1
	LINE NUMBER 2

Sample Input : 
	./A22.sh file.txt
Sample output:
	1 - upper to lower
	2 - lower to upper
	please select 1 or 2: 1
	line number 1
	line number 2
Sample Input : 
	./A22.sh
Sample Output :
	Error : Please pass file name on command line.
Sample Input :
	./A22.sh oops
Sample Output :
	Error : File does not exists
comments


if [ $# -eq 0 ] 									#true if CLA not present
then
	echo "Error : Please pass file name on command line."
elif [ -e $1 ]										#true if file exists
then
	count=`cat $1 | wc -l`
	if [ $count -ne 0 ] 							#true if lines present in file
	then 
		echo "1 - lower to upper"
		echo "2 - upper to lower"
		read -p "please select 1 or 2 : " option
		case $option in
			'1')
				upper=`cat $1 | tr a-z A-Z`			#converting from lower to upper
				echo "$upper"
				;;
			'2')
				lower=`cat $1 | tr A-Z a-z`			#converting from upper to lower
				echo "$lower"
				;;
		esac
	else
		echo "Error : No  contents inside the file"
	fi
else
	echo "Error : File does not exists"
fi

