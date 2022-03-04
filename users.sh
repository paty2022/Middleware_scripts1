#!/bin/bash


#Description:This script is to verify that users exist on our system.
#Author : Fleur Yeboah
#Date : March 2, 2022


echo "Please enter your username:  "
echo
read U
echo
id $U
echo
if
[ $? -eq 1 ]
then
echo "User $U exists on this system."
else
echo "User $U does not exist on this system. Please contact system administrator."
sleep 1
echo " would you like to proceed with creating a new user? " 
while true
do
echo "Enter yes / no "
read n
if [ $n = "yes" ]
then
echo "Creating new User.Enter the username"
read new_user
useradd $new_user
echo "User $new_user was successfully created."
passwd $new_user
break
elif [ $n = "no" ]
then
echo "Thank you."
exit
fi
done
fi
