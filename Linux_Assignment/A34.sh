#!/bin/bash

<<comments
Rohit Prakash
23/10/2021
Description : Write a script to print a given number in reverse order
Sample Input :
	./A34.sh
	Enter the weight in Kg : 45.5
	Enter the height in meters : 1.5
	You are Normal.
Sample Input :	
	./A34.sh
	Enter the weight in Kg : 45.5
	Enter the height in meters : -1.5
Sample output 	
	Error : Invalid input
	Please enter only positive values
comments

read -p "Enter your weight in Kg : " weight
read -p "Enter your height in meters : " height

regex='^[+]?[0-9]*[.]?[0-9]+$'			#regex for all positive numbers including 0

regex2='^[+]?[0]*[.]?[0]+$'				#regex for all forms of 0. (0,0.0,00.00) from denominator

if [[ $weight =~ $regex && $height =~ $regex ]]		#true if matches regex
then
	if [[ ! $height =~ $regex2  ]] 					#true if does not matches regex2
	then

		height=`expr "scale=2; $height*$height " | bc` 	#square of height assigned to height itself
		bmi=`expr "scale = 2; $weight / $height " | bc` #divide height by height squared
		echo $bmi

		#categorising bmi by comparison

		if [[ `echo "$bmi < 18.5" | bc` -eq 1 ]]		#if bmi is less tha 18.5 then echo 
		then
			echo You are underweight
		elif [[ $bmi < 25 ]]							#if bmi is less tha 25 then echo
		then	
			echo You are Normal	
		elif [[ $bmi < 30 ]]							#if bmi is less tha 30 then echo
		then
			echo You are Overweight 
		else											#else echo obese
			echo You are Obese
		fi
	else
		echo Error : Invalid input
		echo Please enter only positive values			
	fi
else
	echo Error : Invalid input
	echo Please enter only positive values			#echo if both input values are not matching the regex
fi