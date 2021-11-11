#!/bin/bash

#Rohit Prakash
#2/10/2021
#Description : Write script called say_hello, which will print greetings based on time

<<comments
Sample Input : 
	(Open a new tab or terminal...)

Sample Output :
    Good Morning user, Have nice day!
	This is Thursday 08 in June of 2017 (10:44:10 AM)

comments


hour=`date +"%T" | cut -d ':' -f1`
if [ $hour -ge 5 -a $hour -lt 12 ]
then
	echo "Good Morning `whoami`, Have a nice day!"
elif [ $hour -ge 12 -a $hour -lt 14 ]
then
	echo "Good Noon `whoami`, Have a nice day!"
elif [ $hour -ge 14 -a $hour -lt 17 ]
then
	echo "Good Afternoon `whoami`, Have a nice day!"
elif [ $hour -ge 17 -a $hour -lt 21 ]
then
	echo "Good Evening `whoami`, Have a nice day!"
else
	echo "Good Night `whoami`, Have a nice sleep!"	
fi
echo "This is `date | cut -d " " -f1 ` `date | cut -d " " -f2 ` in `date | cut -d " " -f3 ` of `date | cut -d " " -f4 ` (`date | cut -d " " -f5` `date | cut -d " " -f6`)"
