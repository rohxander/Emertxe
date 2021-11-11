#!/bin/bash

#Rohit Prakash
#27/10/2021
#Description : Write a script to print system information using commands
<<comments
Sample Input :
	./A13.sh
Sample Output :
	1. Currently logged users
	2. Your shell directory
	3. Home directory
	4. OS name & version
	5. Current working directory
	6. Number of users logged in
	7. Show all available shells in your system
	8. Hard disk information
	9. CPU information.
	10. Memory Informations
	11. File system information.
	12. Currently running process.
	
	Enter the choice : 2
	
	Your shell directory is /bin/bash
	
	Do you want to continue (y/n) ? y
	
	1. Currently logged users
	2. Your shell directory
	3. Home directory
	4. OS name & version
	5. Current working directory
	6. Number of users logged in
	7. Show all available shells in your system
	8. Hard disk information
	9. CPU information.
	10. Memory Informations
	11. File system information.
	12. Currently running process.
	
	Enter the choice : 13
	
	Error : Invalid option, please enter valid option
	
	Do you want to continue(y/n) ? n

comments


#defining the function 
A13 () {
echo "1. Currently logged in user"
echo "2. Your shell directory"
echo "3. Home Directory"
echo "4. OS name and version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File System information"
echo "12. Currently running process"
echo ""
read -p "enter the choice : " choice
echo ""
case $choice in
	'1') 
		echo "Currently logged in user : `whoami`" 
		;;
	'2')
		echo "Your shell directory : $SHELL" 
		;;
	'3')
		echo "Home Directory : $HOME" 
		;;
	'4')
    	echo "OS name and version : `uname -a`" 
		;;
	'5')
	    echo "Current working directory : `pwd`" 
		;;
	'6')
	    echo "Number of users logged in : `w`"  
		;;
	'7')
	   echo "Show all available shells in your system : "
	   cat /etc/shells
		;;
	'8')	
		echo "Hard disk information : "
		lsblk
		;;
	'9')
		echo "CPU information : "
		cat /proc/cpuinfo
		;;
	'10')
		echo "Memory information : "
		cat /proc/meminfo
		;;
	'11')
		echo "File System information : "
		df
		;;
	'12')
		echo "Currently running process : "
		ps
		;;
	*)
		echo "Error : Invalid option, please enter valid option"
		;;
esac
echo ""
echo -n -e "\033[1m Do you wish to continue (y/n) ? \033[0m " 
read k
echo ""
if [ $k = y ] #true if k is y
then
	A13	#recursive function calling
else
	exit	#exit from recursion
fi
}
#end of function

#initiating the code by calling the function
A13