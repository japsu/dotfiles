#!/bin/bash

grep -q 'dotfiles/bash' $HOME/.bashrc || (echo 'for i in $HOME/Work/dotfiles/bash/*.bash; do source "$i"; done' >> $HOME/.bashrc)
grep -q 'nvm/nvm.sh' $HOME/.bashrc || (echo 'source $HOME/System/nvm/nvm.sh' >> $HOME/.bashrc)

ln -sf $HOME/Work/dotfiles/git/gitconfig $HOME/.gitconfig
ln -sf $HOME/Work/dotfiles/vim/vimrc $HOME/.vimrc

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $HOME/Work/dotfiles/ssh/config $HOME/.ssh
