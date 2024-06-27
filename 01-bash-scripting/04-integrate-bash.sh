#!/bin/bash
# Integrating backup script into Bash
# At the moment, we can run our backup script by its absolute or relative path. If we integrate it into Bash, we can call it by name. This is a convenient option when we use the script in pipelines or logical operators.
# These are three ways to integrate a script into Bash:
# Add the script’s path to the PATH variable. Edit the ~/.bash_profile file for that.
# Define the alias with an absolute path to the script. Do that in the ~/.bashrc file.
# Copy the script to the /usr/local/bin directory and make it executable:


#Combing the script with find command
#find ~/Documents -type f -name "*.pdf" -exec make-backup.sh {} \;



tar -cjf "$1".tar.bz2 "$@" &&
  echo "tar - OK" > results.txt ||
  { echo "tar - FAILS" > results.txt ; exit 1 ; }

cp -f "$1".tar.bz2 ~/backup &&
  echo "cp - OK" >> results.txt ||
  ! echo "cp - FAILS" >> results.txt