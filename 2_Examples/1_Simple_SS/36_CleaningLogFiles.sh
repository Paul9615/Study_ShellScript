# !/bin/bash

# the path is exiting log file
LOG_DIR=/var/log
cd $LOG_DIR

cat /dev/null > message
cat /dev/null > wtmp
echo "Logs cleande up"

# this script need log file
