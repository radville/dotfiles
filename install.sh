#!/bin/bash

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x
rm -f $HOME/.zshrc
ln -s $(pwd)/zshrc $HOME/.zshrc
ln -s $(pwd)/gitmessage $HOME/.gitmessage
mkdir -p $HOME/.config/gh
ln -s $(pwd)/gh_config.yml $HOME/.config/gh/.config.yml
ln -s $(pwd)/bash_profile $HOME/.bash_profile
