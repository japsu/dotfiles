#!/bin/bash

grep -q 'dotfiles/bash' $HOME/.bashrc || (echo 'source $HOME/Work/dotfiles/bash/*.bash' >> $HOME/.bashrc)
ln -sf $HOME/Work/dotfiles/git/gitconfig $HOME/.gitconfig
