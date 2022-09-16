#!/bin/bash

For i in $(cat ip_file.txt);
 do ping -c 1 $i;
 
done 