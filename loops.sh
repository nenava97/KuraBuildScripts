#!/bin/bash

echo "Pick a number"
read b

while [ $b -lt 4 ];
 do echo "$b is less than 4"
 ((b++)) 
done 