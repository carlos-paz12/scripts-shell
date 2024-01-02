#!/bin/bash
echo "This process is $0 with PID $$"

echo -n "Enter a PID process that you want kill: "
read pid

echo -n "Enter a time (in seconds) of wait: "
read time

./kill_2.sh $pid $time
