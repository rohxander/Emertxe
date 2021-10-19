#!/bin/bash
read -p "Enter a  number : " num
if [ $num -gt 50 ]
then
	echo The number $num is greater than 50
elif [ $num -lt 40 ]
then
	echo The number $num is less than 40
else
	echo The number $num is less than 50 '&' greater than 40
fi
