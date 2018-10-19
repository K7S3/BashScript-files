#!bin/bash
for i in *.txt
do
var="$(grep -e $1 $i | wc -l)" 
if [ "$var" -gt 0 ]
then
echo "$var lines in $i"
flag=1
fi
done
if [ "$flag" == 1 ]
then
exit 0
else
exit 1
fi
