#!/bin/bash

echo -e  "welcome to user utility tool\n "
echo "1-useradd" 
echo "2-userdel"
echo "3-userslist"

echo -e "please enter your choice 1 , 2 , or 3 \n"

read choice 

echo "you entered choice $choice"

if [ $choice -eq 1 ] 
then    echo "this is useradd script"
else
	if [ $choice -eq 2 ] 
	then	echo "this is user delete script"
	else
		if [ $choice -eq 3 ] 
		then	echo "this is list last 10 users script"
		else 	echo "not valied choice"
		fi
	fi
fi


