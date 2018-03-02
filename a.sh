#!/bin/bash

array=(`cat 'sample.txt'`)
echo ${array[*]}
echo ${#array[*]}
echo ${#array[3]}

