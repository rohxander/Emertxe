#!/bin/bash

#Rohit Prakash
#2/10/2021
#Description : Use pipes or redirection to create an infinite feedback loop.
<<comments
Sample Input : 
	./A24.sh
Sample Output :
Before loop file contents
Hai hello
After loop file contents
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello

comments

echo Hai Hello > file.txt                    #redirecting into file.txt       		 

echo "Before loop, file contents:"

cat file.txt                                 #printing file.txt   

echo "After loop, file contents:"

tail -f file.txt >> file.txt | tail -f file.txt 	#Adding the feedback using follow up from tail and creating an infinite feedback loop