#!/bin/bash

var1=$1
let i=0
let pariti=($var1 % 2)
if [ $pariti -ne 0 ]
then
	while [ $i -le $var1 ]
	do
	
	let width=($var1 - $i * 2 + 1)
	if [ $width -lt 0 ]
	then
		let a=( -$width/2 )
	else
		let a=( $width/2 )
	fi
	let j=0
	while [ $j -lt $a ]
	do
		echo -n " "
		let j=($j + 1)
	done
	let k=0
	let value=($var1 - 2 * $a)
	while [ $k -lt  $value ]
	do
		echo -n "."
		let k=($k + 1)
	done
	let j=0
	while [ $j -lt $a ]
	do
		echo -n " "
		let j=($j + 1)
	done
	let i=($i + 1)
	echo
	done
fi
if [ $pariti -eq 0 ]
then	
	let height=(2 * $var1 - 1)
	let i=0
	while [ $i -le $height ]
	do

        let width=($var1 - 1 - $i)
        if [ $width -lt 0 ]
        then
		let a=( -$width )
        else
                let a=( $width )
        fi
        let j=0
        while [ $j -lt $a ]
        do
                echo -n " "
                let j=($j + 1)
        done
	let k=0
	let value=($height / 2 - $a + 1)
        while [ $k -lt  $value ]
        do
                echo -n ". "
                let k=($k + 1)
        done
        let j=0
        while [ $j -lt $a ]
        do
                echo -n " "
                let j=($j + 1)
        done
	let i=($i + 1)
        echo

	done
fi


exit 0
