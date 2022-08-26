#!/bin/bash

#Script 2 Nicole Navarrete 8/11/22

#This script asks the user if they would like to kill a process that exceeds memory usage of 512000Kb/500Mb or more

#bug: this script only kills the process using the most memory if equal to or exceeds threshold determined of 500Mb, it is not checking all processes, therefore will have to run in loop to ensure there are no processes running exceeding the threshold.

#Create  variables for the process cmd, pid, and mem% sorting by greatest using most memory % by sorting processes by greatest memory % usage

cmd=$(ps -eo %mem,pid,cmd --sort=-%mem | sed -n 2p | awk '{ print $3}');
pid=$(ps -eo %mem,pid,cmd --sort=-%mem | sed -n 2p | awk '{ print $2}');
mem=$(ps -eo %mem,pid,cmd --sort=-%mem | sed -n 2p | awk '{ print $1}' | sed 's:\.[^|]*::g');

#establish memory % treshold by dividing 512000Kb (which equals 500Mb) by the total memory on system which is recorded in MemTotal in Kb

threshold=$((calc 512000 / $(grep MemTotal /proc/meminfo | awk '{print $2}') *100) | tr -d "~" | sed 's:\.[^|]*::g');

#bug: in order for calculations to run the variables must be integers so delete all decimal values and any non numerical characters resulting in calculations to be estimates and not as accurate as they could be

#will ask user to kill the process using the most memory if memory % is equal to or exceeds threshold setting, and will continue to run in a loop until the process using the most memory is less than the threshold

while [ $mem -ge $threshold ];
do
	echo "Would you like to terminate process $cmd as it is taking up 500Mb or more of your system's memory? Y/n";
	read ans;
	ans=$(echo $ans | cut -c1-1 | tr [:upper:] [:lower:]);

	if [ $ans = "y" ];
	then kill -15 $pid;
	echo "Killed $pid"
	sleep 2
	echo "$cmd was terminated.";
	fi

	if [ $ans != "y" ];
        then echo "$pid $cmd was NOT terminated.";
        fi

pid=$(ps -eo %mem,pid,cmd --sort=-%mem | sed -n 2p | awk '{ print $2}');
mem=$(ps -eo %mem,pid,cmd --sort=-%mem | sed -n 2p | awk '{ print $1}' | sed 's:\.[^|]*::g');
sleep 2

#bug: need to ensure there is a pause between termination and continuing the loop for the process information to be accurate

done

echo "There are no processes taking up 500Mb or more of your system's memory."

exit 0
