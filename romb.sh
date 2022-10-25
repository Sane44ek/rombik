#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Enter something"
fi
## rhombus width
var1=$1
## rhombus height
let height=(2 * $var1 - 1)
let i=0
## draw rhombus along the lines 
	while [ $i -le $height ]; do
		## count how much to retreat
        	let width=($var1 - 1 - $i)
        	if [ $width -lt 0 ]; then
			let a=( -$width )
        	else
                	let a=( $width )
        	fi
        	let j=0
		## retreat
        	while [ $j -lt $a ]; do
                	echo -n " "
                	let j=($j + 1)
        	done
		## count dots in a line 
		let k=0
		let value=($height / 2 - $a + 1)
        	while [ $k -lt  $value ]; do
                	echo -n ". "
                	let k=($k + 1)
        	done
		## spases after the drawing 
        	let j=0
        	while [ $j -lt $a ]; do
                	echo -n " "
                	let j=($j + 1)
        	done
		let i=($i + 1)
        	echo

	done
exit 0
