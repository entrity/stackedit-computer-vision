#!/bin/bash

BASE=/shares/mar
LOG="$HOME/backup.log"

function backup ()
{
	DIR="$1"
	echo rsync -rat "$BASE/$DIR" "virmach:"
	rsync -rat "$BASE/$DIR" "virmach:" >> "$LOG"
}


date >> "$LOG"
echo "$0 ${@}" >> "$LOG"

if [[ $1 == all ]]; then
	backup Documents
	backup Photos
	backup 'Music (Sheet Music)'
	backup Comics
	backup Music
else
	for arg in "${@}"; do
		backup $arg
	done
fi
