#!/usr/bin/env bash

source constants

git add -f *

if [[ -f "$base/$master_file" ]]; then
	echo "This appears to be the master system. Initiating commit."
else
	echo "This does not appear to be the master system due to the presence of $base/$master_file."
	echo "Aborting commit."
	exit 1
fi

if [ "$#" -eq 0 ]; then
  printf "Enter commit message: "
  read commit_message
else
  commit_message="$*"
fi

git commit -m "$commit_message"
