#!/bin/bash

echo "Welcome to ViM dotfiles setup"
echo "This dotfile repo usages vim-plug as plugin manager for vim, getting that from github"
echo "Downloading the required vim settings and plugin list"
git clone https://github.com/kodelint/vimdotfiles ${HOME}/.vimdotfiles
echo "Lets create the symlink for .vimrc"
ln -s ${HOME}/.vimdotfiles/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.vimdotfiles/vim ${HOME}/.vim
echo "Boom plugins are on there way..."
vim +PlugInstall +qall

