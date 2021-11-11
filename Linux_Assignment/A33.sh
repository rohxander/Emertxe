#!/bin/bash

#Rohit Prakash
#10/10/2021
#Description :Write a script to replace 20% lines in a C file randomly and replace it with the pattern
<<comments
Sample Input : 
	./A33.sh file.txt
Sample Output :
	Before replacing
	******************
	Hai Hello
	Hai Hello
	Hai Hello
	Hai Hello
	Hai Hello
	Hai Hello


	After replacing
	*****************
	Hai Hello
	Hai Hello
	<-------Deleted------->
	Hai Hello
	Hai Hello
	Hai Hello

Sample Input :	
	./A33.sh 
Sample Output :
	Error : Please pass the argument through command line.
Sample Input :	
	./A33.sh file.txt asdfs
Sample Output :
	Error: Please enter only 1 file name.
Sample Input :	
	./A33.sh file.txt
Sample Output :
	Error: The file should contain more than 5 lines

comments

percentage=20						#percentage of random lines to delete
lowerLimit=$((100/$percentage))		#calculating lowerLimit below which the replaceCount would be less than 1
echo $lowerLimit
if [ $# -eq 0 ]             #True if CLA not present
then
    echo "Error:Please pass the file name through command line."    
elif [ $# -gt 1 ]           #True if CLAs are more than 1
then
    echo "Error: Please enter only 1 file name."    
else
	if [ -f $1 ]            #True if CLA is a file
	then
	    if [ -s $1 ]        #True if CLA is not empty
		then
	        totalLines=`wc -l $1 | cut -d " " -f1`       #count number of lines
	        totalLines=$(($totalLines+1))						#actual number of lines 
	        if [ $totalLines -gt $lowerLimit ]                  #True if number of lines are greater than lowerLimit
	        then
	            echo "Before replacing"
	            echo '******************'
	            cat $1                         
	            echo
	            replaceCount=$(($(($totalLines * $percentage )) / 100 ))     # get Number of lines to replace
	            value=(`shuf -i 1-$totalLines -n $replaceCount`) #assigning random numbers of count=replaceCount from totalLines into array to avoid repetition
	           
	            for i in ${value[@]}       					#iterating through all random line numbers from array
	            do
	                sed -i $i's/.*/<-------Deleted------->/g' $1     #Replacing with pattern.
	            done
	            echo
	            echo "After replacing"
	            echo '*****************'
	          	cat $1                              #Displaying content of file after replacing.
	          	echo
	        else
	          echo "Error: The file should contain more than 5 lines"     
	        fi
	    else
	        echo "Error: $1 is an empty file. So can't replace the string"  
	    fi
	else 
	    echo "Error: No such file."         
	fi
fi

