#!/bin/bash

#This script is an example of using an if then and elif operators.

var1=6

#Below we will use the -z to check if the variable is empty. Then we will use > and = inside the double brackets.

if [[ -z $var1 ]];
then
   echo "Please enter a parameter"
elif [[ $var1 > 5 ]];
then
   echo "The variable: var1 is $var1 is greater than 5"
elif [[ $var1 = 5 ]];
then
   echo "The variable equals 5"
   else
   echo "The variable: var1 is $var1 is less than 5"

fi
exit 0