#!/bin/bash
#question1
df -H | awk '{print $1 ", " $5}'|while read output
do
use=$( echo $output | awk '{print $2}'| cut -d '%' -f1)

if [ "$use" -lt "$1" ]
then
	echo OK, $output
	elif [ "$use" -ge "$1" ] && [ "$use" -le "$2" ] 
then
	echo WARNING, $output
else 
	echo CRITICAL, $output
fi
done
