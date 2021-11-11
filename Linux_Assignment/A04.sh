#!/bin/bash

#Rohit Prakash
#23/10/2021
#Description : Write a script for addition of two numbers for real numbers also
# Sample Input :
# 	./A04.sh 25 + 41
# Sample Output :
#			25 + 41 = 67
# Sample Input :
#   ./A04.sh 10 x 5
# Sample Output :
# 			10 x 5 = 50
# Sample Input :
# 	./A04.sh 25 / 5
# Sample Output :
# 			25 / 5 = 5
# Sample Input :
# 	./A04.sh 10.2 – 5.6
# Sample Output :
# 			10.2 – 5.6 = 4.6
# Sample Input :
# 	./A04.sh
# Sample Output :
# 			Error : Please pass the arguments through command line.
# Sample Input :
# 	./A04.sh 2.3 + 6.7
# Sample Output :
#			2.3 + 6.7 = 9.0
# Sample Input :
# 	./A04.sh 3.4
# Sample Output :
#			Error:Please pass 3 arguments.

if [ $# -eq 0 ]
then
	echo Error : Please pass the arguments through command line.
elif [ $# -ne 3 ]
then
	echo Error : Please pass 3 arguments.
else
	case $2 in
		+)
			echo $1 '+' $3 '='  `expr "$1 + $3" | bc`
			;;
		-)
			echo $1 '-' $3 '='  `expr "$1 - $3" | bc` 
			;;
		x)
			echo $1 'x' $3 '='  `expr "$1 * $3" | bc`  
			;;
		/)
			echo $1 '/' $3 '=' `expr "scale=2; $1 / $3" | bc`
			;;
		*)
			echo unknown operation
			;;
	esac
fi

