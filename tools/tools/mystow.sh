export DOTFILES=~/Github/0myproj/dotfiles
 
pushd >/dev/null 2>&1
cd $HOME
ls -ald .$1*;
mkdir -p $DOTFILES/$1;
mv .$1* $DOTFILES/$1;
if [[ -d ".config/$1" ]];then
    mkdir -p $DOTFILES/$1/.config;
    mv .config/$1* $DOTFILES/$1/.config/;
fi
stow --dir=$DOTFILES --target=$HOME -vv $1
popd >/dev/null 2>&1
