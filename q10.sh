#!/bin/bash
var=$(users|wc -w)
var2=$(cat /etc/passwd | grep "/home"|cut -d: -f1|wc -l)
echo "$var OUT OF $var2 USERS ARE ONLINE RIGHT NOW"
