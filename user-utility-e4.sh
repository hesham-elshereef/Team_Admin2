#!/bin/bash

###################  Functions  #####################

source /home/hesham/shellscript/fun-useradd3
source /home/hesham/shellscript/fun-userdel
source /home/hesham/shellscript/fun-listlast10users
####################################################

echo -e  "welcome to user utility tool\n "
echo "1-useradd" 
echo "2-userdel"
echo "3-userslist"

echo -e "please enter your choice 1 , 2 , or 3 \n"

read choice 

echo "you entered choice $choice"

case $choice in 
	1)   	useradd_script;;

	2)	userdel_script;;

	3)	listlast10users_script ;;

	*) 	echo "not valied choice" ;;   
esac

