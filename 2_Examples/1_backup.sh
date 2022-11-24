# !/bin/bash

if [ -z $1 ]||[ -z $2]; then
	echo usage :$0 sourcedir targettidir
else 
	srcdir=$1
	dstdir=$2
	backupfile=backup.$(date+%y%m%d%H%M%S).tar.gz
	if [ -d $dstdir ]; then
		tar -cvzf $dstdir/$backupfile $srcdir
	else
		mkdir $dstdir
		tar -cvzf $dstdir/$backupfile $srcdir
	fi
fi
