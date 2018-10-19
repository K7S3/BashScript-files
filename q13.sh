#!/bin/bash
num=$1
to_roman ()
{
    number=$1
    factor=$2
    rchar=$3
    remainder=$(($number - $factor))
    while [ "$remainder" -ge 0 ]
    do
        echo -n $rchar
        number=$(($number - $factor))
        remainder=$(($number - $factor))
    done  
    return $number
}
to_roman $num 500 D
num=$?
to_roman $num 400 CD
num=$?
to_roman $num 100 C
num=$?
to_roman $num 90 XC
num=$?
to_roman $num 50 L
num=$?
to_roman $num 40 XL
num=$?
to_roman $num 10 X
num=$?
to_roman $num 9 IX
num=$?
to_roman $num 5 V
num=$?
to_roman $num 4 IV
num=$?
to_roman $num 1 I
echo

