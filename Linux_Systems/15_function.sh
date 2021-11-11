#!/bin/bash

if [ $# -ne 0 ]
then
	function find_sum()
	{
		echo $1 + $2 - $3 | bc
	}
	echo The sum is `find_sum 10.5 -3 -3`
	res=`find_sum 2.25 10 -1.5`
	echo The result is $res
	echo The sum of all command line argument is `find_sum $@`
else
	echo CLAs are not passed !!
fi
