#!/bin/bash
#Author : Alphonse Ngandjui
#Creation Date: 2022-10-29
#Descrition: Automate account creation for new employees.
#Modification Date:

echo "#### ENTER YOUR PERSONNAL INFORMATION #####"
echo 
echo "Enter your first name"
read fname
echo "Enter your last name"
read lname
echo "Enter your email address"
read email
echo "Enter your Profession"
read prof
echo "Create a username"
read uname
echo "Enter your Password"
read pss
cat /etc/passwd |grep -q -i $uname
	if
	[ $? -eq 0 ]
	then
	echo "ERROR $uname Already exist"
	echo "PLEASE CHOOSE ANOTHER USERNAME"
	exit 0
	fi
useradd $uname -c "$fname $lname; $prof; $email"; echo $pss | passwd --stdin $uname
