#!/bin/bash

#Nicole Navarrete 9.12.22
#This script practices scp & ssh by demonstrating remote login & file transfer functions
#Note: User should know the password for remote user

#Provide a menu to user to select ssh (remote login) or scp (transfering files from remote systems)
echo "Would you like to ssh or scp?"
read ans
ans=( $ans | tr '[:upper]''[:lower:]')
echo $ans

#Based on user selection ask for user name and ip-address.
if $ans= 'ssh';
then 
    echo "What's the username?"
    read usr
    echo "What's the ip-address?"
    read ip
    echo $ssh -i key.pem $usr@$ip 

#For scp ask user for direction of copy
elif $ans= 'scp';
then 
    echo "Moving files remote to local?"
    read res
    res=( $res | tr '[:upper]''[:lower:]')
#remote to local
    if $res= 

#local to remote.
#copy file to destination home directory with same source file name.
#Ask for source/destination file location. If no destination location is provided
#If user gives destination along with filename, keep that as destination filename.
#If user provides only destination location (no file name), keep as source file name
else;
echo "Come back when you are ready."
fi