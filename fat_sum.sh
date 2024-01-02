#!/bin/bash
printResult() {
    echo -e "\nThe result is \e[32m$1\e[0m"
}

fat() {
    res=1
    for i in $(seq $1)
    do
        res=$(( $res * $i ))
    done

    printResult $res
}

sum() {
    res=0
    for i in $(seq $1)
    do
        res=$(( $res + $i ))
    done

    printResult $res
}

echo "WHAT IS?"
echo "[1] Fat"
echo "[2] Sum"

echo -n "Enter a operation: "
read op

echo -n "Enter a number: "
read number

if [ $op -eq 1 ]
then
    fat $number
elif [ $op -eq 2 ]
then
    sum $number
else
    echo "Invalid"
    exit
fi
