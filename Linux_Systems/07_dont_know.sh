#!/bin/bash

read -p "Enter the string: " str

if [ -z $str ] 
then 
	echo The String is empty
else
	echo The String is not empty
fi
