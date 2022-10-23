#!/bin/bash
#Practicing for loop

for i in $(cat ip_file.txt);
 do ping -c 1 $i;
 
done 
