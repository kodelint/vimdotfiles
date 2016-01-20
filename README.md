This repo contains settings for various vim plugins and vim settings based on `vim-plug` plugin manager.

## Plugin Settings
Each plugins are in a separate file named `plugins.vim` under `${HOME}/vimdotfiles/`.
## VIM Settings
General vim overrides/settings should be put in a separate file named `settingname.vim` under `${HOME}/.vimdotfiles/vim/settings`.

### Install Instructions:
```bash
sh -c "`curl -fsSl https://raw.githubusercontent.com/git4sroy/vimdotfiles/master/install_vim.sh`"
```
### Instructions
The `install_vim.sh` downloads `vim-plug` and the repo `vimdotfiles` and creates symlinks
```bash
ln -s ${HOME}/.vimdotfiles/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.vimdotfiles/vim ${HOME}/.vim
```
### Looks matters :)

  <img src=http://i.imgur.com/5dIGKCw.jpg>

##Note:
I personally use `neovim`, checkout my dotfiles repo for [neovim](https://github.com/git4sroy/nvim-dotfiles.git). This is only for VIM, not all the remote nodes I work on have [neovim](https://neovim.io) installed. For more good stuff look at [zmesh](https://github.com/git4sroy/zmesh.git), A [ZSH](http://www.zsh.org) Framework.
