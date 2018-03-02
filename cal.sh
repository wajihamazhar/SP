#!/bin/bash

if [ $# != 0 ]
then
		echo 'Sum is:' `expr $1 + $2`
		echo 'Product is:' `expr $1 \* $2`
		echo 'Difference is:' `expr $1 - $2`
	   	if [ $2 = 0 ]
		then
			echo 'Wrong input'
		fi
		if [ $2 != 0 ]
		then
		echo 'Division is:' `expr $1 / $2`
		fi
		echo 'Mod is: ' `expr $1 % $2`		
fi
	read -p "Enter number1=" num1
	read -p "Enter number2=" num2
	if [ num2 != 0 ]
	then	
		echo 'Sum is:' `expr $num1 + $num2`
		#echo `expr $num1 + $num2`
		echo 'Product is:' `expr $num1 \* $num2`
		echo 'Difference is:' `expr $num1 - $num2`
		
		if [ num2 = 0 ]
		then
			echo 'Wrong input'
		fi
		if [ num2 != 0 ]
		then
		echo 'Division is:' `expr $num1 / $num2`
		fi
		echo 'Mod is: ' `expr $num1 % $num2`
fi
