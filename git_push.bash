#!/usr/bin/env bash

source constants

if [ ! -f "$master_file" ]; then
	echo "This does not appear to be the master system!"
	exit 1
fi

git push -u origin "$(git branch --show-current)"
