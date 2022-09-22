#!/bin/bash

#This script is an example of passing two parameters (Two arguments of your script) into variables for the script.

var1=1
var2=2

#Below we will use the -n to check the variable value.

if [[ -n $var1  && $var2 ]];
then
   echo "The variable: var1 is $var1"
   echo "---------------------------"
   echo "The variable: var2 is $var2"
fi
exit 0