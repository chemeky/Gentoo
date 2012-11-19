#!/bin/bash

shopt -s nullglob
 
cd ~/Pictures

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}

	((range)) && feh --bg-max "${files[RANDOM % range]}"

	sleep 5
done
