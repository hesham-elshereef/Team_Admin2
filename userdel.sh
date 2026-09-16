#!/bin/bash
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
