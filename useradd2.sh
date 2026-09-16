#!/bin/bash
#This script for add new user
echo "Please entre username"
read username

echo "please enter password"

read -s pw  
newpw=$(echo "$pw" | openssl passwd -6 -stdin)
useradd -md /home/$username $username -p newpw

echo "congrats $username user is created"
