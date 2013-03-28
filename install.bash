#!/bin/bash

grep -q 'dotfiles/bash' $HOME/.bashrc || (echo 'source $HOME/Work/dotfiles/bash/*.bash' >> $HOME/.bashrc)
ln -sf $HOME/Work/dotfiles/git/gitconfig $HOME/.gitconfig
ln -sf $HOME/Work/dotfiles/vim/vimrc $HOME/.vimrc

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $HOME/Work/dotfiles/ssh/config $HOME/.ssh
