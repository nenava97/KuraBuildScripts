#This script takes information on the system's running applications and creates a new file with date appended on desktop
#!/bin/bash

now=$(date "+%Y.%m.%d-%H.%M")
ps -eo pid,ppid,cmd,%cpu,%mem > /home/nicole/Desktop/file$now.txt
