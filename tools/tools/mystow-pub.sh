#!/bin/bash

export DOTFILES=~/Github/0myproj/dotfiles
stow --dir=$DOTFILES --target=$HOME -vv $@
