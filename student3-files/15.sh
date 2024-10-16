#!/bin/bash

read -p "Please enter the file name: " n

if [[ -f $n && -w $n && -x $n ]]
then
	echo "File is regular, writable, and executable"
elif [[ ! -f $n ]]
then
	echo "File is not a regular file"
elif [[ ! -w $n && ! -x $n ]]
then
	echo "File is not writable and executable"
elif [[ ! -w $n ]]
then
	echo "File is not writable"
elif [[ ! -x $n ]]
then
	echo "File is not executable"
else
	exit 1
fi
