#!/bin/bash

# Downloads all magpi releases until 75
mkdir $HOME/Downloads/magpi-issues
counter=1
while [ $counter -le 75 ]
do
  echo Downloading The MagPi Issue $counter
  if [ $counter -le 9 ]
  then
    wget -P $HOME/Downloads/magpi-issues/ https://www.raspberrypi.org/magpi-issues/MagPi0$counter.pdf
    ((counter++))
  else
    wget -P $HOME/Downloads/magpi-issues/ https://www.raspberrypi.org/magpi-issues/MagPi$counter.pdf
    ((counter++))
  fi
done

echo All done
