call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'danilo-augusto/vim-afterglow'
" Required for Gblame in terminal vim
Plug 'godlygeek/csapprox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
call plug#end()
" 
" This is for markdown-build composer"
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction
source ~/.vim/settings.vim
