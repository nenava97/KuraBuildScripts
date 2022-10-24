#!/bin/bash
#Nicole Navarrete
#October 23, 2022 Version 2
#This script creates a new group GitAdd on the system as well as a new user who is added to that group. Afterwards the user is promted to confirm they would like to add and commit changes in Git for a particular documemt they are working in. After they confirm the script will check if there is any potential sensitive information in the file before pushing to GitHub. If there is potential sensitive info, the script will inform the user to change before pushing. 
#Anyone can run this script, they do not have to be a superuser.

#The user must enter the correct shell information, the script will not verify if it is an actual shell.
#Creating the user if they don't already exist

echo "Are you already a user? (y/n)"
read resp
resp=$(echo $resp | cut -c1-1 | tr [:upper:] [:lower:])
if [ $resp = "no" ];
  then 
    echo "Welcome, let's make you a new user."
    echo "What is your first and last name?"
    read name
    name=$(echo $name | awk '{print substr ($1,1,1) $NF}')
    echo "What shell will you be in?"
    read shell

#update the password file

    echo "What will be your password?"
    read password
    echo "$name:$password | chpasswd"
    echo "Your user account was successfully created."

#Creating the GitAcc group first if it doesn't already exist and then creating a user and placing the user into the GitAcc group.
#This script is specifically geared towards making the GitAcc group, if want to use other groups this would have to be manually changed throughout the script.

check=$(less /etc/group)
there=$(grep -o GitAcc $check)
      if [[ $there == GitAcc ]]; 
        then 
        echo "The GitAcc Group exists, your new user will be added."
      else 
        sudo groupadd GitAcc
        echo "You will be a member of the GitAcc Group which was just created."
      fi

#Storing information in new user account

    echo "Creating your user account now."
    sudo useradd -g GitAcc -m -s $shell $name;
 
#Adding existing user to the GitAcc group

else
  echo "What is your username?"
  read oldUsr

#The user will be prompted to enter their password so if they write it in wrong the script will not continue.

urThere=$(grep -o $oldUsr $members)
    if [[ $urThere == $oldUsr ]];
      then 
        echo "Adding you to the GitAccount group now  you in now."
        #Storing information in new user account
        sudo useradd -g GitAcc -m -s $shell $name;
    else
      echo "Sorry could not find that user."
    fi

#Once the user is ready to GIT ADD and COMMIT, this will do it for them.
#This script must be run in a repository where the user already has a Git account set up in order for it to run. 
#If the user is not ready to commit the script will exit and they will have to run the whole script again when ready.

echo "Are you ready to add? (y/n)"
read ans
ans=$(echo $ans | cut -c1-1 | tr [:upper:] [:lower:])
echo $ans

if [ $ans = "y" ];
  then 
    echo "File name?";
    read fname;
    echo "Commit name?";
    read comname;
    [ git add $fname ] && [ git commit -m $comname ];
else 
    echo "No problem, come back when you are ready!"
fi

#Checking the file for sensitive information like phone numbers or SSN before pushing.
#If the file has a string of numbers matching the set up of a phone number or SSN then the system will not allow the user to push until it is altered regardless if it is actually a phone number or SSN.

phone=$(egrep -l "[[:digit:]]{3}[[:punct:]][[:digit:]]{3}-[[:digit:]]{4}" $fname)
echo $phone
ssn=$(egrep -l "[[:digit:]]{3}-[[:digit:]]{2}-[[:digit:]]{4}" $fname)
echo $ssn

while [ -n $phone ] || [ -n $ssn ];
do echo "$fname might have sensitive phone or ssn information included. Please check and change before pushing this file.";
exit
done 

if [ -z $phone ] || [ -n $ssn ];
  then 
    git push $fname
    echo "You have successfully pushed your first commit."
fi
done
