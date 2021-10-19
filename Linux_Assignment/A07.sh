#!/bin/bash

#Rohit Prakash
#18/10/2021
#Description : Write a script to delete empty lines from a file
#Sample Input : $ A07.sh file.txt
	#Empty lines are deleted.
#Sample Input : $ A07.sh 
	#Error: Please pass the file name through command line.
#Sample Input : $ A07.sh file.txt
	#Error: file.txt is empty, So cannot delete the empty lines.

file=$@
if [ $# -ne 0 ]
then	
	if [ -s $file ]
	then
		sed -i '/^[[:space:]]*$/d' $file
		echo Empty lines are deleted.
	else
		echo  Error: $file is empty, So cannot delete the empty lines.
	fi
else
	echo Error: Please pass the file name through command line.
fi
