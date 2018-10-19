#!/bin/bash
read name
read var
now1=${var:6:4}
comp=${var:0:5}
cdate=`date +%m-%d-%Y`
now2=${cdate:6:4}
com2=${cdate:0:5}
if [ "$com2" == "$comp" ]
then
let age=now2-now1
echo "Happy Birthday, $name. You are $age years old today!"
fi
