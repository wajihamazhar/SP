#!/bin/bash

UNIX=("Debian" 'Red hat' "Ubuntu" "Suse" "Fedora")
echo ${UNIX[*]}
echo ${#UNIX[*]}
echo ${#UNIX[2]}
echo ${UNIX[*]:2:2}
echo ${UNIX[*]/Ubuntu/SCOUnix}
UNIX=(${UNIX[*]} AIX HP-UX)
echo ${UNIX[*]}
unset UNIX[2]
echo ${UNIX[*]}
LINUX=(${UNIX[@]})
echo ${LINUX[*]}
BASH=(${UNIX[@]} ${LINUX[@]})
echo ${BASH[*]}
unset UNIX[@]
unset LINUX[@]
echo ${LINUX[*]}
echo ${UNIX[*]}
