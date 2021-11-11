#!/bin/bash

#Rohit Prakash
#9/11/2021
#Description : WAS to print contents of a directory without ls command
<<comments
Sample Input : 
	./A27.sh
Sample Output :
	Contents of current directory are :
	A25.sh A26.sh A27.sh
Sample Input : 
	./A27.sh 
Sample Output :
	Contents of current directory are :
	A25.sh A26.sh A27.sh
Sample Input : 
	./A27.sh /home/rohxander/Linux_Assignment ~
Sample Output :
	/home/rohxander/Linux_Assignment :
	A01.sh A02.sh A03.sh A04.sh A05.sh A06.sh A07.sh A08.sh A09.sh A10.sh A11.sh A12.sh A13.sh A14.sh A15.sh A17.sh A18.sh A19.sh A20.sh A21.sh A22.sh A23.sh A24.sh A25.sh A26.sh A27.sh A28.sh A29.sh A30.sh A31.sh A32.sh A33.sh A34.sh file.txt FILE.txt IMAGES sample2.sh sample.sh

	/home/rohxander :
	Advanced_C Advanced_C_Assignments Desktop Documents Downloads error.txt Hell Hell* Linux_Assignment Linux_Systems Music num.txt out.txt Pictures Public rohit.txt Rohit.txt snap Templates Videos

comments

if [ $# -gt 0 ]            #True if CLA count is greater than 0
then
    for i in $@            #Iterating through each CLA
    do
      if [ -d $i ]         #True if CLA is directory
      then
          cd $i            #change directory to CLA directory
          echo `pwd` :     #Displaying the present working directory.
          echo *           #Displaying the contents of CLA directory
          cd ..            #Coming out of the current working directory.
      else
          echo Error:Cannot access ‘$i’ : No such a file or directory.        
      fi
      echo					#gap between each CLA
    done
else
    echo Contents of current directory are :           
    echo *                  #Displaying the contents of current directory.
fi