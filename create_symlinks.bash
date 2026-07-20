#!/usr/bin/env bash

source "constants"

if [[ -f "$base/$master_file" ]]; then
	echo "This appears to be the master system due to the presence of $base/$master_file."
	echo "Aborting symlink creation."
	exit 1
else
	echo "This does not appear to be the master system. Installing configuration files."
fi

if ! ln -s "$base/bash/.bashrc" "$HOME/.bashrc"; then
  echo "remove or rename .bashrc"
  exit 1
fi

if ! ln -s "$base/nvim" "$HOME/.config/nvim"; then
  echo "remove or rename nvim symlink"
  exit 1
fi

if ! ln -s "$base/terminator/" "$HOME/.config/terminator"; then
  echo "remove of rename terminator symlink"
  exit 1
fi
