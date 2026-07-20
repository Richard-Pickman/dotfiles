#!/usr/bin/env bash

source "constants"

#if [[ -f "$base/$master_file" ]]; then
#	echo "This appears to be the master system due to the presence of $base/$master_file."
#	echo "Aborting symlink creation."
#	exit 1
#else
#	echo "This does not appear to be the master system. Installing configuration files."
#fi

symlink_setup() {
  base_file=$1
  link_file=$2
  if [[ -f "$link_file" ]] || [[ -d "$link_file" ]] || [[ -L "$link_file" ]]; then
    if [[ -L "$link_file" ]]; then
      if [[ $(readlink "$link_file") == "$base_file" ]]; then
        echo "$link_file exists and is linked to: $base_file"
        return
      else
        echo "$link_file exists but is not linked to: $base_file"
        echo "$link_file is linked to $(readlink $link_file)"
        exit 1
      fi
    else
      echo "$link_file exists but is not a symlink"
      exit 1
    fi
  fi
  echo "attempting to create: $link_file"
  if ! ln -s "$base_file" "$link_file"; then
    echo "Unable to create $link_file!"
    exit 1
  fi
  if [[ $(readlink "$link_file") == "$base_file" ]]; then
    echo "$link_file created and is linked to $base_file"
  fi
}

symlink_setup "$base/bashrc" "$HOME/.bashrc"
symlink_setup "$base/nvim" "$HOME/.config/nvim"
