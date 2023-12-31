#!/bin/bash
echo "Discover a month of year!"

echo -n "Enter a number: "
read n

case $n in
  "1")
    echo "It's January" ;;
  "2")
    echo "It's February" ;;
  "3")
    echo "It's March" ;;
  "4")
    echo "It's April" ;;
  "5")
    echo "It's May" ;;
  "6")
    echo "It's June" ;;
  "7")
    echo "It's July" ;;
  "8")
    echo "It's August" ;;
  "9")
    echo "It's September" ;;
  "10")
    echo "It's October" ;;
  "11")
    echo "It's November" ;;
  "12")
    echo "It's December" ;;
  * )
    echo "Number not valid" ;
esac
