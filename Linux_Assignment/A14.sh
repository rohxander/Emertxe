#!/bin/bash

#Rohit Prakash
#1/10/2021
#Description : Write a script to rename a file/directory replaced by lower/upper case letters
<<comments
$ ls
File.txt MyScript.SH MyFile007.txt dir/ Assign1/ newfolder/

Sample Input :
	./A14.sh
Sample Output :
	Files are renamed in lowercase and directories are renamed in upper case

$ ls
file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/

comments

array=(`ls`)					#putting everything into array
for i in ${array[@]}			#iterating through every element
do
	if [ -d $i ]				#true if element is directory
	then
		newName=`echo $i | tr a-z A-Z `			#translate from lower to upper
		if [ $newName != $i ]					#true if newName and old name are not same
		then	
			mv $i $newName						#rename 
		fi
	else
		newName=`echo $i | cut -d '.' -f1 | tr  a-z A-Z `  #cut the name of file without extension & translate from upper to lower
		extension=`echo $i | cut -d '.' -f2 `			#cut the extension
		if [ `echo $newName.$extension` != $i ]			#true if oldname and newname are not same
		then 
			mv $i $newName.$extension					#rename with newfile name and same extension
		fi
	fi
done
echo "Files are renamed in lowercase and directories are renamed in upper case."