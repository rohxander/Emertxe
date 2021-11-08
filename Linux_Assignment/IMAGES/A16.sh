#!/bin/bash

#Rohit Prakash
#30/10/2021
#Description : Given album name and corresponding directory, this scripts renames the jpg files with new name passed through command line
<<comments
Sample Input : 
((Before executing the script))
	$ ls
		DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg
	$ ./A16.sh day_out
Sample Output : 
	All .jpg files in current directory is renamed as
	day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
Sample Input : 
((Before executing the script))
	$ ls
		day_out001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg
	$ ./A16.sh day_out
Sample Output :
	Curent name & new name are same for day_out001.jpg 
	All .jpg files in current directory is renamed as
	day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
Sample Input : 
	$ ./A16.sh
Sample Output :
	Error : Please pass the prefix name through command line.
comments

prefix=$1    											#setting CLA as prefix
fileType=jpg											#defining fileType
imageList=(`ls *.$fileType`)							#getting the list of files into an array
if [ $# -ne 0 ]											#true if CLA exists
then
	for i in `seq 0 1 $((${#imageList[@]} - 1))`
	do
		oldName=${imageList[$i]}						#assignig current name to oldname variable
		num=`echo $oldName | tr -cd '[0-9]+'`			#extracting just the number from oldName
		newName=$1$num.$fileType						#setting newName as per requirement
		if [ $oldName = $newName ]						#true if current name and new name are same
		then
			echo Curent name '&' new name is same for ${imageList[$i]}     
		else
			mv $oldName $newName							#renaming the file
		fi
	done
	echo all .$fileType files have been renamed as 
	echo `ls *.$fileType`	
else
	echo Error : Please pass the prefix name through command line.
fi

