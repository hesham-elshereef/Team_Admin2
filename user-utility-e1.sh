#!/bin/bash

echo -e  "welcome to user utility tool\n "
echo "1-useradd" 
echo "2-userdel"
echo "3-userslist"

echo -e "please enter your choice 1 , 2 , or 3 \n"

read choice 

echo "you entered choice $choice"

if [ $choice -eq 1 ] 
then    
	echo "Please entre username"
	read username

	grep -w  "^$username" /etc/passwd

	if [ $? -eq 0 ]
	then
		echo "This user already exist"
	else
		echo "please enter password"

		read -s pw
		newpw=$(echo "$pw" | openssl passwd -6 -stdin)
		useradd -md /home/$username  -p $newpw  $username

		echo "congrats $username user is created"
	fi

else
	if [ $choice -eq 2 ] 
	then	echo "this is user delete script"
		#This script to delete user
		echo "Please entre username that you want to delete him"
		read username

		grep -w "^$username" /etc/passwd
		if [ $? -eq 0 ]
		then
		userdel -r $username
		echo "congrats $username user is deleted"
		else
		echo "This user doesn't exit"
		fi

	else
		if [ $choice -eq 3 ] 
		then	echo "this is list last 10 users script"
			tail -10 /etc/passwd | cut -d: -f 1,2,7

		else 	echo "not valied choice"
		fi
	fi
fi


