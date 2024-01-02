#!/bin/bash
echo "This process is $0 with PID $$"

echo "Killing..."
sleep $2

kill -9 $1

echo "The process with PID $1 was killed."

