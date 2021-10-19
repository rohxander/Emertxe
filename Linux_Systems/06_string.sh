#!/bin/bash

read -p "Enter the string: " str

str1=Happy

if [ $str = Hello ]
then
	echo The entered string is Hello
elif [ ${str} = "Emerxte" ]
then
	echo The entered string is Emertxe
elif [ $str = $str1 ]
then
	echo The entered string is $str1
else
	echo the entered string is $str
fi

