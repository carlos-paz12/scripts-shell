#!/bin/bash

listDirectory() {
    if [ -d $1 ];
    then
        ls -l $1
    else
        echo "Is not directory"
    fi 
}

echo -n "Enter a directory: "
read directory

listDirectory $directory