#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : WAS to print the 5th line of a file passed through command line
<<comments
Sample Input : 
	./A23.sh file.txt
Sample output:
	line number 5

Sample Input : 
	./A23.sh file.txt
Sample output:
	Error : file has only $count lines. So can't print 5th line.
Sample Input : 
	./A22.sh
Sample Output :
	Error : Please pass file name on command line.
Sample Input :
	./A22.sh oops
Sample Output :
	Error : No such a file. 
comments

if [ $# -eq 0 ] 	#true if CLA does not exist 
then
	echo "Error : Please pass file name in command line "
elif [ -f $1 ] 		#true if CLA is a file
then
	count=`cat $1 | wc -l` 						#get the number of lines	
	count=$(($count+1))							#get actual number of lines
	if [ $count -ge 5 ] 						#true if count is greater then or equal to 5
	then
		line=`cat $1 | head -5 | tail -1` 		#get the fifth line
		echo "$line"
	else
		echo "Error : file has only $count lines. So can't print 5th line."
	fi
else
	echo "Error : No such a file. "
fi
