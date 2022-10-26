#!/bin/bash
b=()
i=0
while read input; do
	b[$i]+="$input"
	i=$i+1
done
if [ ${#b[@]} -eq 0 ]; then
        echo "z"
        exit 1
fi

res=0
for i in "${!b[@]}"; do
	code=$(( printf "%d" "${b[$i]}" ))
	res=$(( $res+$code-96 ))
done
over=0
while (( $res -gt 122 )); do
	res=$res - 122
	over=1
done
sum=$(( $res + 96 ))
printf "\\$(printf '%03o' "${res[1]}")"
if ((over == 1)); then
	echo "//overfilling"
fi
exit 0

