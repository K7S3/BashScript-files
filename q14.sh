#!/bin/bash
a=("$@")

for ((i=0; i < $#;i++))
do
for ((j=0; j < $# ;j++))
do
if [ ${a[$i]} -ge ${a[$j]} ]
then
t=${a[$i]}
a[$i]=${a[j]}
a[$j]=$t
fi
done
done
for (( i=0; i < $#; i++ ))
do
printf "%s " ${a[$i]}
done
echo ""
