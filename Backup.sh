#!/bin/bash

# @Author : Siddhi Naik, CWID: A20444173
#The Shell Script backs up all the files present in a directory to another specific directory
# And adds an extension.bak to the file


hostname=`hostname`
whoami=`whoami`

if [ -d Backup ]; then
touch Backup

else
mkdir Backup
fi


for file in *
do 
if [ -f $file ]; then
  cp $file Backup/${file}.bak
  echo "File named: $file is found and copied to backup"
  echo "checking for next one"

elif [ ! -f $file ]; then
  echo "Not a file ! skipping to next"
fi
done

exit 0