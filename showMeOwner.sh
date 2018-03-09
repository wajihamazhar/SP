#!/bin/bash

# show files owned by the user passed as an rgument

showAllOwners()
{
	username=$1
	for i in `ls`
	do 
	   set `ls -li $i`
	   if [ $username=$4 ]
		then
		  echo "Filename : $i    |    Owner: $username"
	   fi

	done
	
}

if [ $# -eq 0 ]
then
	echo 'No arguments..'

elif [ $# -gt 1 ]
then 
	echo 'Greater than 1 arguments..'
else
	showAllOwners $1
fi
