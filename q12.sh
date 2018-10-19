#!/bin/bash
ping -c $1 google.com | xargs -n1 -i bash -c 'echo `date` " {}"'| while read output
do
echo -e "\e[1;31m$output"
read output
echo -e "\e[1;32m$output"
read output 
echo -e "\e[1;33m$output"
read output
echo -e "\e[1;34m$output"
read output
echo -e "\e[1;35m$output"
done
echo -en "\e[0m"
