#!/bin/bash
if [ $# -eq 0 ]; then
	echo "enter something"
exit 1
fi
word=()
j=0
for i in $@; do
	word[$j]=$i
	j=$j+1
done 
count=$(( ${#word[@]}-1 ))
for i in "${!word[@]}"; do
	echo -n ${word[$(( $count-$i ))]}
	echo -n " "
done
echo
##echo ${array[@]}
##echo ${#words[@]}
##echo ${words[@]}
exit 0
