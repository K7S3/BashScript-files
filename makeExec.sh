#!/bin/bash
if [ $# -eq 1 ]
then
if [ -f $1 ]
then
chmod u+x $1
else
echo "ERROR"
fi
else
echo "USAGE :Please, give only one argument"
fi
