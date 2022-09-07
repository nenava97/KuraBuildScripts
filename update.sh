#!/bin/bash

#Build Script 1 attempt 2 Nicole Navarrete 8/22/22
#Need to change executability of file first by running following command in terminal chmod +x update.sh
#To initiate this cronjob, I first changed into the directory where crontab is located by doing cd /etc 
#Edited the crontab with temporary root privileges using command sudo nano crontab. 
#Then created a new cronjob line 0 23 * * 5 root /home/nicole/bin/update.sh 
#which will run this script which is located in my user bin directory as root therefore not requiring the user to enter a password. 
#This script will update the server libraries weekly on Friday at 11 pm and generate a file with the date appended to its name, and inside the file will be what was updated.

#Creates a file with date and time appended with the file containing the output of the commands to update and upgrade the server.
sudo apt update && sudo apt upgrade -y > /home/nicole/$(date +"%m_%d_%Y")update.txt
