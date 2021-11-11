#!/bin/bash

#Rohit Prakash
#9/10/2021
#Description : Write a script to determine whether a given file system or mount point is mounted
<<comments
Sample Input : 
	./A26.sh tmpfs
Sample Output :
	File-system tmpfs is mounted on /run/user/1000 and it is having 1% used space with 1214776 KB free.
Sample Input : 
	./A26.sh ooops
Sample Output :
	ooops is not mounted.
Sample Input : 
	./A26.sh 
Sample Output :
	Error : Please pass the name of the file-system through command line.
comments

if [ $# -eq 0 ]            #True if CLA is not present
then
    echo Error : Please pass the name of the file-system through command line.    
else
    array=(`df | tr -s " " | cut -d " " -f1`)            #Extracting the filesystem names and storing it into an array.
    index=-1                                              #Initialising index with value 0
    for i in `seq 0 1 $((${#array[@]} - 1 ))`            #iterating through all elements of array
    do
        if [ $1 = ${array[$i]} ]                         #True if CLA matches any element in array
        then 
            index=$i                                     #index assigned value of i
        fi
    done
    if [ $index -eq -1 ]                                  #Checking if index value is still -1
    then
        echo "$1 is not mounted."                     
    else
        mount=(`df | tr -s " " | cut -d" " -f6`)         #get mount points array
        used=(`df | tr -s " " | cut -d" " -f5`)          #get used space array
        freespace=(`df | tr -s " " | cut -d" " -f4`)     #get freespace array
		
		echo "File-system $1 is mounted on ${mount[$index]} and it is having ${used[$index]} used space with ${freespace[$index]} KB free."                                                        #Printing message.
    fi
 fi