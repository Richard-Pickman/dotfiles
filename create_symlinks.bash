#!/usr/bin/env bash

if ! ln -s ~/dotfiles/bash/.bashrc ~/.bashrc; then
  echo "Unable to create .bashrc symlink"
fi

if ! ln -s ~/dotfiles/nvim ~/.config/nvim; then
  echo "Unable to create nvim symlink"
fi

if ! ln -s ~/dotfiles/terminator/ ~/.config/terminator; then
  echo "Unable to create terminator symlink"
fi
