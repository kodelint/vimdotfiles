call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'chrisbra/color_highlight'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'xsunsmile/showmarks'
Plug 'chriskempson/base16-vim'
Plug 'sickill/vim-monokai'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'godlygeek/csapprox'
Plug 'gregsexton/gitv'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'sheerun/vim-polyglot'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'jtratner/vim-flavored-markdown'
Plug 'https://github.com/benekastah/neomake'
Plug 'nelstrom/vim-markdown-preview'
Plug 'skwp/vim-html-escape'
Plug 'davidhalter/jedi-vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'xolox/vim-misc'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rvm'
Plug 'vim-ruby/vim-ruby'
Plug 'keith/rspec.vim'
Plug 'skwp/vim-iterm-rspec'
Plug 'skwp/vim-spec-finder'
Plug 'ck3g/vim-change-hash-syntax'
Plug 'justinmk/vim-sneak'
Plug 'rking/ag.vim'
Plug 'vim-scripts/IndexedSearch'
Plug 'nelstrom/vim-visual-star-search'
Plug 'skwp/greplace.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'bootleq/vim-textobj-rubysymbol'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'vim-scripts/argtextobj.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neocomplete'
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/matchit.zip'
Plug 'kristijanhusak/vim-multiple-cursors'
Plug 'Keithbsmiley/investigate.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'bogado/file-line'
Plug 'mattn/webapi-vim'
Plug 'sjl/gundo.vim'
Plug 'skwp/YankRing.vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'vim-scripts/AutoTag'
Plug 'vim-scripts/lastpos.vim'
Plug 'vim-scripts/sudo.vim'
Plug 'goldfeld/ctrlr.vim'
Plug 'bling/vim-airline'
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
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
