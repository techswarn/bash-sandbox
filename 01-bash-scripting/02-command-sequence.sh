#!/bin/bash

# tar -cjf ~/photo.tar.bz2 ~/photo &&
#   echo "tar - OK" > results.txt  ||
#   ( echo "tar - FAILS" > results.txt ; exit 1 ) -- > Subprocess, does not exit

# cp -f ~/photo.tar.bz2 ~/backup &&
#   echo "cp - OK" >> results.txt  ||
#  ! echo "cp - FAILS" >> results.txt 


tar -cjf ~/photo.tar.bz2 ~/photo &&
  echo "tar - OK" > results.txt  ||
  { echo "tar - FAILS" > results.txt ; exit 1 ; }

cp -f ~/photo.tar.bz2 ~/backup &&
  echo "cp - OK" >> results.txt  ||
 ! echo "cp - FAILS" >> results.txt 