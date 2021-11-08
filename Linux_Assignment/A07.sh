#!/bin/bash

#Rohit Prakash
#24/10/2021

#Description : Write a script to delete empty lines from a file

#Sample Input : $ A07.sh file.txt
#Sample Output:
	#Empty lines are deleted.
#Sample Input : $ A07.sh 
#Sample Output : 
	#Error: Please pass the file name through command line.
#Sample Input : $ A07.sh file.txt
#Sample Output :
	#Error: file.txt is empty, So cannot delete the empty lines.

file=$@
if [ $# -ne 0 ]										#checking if CLA present or not
then
	if [ -f $file ]									#checking if file or not
	then
		if [ -s $file ]								#checking size of file
		then
			sed -i '/^[[:space:]]*$/d' $file		#deleting all empty lines, lines with spaces or tabs as well
			echo Empty lines are deleted.
		else
			echo  Error: $file is empty, So cannot delete the empty lines.
		fi
	else
		echo Error: $file is not a file.
	fi
else
	echo Error: Please pass the file name through command line.
fi
