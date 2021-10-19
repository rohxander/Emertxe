#!/bin/bash

read -p "Enter the number : " n

if [ $n -lt 40 -a $n -gt 30 ]
then
	echo $n is less than 40 and greater than 30
else
	echo $n is not less than 40 and greater than 30
fi
