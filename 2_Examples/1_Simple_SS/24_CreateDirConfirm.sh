# !/bin/bash
echo -n "enter directory name: "
read dire

if [ -d "$dire" ]; then
	echo "exist"
else 
	`mkdir $dire`
	echo "created"
fi
