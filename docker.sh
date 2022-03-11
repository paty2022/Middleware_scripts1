#!/bin/bash


        #Description:This script will install docker in the CentOS OS.        
        #Author: Fleur Yeboah
        #Date : March 9, 2022
        #About this script: This script will remove all older versions of docker in your system and install a new one.

echo "Beginning the installation of Docker on your CentOS system..."
sleep 2
echo "1- Removing all older versions of docker. Please wait..."
sleep 3
echo
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
sleep 3
echo "2- Some packages are required for docker installation. Let's go ahead and install them."
sleep 4
echo
sudo yum install -y yum-utils cached hostfile -y
sleep 3
echo
echo "3- Now configuring docker repository. Hang in, you're almost there..."  
sleep 4
echo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
 sleep 2
echo
echo
echo "Installing docker-ce..."
echo 
sleep 4
sudo yum install docker-ce docker-ce-cli containerd.io
sleep 3
echo
echo "4- Let's start docker-ce..."
sleep 4
echo
sudo systemctl start docker
sudo systemctl enable docker
echo
sleep 1
echo "Verifying docker status..."
sleep 4
sudo systemctl status docker
echo 
sleep 2
echo
echo "Success! Docker installed on your system."