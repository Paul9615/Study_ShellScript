# !/bin/bash

echo -n "Enter Filename: "
read name

if [ -f "$name" ]; then
sort $name | uniq | tee sorted.txt
else
echo "No $name in $pwd... try again"
fi
exit 0
