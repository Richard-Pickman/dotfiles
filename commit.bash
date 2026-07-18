#!/usr/bin/env bash

git add -f *

if [ "$#" -eq 0 ]; then
  printf "Enter commit message: "
  read commit_message
else
  commit_message="$*"
fi

git commit -m "$commit_message"
