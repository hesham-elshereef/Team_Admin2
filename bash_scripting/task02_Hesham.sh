#! /bin/bash
#Task02 to add user

echo  "Please enter user name you want to add "
read name

check=$(sed -n "/^$name/p"  /etc/passwd  |  awk -F ':' '{print $1}' )
#check=$( awk -F ':' -v nname=$name ' $1 == nname  {print $1}' /etc/passwd  )
if [ -z  $check ]
        then
                useradd -md /home/$name -s /bin/bash  $name
		echo "Please enter password for $name "
                passwd $name  
                echo "Congrats! user added successfully"
        else
                echo "This user already exist"
fi


#grep -w -q  "^$name" /etc/passwd
#if [ $?  -ne  0  ]
#        then
#                useradd -md /home/$name -s /bin/bash  $name
#                echo "Please enter password for $name "
#                read -s  pw 
# 		newpw=$(echo "$pw" | openssl passwd -6 -stdin)
#                echo "Congrats! user added successfully"
#        else
#                echo "This user already exist"
#fi

