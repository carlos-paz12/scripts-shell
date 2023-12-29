#!/bin/bash
var="Variable" # This declares and initializes a variable called "var"
VAR="Other variable" # This declares and initializes a variable called "VAR"

# Shell variables are case sensitive

echo $var # This displays the contents of the "var" variable in the terminal
echo $VAR # This displays the contents of the "VAR" variable in the terminal

# Declaration of empty variables
name=""
age=

# Trying to print empty variables prints a blank line
echo $name
echo $age

# The variable value can be within " ", ' ' or ` `
cell='11999861234' # Text only
user="Paz" # Allows you to interpolate variables
path=`pwd` # Commands only

echo $user
echo $cell
echo $path
