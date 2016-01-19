#!/bin/bash

echo "Welcome to ViM dotfiles setup\n"
echo "This dotfile repo usages vim-plug as plugin manager for vim, getting that from github"
echo "Downloading the required vim settings and plugin list\n"
git clone https://github.com/git4sroy/vimdotfiles ${HOME}/.vimdotfiles
echo "Lets create the symlink for .vimrc"
ln -s ${HOME}/.vimdotfiles/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.vimdotfiles/vim ${HOME}/.vim
echo "Boom plugins are on there way...\n"
vim +PlugInstall +qall
