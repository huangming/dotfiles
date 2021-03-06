#!/bin/bash

export DOTFILES=/home/`whoami`/Github/0myproj/dotfiles
stow --dir=$DOTFILES --target=$HOME -vv $@
