#!/bin/bash

#Nicole Navarrete 10.23.22
#This script practices scp & ssh by demonstrating remote login & file transfer functions
#Note: User should know the password for remote user
#Bug:assuming that user inputs are correct 
#Provide a menu to user to select ssh (remote login) or scp (transfering files from remote systems)
echo "Would you like to 1 ssh or 2 scp?"
read ans

#Based on user selection ask for user name and ip-address. Bug: script assumes that the key.pem to ssh in in the directory script is being run in
if [ $ans = "1" ];
  then
    echo "What's the username?"
    read usr
    usr=$(echo $usr | tr '[[:upper:]]' '[[:lower:]]')      
    echo "What's the ip-address?"
    read ip
    ssh -i key.pem $usr@$ip
#For scp ask user for direction of copy
elif [ $ans = "2" ];
  then 
    echo "Moving files remote to local?"
    read res
    res=$(echo $res | tr '[[:upper:]]' '[[:lower:]]')

#remote to local
    if [ $res = "yes" ];

#copy file to destination home directory with same source file name
      then
        echo "What is the remote username?"
        read rem
        echo "What is the remote IP address or host?"
        read host
        echo "What is the path to this remote file?"
        read path
        echo "What is the local path you'd like for this file to go?"
        scp $rem@$host:$path $local
      elif [ $res = "no" ]

#local to remote
        then echo "Moving files local to remote?"
        read ment
        ment=$(echo $ment | tr '[[:upper:]]' '[[:lower:]]')
        if [ $ment = "yes" ];
          then
          echo "What is the file name?"
          read file
          echo "What is the remote username?"
          read ru
          echo "What is the remote path you'd like for this file to go?"
          read rpath
          scp $file $ru@$rip;$rpath
        else echo "That is not a valid response, please try again when ready."
        fi
      else echo "That is not a valid response, please try again when ready."
      fi
else echo "That is not a valid response, please try again when ready."
fi
exit
