#!/bin/bash

(tar -cjf ~/photo.tar.bz2 ~/photo &&
  echo "tar - OK" > results.txt  ||
  ! echo "tar - FAILS" > results.txt ) &&
(cp -f ~/photo.tar.bz2 ~/backup &&
  echo "cp - OK" >> results.txt  ||
 ! echo "cp - FAILS" >> results.txt )