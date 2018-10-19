#!/bin/bash
for (( i=1;i<=10;i++))
do
echo $((i*i)) 
done 
for (( i=1;i<=10;i++))
do
echo $((i**i))
done

echo "1"
prevsum=1
prevsum2=0
sum=1
for (( i=1;sum<89;i++))
do
sum=$(($prevsum+$prevsum2))
if ((sum%2!=0))
then
echo $sum
fi
prevsum2=$prevsum
prevsum=$sum
done
