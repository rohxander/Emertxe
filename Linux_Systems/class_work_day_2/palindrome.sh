#!/bin/bash

read -p "Enter the number :" n

if [ $(( ${#n} % 2 )) -eq 0 ]
then
	echo even	
else
	echo odd
fi
