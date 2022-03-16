#!/bin/bash


        #Description: This is a script to conduct a basic inventory of your OS.
        #Author : Fleur Yeboah
        #Date : March 15, 2022



echo "Welcome! Let's go ahead and run a full inventory of your OS. "
sleep 2
echo
echo "Find the name and version of your kernel here.. "
sleep 1
uname -sor
sleep 3
echo
echo "The architecture of your OS is: "
sleep 1
uname -m
sleep 3
echo
echo "Here is some info about information all available or the specified block devices."sleep 1
lsblk
sleep 3
echo
echo "Your memory in MegaBites is..."
sleep 1
free -m
sleep 3
echo
echo "find  information on your os release below: "
sleep 1
cat /etc/os-release
sleep 3
echo
echo "Checking the CPU and memory utilization of your OS.
You can use the 'kill' command to terminate processes that are overloading your OS. Press CTRL + C to continue."
sleep 4
top
sleep 2
echo
echo "Your server has been up and running for: "
sleep 1
uptime
sleep 3
echo
echo "You're all set!"