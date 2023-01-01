# !/bin/bash

array=()
while IFS= read -r -p "Next item (end with an empty line): " line; do
    [[ $line ]] || break  # break if line is empty
    array+=("$line")
done

read -r -p "put index from: " x
read -r -p "put index to: " y

for i in ${array[@]:x:y}; do
    echo "$i"
done