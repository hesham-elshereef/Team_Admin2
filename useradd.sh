#!/bin/bash
#This script for add new user 

echo "Please enter username:"
read username

# Create user first
useradd -m -d "/home/$username" "$username"

# Set password
echo "Please enter password for $username:"
passwd "$username"

echo "Congrats! User $username is created successfully."
