#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : Write script to print contents of file from given line number to next given number
<<comments
Sample Input : 
	./A17.sh 5 3 myfile.txt
Sample Output :
		line number 5
		line number 6
		line number 7
Sample Input :
	./A17.sh myfile.txt
Sample Output :
		Error  : arguments missing!
		Usage  : ./A17.sh <start_line> <uptoline> <filename>
		For eg : ./A17.sh 5 5 file.txt
Sample Input :
	./A17.sh 5 10 myfile.txt
Sample Output :
		Error: myfile.txt is having only 10 lines, file should have at least 14 lines.
Sample Input :
	./A17.sh 0 2 myfile.txt
Sample Output :
		Error : Please enter valid non-zero line numbers
Sample Input :
	./A17.sh 5.3 10 myfile.txt
Sample Output :
		Error : Please enter valid line numbers
comments

if [ $# -ne 0 ]							#true if CLA present
then
	if [ $# -eq 3 ]						#true if no of CLA is 3
	then
		if [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$  ]]	#true if both numbers are integers
		then
			if [[ $1 -ne 0 && $2 -ne 0 ]]			#true  if both numbers are not zero 
			then
				if [[ -f $3 ]]							#true if 3rd CLA is file
				then
					noOfLines=`wc -l $3 | awk '{ print $1 }' `		#getting 1st argument of wc command for lines
					noOfLines=$(($noOfLines + 1))					#adding 1 to get actual number of lines
					upperLimit=$(($1 + $2 - 1 ))					#getting desired upperlimit
					if [ $upperLimit -lt $noOfLines ]				#true if desired upperlimit is less than noOfLines
					then
						cat $3 | head -$upperLimit | tail -$2   	#printing the desired set
					elif [ $upperLimit -eq $noOfLines ] 			#true if desired upperlimit is equal to noOfLines
					then
						cat $3 | head -$upperLimit | tail -$2 		#printing the desired set
						echo ""										#printing an echo after printing last line of file
					else
						echo Error: $3 is having only $noOfLines lines, file should have at least $upperLimit lines.
					fi	
				else
					echo Error : File $3 does not exist !
				fi
			else
				echo Error : Please enter non-zero integers
			fi
		else
			echo Error : Please enter non-zero integers
		fi
	else
		echo 'Error  :  arguments missing!'
		echo 'Usage  : ./A17.sh <start_line> <uptoline> <filename>'
		echo 'For eg : ./A17.sh 5 5 file.txt'
	fi
else
	echo Error : No arguments passed !
fi