#!/bin/bash
echo "Enter a file name to backup:"
read file_name

if [ -e $file_name ];
then

  backup_path=~/Backups/
  backup_file_name=$file_name.bk

  if [ ! -e $backup_path ];
  then
    mkdir $backup_path -m 751
    echo "Create $backup_path directory"
  fi

  cp $file_name $backup_path$backup_file_name
  echo "Successful backing up $file_name in $backup_path" 

else
  echo "File not found in the current directory"
fi

exit