#! /bin/bash

#Task01 to delete user 

echo  "Please enter user name you want to delete "
read name 

check=$(sed -n "/^$name/p"  /etc/passwd  |  awk -F ':' '{print $1}' )   
# check=$( awk -F ':' -v nname=$name '$1 == nname  {print $1}' /etc/passwd  ) 


if [ -n "$check" ]
	then
		userdel -r $name 
		echo "Congrats! user deleted successfully"
	else 
		echo "This user doesn't exist"
fi

