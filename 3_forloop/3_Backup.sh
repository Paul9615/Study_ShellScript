# !/bin/bash

file="$@"

for f in $file
do
	if [ -f ${f}.txt ];then
		echo "skip $f file"
		continue
	fi
	/bin/cp $f ../$f.sh
done
