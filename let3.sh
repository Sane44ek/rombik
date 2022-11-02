#!/bin/bash

declare -a string
read -p "first string:" -r a
while IFS="" read -r -n 1 c; do
	sring1=("$c")
done <<<$a

read -p "second string:" -r b
while IFS="" read -r -n 1 c; do
        sring2=("$c")
done <<<$b
string=(""${a[@]}""${b[@]}"")
#readarray -td '' sort_str < <(printf '%s\0' "${string[@]}" | sort -z -u)
echo "${string[@]}" | grep -o . | sort -u | tr -d "\n"
echo
exit 0
