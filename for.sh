#!/bin/bash
echo -e "\e[1mStarting first example...\e[0m"
for var in {1..10};
do
  echo $var
done
echo -e "\e[1mEnd first example.\e[0m\n"

echo -e "\e[1mStarting second example...\e[0m"
for var in $(seq 1 5 100);
do
  echo $var
done
echo -e "\e[1mEnd second example.\e[0m\n"

# The 'seq' command generates a sequence according to the specified parameters

# `seq 100` generates a sequence that goes from 1 to 100 by incrementing 1
echo -e "\e[1mStarting third example...\e[0m"
for var in $(seq 100);
do
  echo $var
done
echo -e "\e[1mEnd third example.\e[0m\n"

# `seq 50 100` generates a sequence that goes from 5 to 100 by incrementing 1
echo -e "\e[1mStarting fourth example...\e[0m"
for var in $(seq 50 100);
do
  echo $var
done
echo -e "\e[1mEnd fourth example.\e[0m\n"

# `seq 25 5 75` generates a sequence that goes from 25 to 75 by incrementing 5
echo -e "\e[1mStarting fifth example...\e[0m"
for var in $(seq 25 5 75);
do
  echo $var
done
echo -e "\e[1mEnd fifth example.\e[0m"

