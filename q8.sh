#!bin/bash
for i in "$@"
do
if [ -f "$i" ]
then
ls -l $i
fi
done

