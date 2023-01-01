# !/bin/bash

array=()
while IFS= read -r -p "Next item (end with an empty line): " line; do
    [[ $line ]] || break  # break if line is empty
    array+=("$line")
done

sum=0
for num in ${array[@]}; do
    sum=$(($sum+$num))
done

echo "sum of input is $sum"


        