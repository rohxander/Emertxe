#!/bin/bash

#Rohit Prakash
#15/10/2021
#Description : Write a script to print chess board

echo							#top padding space
echo 							#top padding space
for i in `seq 8`        # number of rows = 8
do
   for j in 1 2         # prints same row twice to increase height of each block
   do 
   	echo -e -n "\033[0m        " 	     #indenting whole chess board to right (left padding space)
     	for k in `seq 8`	# number of columns = 8
     	do
     		c=`expr $((i+k)) %  2`       	 # 0 if sum is even else 1    
	      if [ $c -eq 0 ]				 	 # if sum is even then echo white else echo black
	      then
	         echo -e -n "\033[47m    "   #change color setting to white
	      else
	         echo -e -n "\033[40m    "   #change color setting to black
	      fi
      	done
      	echo ""				#jump to next line after row complete
    done
done

echo -e "\033[0m"      #default color setting   
echo 
echo                 
                                