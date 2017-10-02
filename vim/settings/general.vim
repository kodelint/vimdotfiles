"========================================================
""                 Good to have settings
"========================================================
set cursorline                     "Get a cursor line"
set relativenumber
set history=1000                   "Store lots of :cmdline history
set showcmd                        "Show incomplete cmds down the bottom
set showmode                       "Show current mode down the bottom
set gcr=a:blinkon0                 "Disable cursor blink
set visualbell                     "No sounds
set autoread                       "Reload files changed outside vim
let mapleader=","                  "Map Leader key to comma
nmap <silent> // :nohlsearch<CR>   "Turn highlighting off
set encoding=utf8
syntax on
set magic
filetype plugin on
au FileType python setl ts=4 sts=4 sw=4 et tw=79
au BufRead,BufNewFile Vagrantfile set filetype=Vagrant
au FileType Vagrant setl ts=2 sts=2 sw=2 tw=78 syntax=ruby
au FileType INSTALL setl ts=2 sts=2 sw=2 et tw=79 syntax=sh
""========================================================
"                 Disable Arrow keys
""========================================================
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"========================================================
"                 Toggle Paste
"========================================================
nnoremap ,p :set paste! nopaste?<CR>

"========================================================
"                 WQ,wQ, Wq all are same
"========================================================
:command WQ wq
:command Wq wq
:command W w
:command Q q

"========================================================
"                   Toggle Paste
"========================================================
nnoremap ,n :set number! nonumber?<CR>

"========================================================
"                    Splits Commands
"========================================================

"========================================================
"             Copy filename and Path via VIM
"========================================================
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nnoremap ,sp :echo expand("%:p")<CR>

"========================================================
"                    Key Mappings
"========================================================
nnoremap 0 ^  " Take me to first character of the line
nnoremap ^ 0

"========================================================
"                    Ruby indentation
"========================================================
au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2

"========================================================
" ,q to toggle quickfix window (stuff like Ag)
" ,oq to open it back up (rare)
"========================================================
nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

"Move back and forth through previous and next buffers
"with ,z and ,x
"========================================================
"Move back and forth through previous and next buffers
"                 with ,z and ,x
"========================================================
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

"========================================================
" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s.
"========================================================
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
