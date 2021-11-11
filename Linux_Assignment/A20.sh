#!/bin/bash

#Rohit Prakash
#2/10/2021
#Description : Write a script for generating random 8-character passwords including alpha numeric characters

<<comments
Sample Input : 
    ./A20.sh

Sample Output :
	4N+13L[n

comments

echo `cat /dev/urandom | tr -cd [:print:] | head -c8`  #cd deletes the non printable chars | first 8 char password from urandom file