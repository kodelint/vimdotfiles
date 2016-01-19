#!/bin/bash
ESCAPE="\033";

echo "${ESCAPE}[32mWelcome to ViM dotfiles setup${ESCAPE}[0m\n"
echo "${ESCAPE}[32mThis dotfile repo usages ${ESCAPE}[33mvim-plug${ESCAPE}[0m ${ESCAPE}[32mas plugin manager for vim, getting that from github${ESCAPE}[0m"
echo "${ESCAPE}[32mDownloading the required vim settings and plugin list ${ESCAPE}[0m\n"
git clone https://github.com/git4sroy/vimdotfiles ${HOME}/.vimdotfiles
echo "${ESCAPE}[32mLets create the symlink for ${ESCAPE}[32m.vimrc${ESCAPE}[0m"
ln -s ${HOME}/.vimdotfiles/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.vimdotfiles/vim ${HOME}/.vim
echo "${ESCAPE}[32mBoom plugins are on there way...${ESCAPE}[0m\n"
vim +PlugInstall +qall
