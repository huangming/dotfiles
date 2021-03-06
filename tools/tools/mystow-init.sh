#!/bin/bash

export DOTFILES=~/Github/0myproj/dotfiles
 
pushd >/dev/null 2>&1
cd $HOME
ls $HOME/.$1*  >/dev/null 2>&1
[ $? -eq 0 ] && ls -ald .$1*
\mkdir -p $DOTFILES/$1
[ -f $HOME/.$1* ] && mv -f .$1* $DOTFILES/$1;
if [ -d "$HOME/.config/$1" ];then
    \mkdir -p $DOTFILES/$1/.config;
    echo "mv .config/$1 $DOTFILES/$1/.config/;"
    \mv -f .config/$1 $DOTFILES/$1/.config/;
fi
ls $HOME/.config/$1* >/dev/null 2>&1
if [ $? -eq 0 ];then
    \mkdir -p $DOTFILES/$1/.config;
    echo "mv $HOME/.config/$1* $DOTFILES/$1/.config/;"
    \mv -f $HOME/.config/$1* $DOTFILES/$1/.config/;
fi
ls $HOME/.local/share/$1 >/dev/null 2>&1
if [ $? -eq 0 ];then
    \mkdir -p $DOTFILES/$1/.local/share;
    echo "mv $HOME/.local/share/$1* $DOTFILES/$1/.local/share/;"
    \mv -f $HOME/.local/share/$1* $DOTFILES/$1/.local/share/;
fi
stow --dir=$DOTFILES --target=$HOME -vv $1
popd >/dev/null 2>&1
