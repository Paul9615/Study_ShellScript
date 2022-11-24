# !/bin/bash

file='exm.txt'
while read line; do
	echo $line
	done < $file
