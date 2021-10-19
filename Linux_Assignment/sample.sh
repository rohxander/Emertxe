	
#!/bin/bash

#Rohit Prakash

#16/10/2021

#Description : Write a script for addition of two numbers for real numbers also

#Sample Input :

	#Enter the numbers to do addition

	#Number 1 : 10.32

	#Number 2 : 20.45

#Sample Output :

	#The answer is 30.77



echo "Enter the numbers to do addition"

read -p "Enter 1st number : " num1

read -p "Enter 2nd number : " num2

if [[ $num2 =~ ^[-+]?[0-9]*[.]?[0-9]+$ && $num1 =~ ^[-+]?[0-9]*[.]?[0-9]+$ ]]

then

	echo "The answer is `echo $num1 + $num2 | bc` "

else

	echo Error : Please enter only integers or real numbers

fi