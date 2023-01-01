# !/bin/bash

array=()
while IFS= read -r -p "Next item: " line; do
    [[ $line ]] || break
    array+=("$line")
done

sum=0
for num in ${array[@]}; do
    if [ `expr $num % 2` -eq 0 ]; then
        sum=$(($sum+$num))
    else
        continue
    fi
done

echo "sum of even input is $sum"