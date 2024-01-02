#!/bin/bash
clear

print() {
  echo -e "| \e[32m$1 $op $2 = $res\e[0m\n"
}

add() {
  op="+"
  res=$(( $1 + $2 ))
  print $1 $2 $op $res
}

sub() {
  op="-"
  res=$(( $1 - $2 ))
  print $1 $2 $op $res
}

mul() {
  op="*"
  res=$(( $1 * $2 ))
  print $1 $2 $op $res
}

div() {
  op="/"
  res=$(( $1 / $2 ))
  print $1 $2 $op $res
}

while [ -e $0 ];
do
  echo "|-----------------------------------|"
  echo -e "|            \e[1mCARLCULATOR\e[0m            |"
  echo "|-----------------------------------|"
  echo "|                                   |"
  echo -e "|              \e[1mOptions\e[0m              |"
  echo -e "|               \e[34m1 Add\e[0m               |"
  echo -e "|               \e[34m2 Sub\e[0m               |"
  echo -e "|               \e[34m3 Mut\e[0m               |"
  echo -e "|               \e[34m4 Div\e[0m               |"
  echo -e "|               \e[1;31m0 Exi\e[0m               |"
  echo "|                                   |"
  echo "|-----------------------------------|"
  echo -e "|          by \e[1;36mcarlos-paz12\e[0m          |"
  echo "|-----------------------------------|"
  
  echo -en "\n| \e[1mEnter a option -> \e[0m"
  read op

  if [ $op -lt 0 ] || [ $op -gt 4 ];
  then
    clear
    echo -e "\e[31m$op is a not valid. Please, choice a valid option.\e[0m\n\n"
    continue
  elif [ $op -eq 0 ]
  then
      clear
      echo -e "\e[1mBye! :p\e[0m"
      exit 
  fi

  echo -en "\n| \e[1mEnter a first number: \e[0m"
  read x
  echo -en "| \e[1mEnter a second number: \e[0m"
  read y

  case $op in
    "1")
      echo -e "\n\n| \e[1mResult:\e[0m" 
      add $x $y ;;
    "2")
      echo -e "\n\n| \e[1mResult:\e[0m" 
      sub $x $y ;;
    "3")
      echo -e "\n\n| \e[1mResult:\e[0m" 
      mul $x $y ;;
    *)
      if [ $y -eq 0 ];
      then
        clear
        echo -e "\e[31mImpossible divide by 0.\e[0m\n\n"
        continue
      else
        echo -e "\n\n| \e[1mResult:\e[0m" 
        div $x $y
      fi ;;
  esac
done