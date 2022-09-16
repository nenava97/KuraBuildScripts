#!/bin/bash

#Nicole Navarrete 9.12.22
#This script practices how to read a value from a user and create a pattern using loops.

#Taking input
read -p "How many rows do you want in your pyramid?:" rows
number=1

#Outer loop for printing number of rows in pyramid
for((i=1;i<=rows;i++))
do
    #Loop for printing 1st part
    for((j=1;j<=i;j++))
    do
        echo -n "$number "
        number=$((number + 1))
    done
        echo
done