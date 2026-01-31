#!/bin/bash

<<info 
this shell scripts if user exists
info

read -p "Enter the Username to Check : " username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

echo "$count"

if [ $count == 0 ];
then
	echo "user does not exists"
else
	echo "user exists"
fi
