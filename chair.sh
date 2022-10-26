#!/bin/bash
#the last incoming always!!!!!!!!! sits down penultimate
if [ $# -eq 0 ]; then
	echo "How much chairs?"
	exit 1
fi
count=$1
let a=($count - 1 )
echo $a
exit 0
