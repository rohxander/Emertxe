#!/bin/bash

read -p "Enter the string: " str

if [ -n "$str" ] 
then 
	echo The String is not empty
else
	echo The String is empty
fi
