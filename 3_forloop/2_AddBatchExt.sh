# !/bin/bash

dir=$1

for f in `ls $1/*`
do
mv $f $f.UP
done
