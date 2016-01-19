#!/bin/bash
ESCAPE="\033";

echo "${ESCAPE}[32mWelcome to ViM dotfiles setup${ESCAPE}[0m\n"
echo "${ESCAPE}[32mThis dotfile repo usages ${ESCAPE}[33mvim-plug${ESCAPE}[0m ${ESCAPE}[32mas plugin manager for vim, getting that from github${ESCAPE}[0m"
curl -sfLo ${HOME}/.config/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "${ESCAPE}[32mDownloading the required vim settings and plugin list ${ESCAPE}[0m\n"
git clone https://github.com/git4sroy/vimdotfiles ${HOME}/.config/vim/vimdotfiles
cp -r ${HOME}/.config/vim/vimdotfiles/* ${HOME}/.config/vim/
rm -rf ${HOME}/.config/vim/vimdotfiles
echo "${ESCAPE}[32mLets create the symlink for ${ESCAPE}[32m.vimrc${ESCAPE}[0m"
ln -s ${HOME}/.config/vim/init.vim ${HOME}/.vimrc
echo "${ESCAPE}[32mBoom plugins are on there way...${ESCAPE}[0m\n"
# if [[ -f /usr/local/bin/nvim ]]
# then
#   nvim +PlugInstall +qall
# else
#   echo "${ESCAPE}[31m Please install nvim: brew install neovim/neovim/neovim${ESCAPE}[0m"
# fi
