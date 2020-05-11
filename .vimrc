"   __     _____ __  __ ____   ____          _ _   _ 
"   \ \   / /_ _|  \/  |  _ \ / ___|        | | | | |
"    \ \ / / | || |\/| | |_) | |   _____ _  | | |_| |
"     \ V /  | || |  | |  _ <| |__|_____| |_| |  _  |
"      \_/  |___|_|  |_|_| \_\\____|     \___/|_| |_|
                                                 




let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wildmenu
set wrap
set showcmd
set hlsearch
exec "nohlsearch"
set incsearch
set tabstop=4
map <LEADER><CR> :set nohlsearch


set wildmenu


inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

map s <nop>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>


map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical +5<CR>
map <LEADER><right> :vertical -5<CR>

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

map tu :tabe<CR>
map tn :-tabnext<CR>
map tb :+tabnext<CR>


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set encoding=utf-8
let &t_ut=''
set backspace=indent,eol,start

let &t_SI="\<Esc>]50;CursorShape=1\x7" 
let &t_SR="\<Esc>]50;CursorShape=2\x7" 
let &t_EI="\<Esc>]50;CursorShape=0\x7" 

set laststatus=2


"                            _                                   
"                      _ __ | |_   _  __ _ ___                   
"    _____ _____ _____| '_ \| | | | |/ _` / __|_____ _____ _____ 
"   |_____|_____|_____| |_) | | |_| | (_| \__ \_____|_____|_____|
"                     | .__/|_|\__,_|\__, |___/                  
"                     |_|            |___/                       


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'junegunn/vim-peekaboo'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Valloric/YouCompleteMe'

call plug#end()

" ============
" ===snazzy===
" ============
color snazzy
let g:SnazzyTransparent = 1




" ==============
" ===NERDtree===
" ==============
map tt :NERDTreeToggle<CR>





" =========
" ==YCM====
" =========
let g:ycm_autoclose_preview_window_after_completion = 1
