#!/bin/bash

#Rohit Prakash
#10/11/2021
#Description : Write a script that locks down file permissions for a particular directory
<<comments
Sample Input : 
	./A24.sh
Sample Output :
	Error: Please pass the directory in command line.
Sample Input : 
	./A24.sh IMAGES FILES
Sample Output :
	Pass only one directory.
Sample Input : 
	./A24.sh IMAGES 
Sample Output :
	Before locking
	total 28888
	-rwxrwxrwx 1 rohxander rohxander    1765 Nov  1 00:59 A16.sh
	-rw-rw-rw- 1 rohxander rohxander 5003399 Mar 23  2018 ok001.jpg
	-rw-rw-rw- 1 rohxander rohxander 5058743 Mar 23  2018 ok002.jpg
	-rw-rw-rw- 1 rohxander rohxander 5191403 Mar 23  2018 ok003.jpg

	After locking
	total 28888
	-rwx------ 1 rohxander rohxander    1765 Nov  1 00:59 A16.sh
	-rw------- 1 rohxander rohxander 5003399 Mar 23  2018 ok001.jpg
	-rw------- 1 rohxander rohxander 5058743 Mar 23  2018 ok002.jpg
	-rw------- 1 rohxander rohxander 5191403 Mar 23  2018 ok003.jpg

comments

if [ $# -eq 0 ]                     #True if CLA not present
then
    echo "Error: Please pass the directory in command line."         
elif [ $# -gt 1 ]                 #True if CLA count is greater than 1
then
    echo "Pass only one directory."   
else
	if [ -d $1 ]
	then
	    echo "Before locking"
	    ls -l $1                             #Displaying the file permissions of the directory before locking.
	    chmod -R go-rwx $1        			 #Removing permissions for group and others Recursively
	    echo                                 
	    echo "After locking"      
	    ls -l $1                              #Displaying the file permssions of the directory after locking.
	else
		echo Error : $1 is not a directory
	fi
fi