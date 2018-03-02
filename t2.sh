#!/bin/bash

if [ $# = 0 ]
then
	echo "No arguments"

elif [ $# = 2 ]
then

	arr=(ls -l $1)	
	
	echo "OWNER: " ${arr[2]}

	echo "GROUP: " ${arr[3]}
	
	echo "PERMISSIONS: " ${arr[0]}

	echo "FILENAME: " $1

	if [ ${arr[2]} = $2 ]
	then
		echo "CHEATING: 0"
	else
		echo "CHEATING: 1"
	fi

elif [ $# = 5 ]
then
	arr1=(ls -l $2)

	arr2=(ls -l $4)	
	
	echo "OWNER: " ${arr1[2]}

	echo "GROUP " ${arr1[3]}

	echo "PERMISSIONS: " ${arr1[0]}

	echo "FILENAME: " $2



	echo "OWNER: " ${arr2[2]}

	echo "GROUP: " ${arr2[3]}

	echo "PERMISSIONS: " ${arr2[0]}

	echo "FILENAME: " $4

	echo "The difference between $2 and $4"

	diff -c $2 $4
	
	 v=$?	

	if [ $v = 1 ]

	then
		echo diff -y $2 $4
		echo "CHEATING: 0"
	else
		echo "no difference"
		echo "CHEATING: 1"
	fi

else
	echo "You Entered Wrong arguments"
fi