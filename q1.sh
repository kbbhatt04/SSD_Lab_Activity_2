#!/bin/bash

lines=$(($(wc -l<$1)))

if [[ $(($lines % 2)) == 1 ]]
then
	let "lines=lines+1"
fi

let "lines=lines/2"

head -$lines $1 | tail -1
