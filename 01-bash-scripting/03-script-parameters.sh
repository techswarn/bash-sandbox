#!/bin/bash

tar -cjf "$1".tar.bz2 "$1" &&
  echo "tar - OK" > results.txt  ||
  { echo "tar - FAILS" > results.txt ; exit 1 ; }

cp -f "$1".tar.bz2 ~/backup &&
  echo "cp - OK" >> results.txt  ||
 ! echo "cp - FAILS" >> results.txt 