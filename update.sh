#!/bin/bash

#Build Script 1 Nicole Navarrete 8/4/22
#In order to initiate this cronjob, I first changed into the directory where crontab is located by doing cd /etc and edited the crontab with temporary root privileges using sudo nano crontab. Then created a new cronjob line 00 23 * * 5 root /home/ubuntu/bin/update.sh which will run this script which is located in my user, ubuntu, bin directory as root. This script will update the server weekly, reaching out to websites for updates, on Friday at 11 pm and generate a file on my user, ubuntu, desktop with the date appended to its name, and inside the file will be what was updated on the server. Nicole Navarrete 8/3/22.

sudo apt update > /home/ubuntu/Desktop/$(date +"%m_%d_%Y")update.txt
