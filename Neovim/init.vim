"   __     _____ __  __ ____   ____          _ _   _ 
"   \ \   / /_ _|  \/  |  _ \ / ___|        | | | | |
"    \ \ / / | || |\/| | |_) | |   _____ _  | | |_| |
"     \ V /  | || |  | |  _ <| |__|_____| |_| |  _  |
"      \_/  |___|_|  |_|_| \_\\____|     \___/|_| |_|



let mapleader=" "
let g:mapleader=" "

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
set shiftwidth=4
set autoindent
set showmatch
set laststatus=2
set scrolloff=7
set timeoutlen=350
set shell=/usr/bin/zsh
set wildmenu

inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>
inoremap <M-i> <Home>
inoremap <M-o> <End>
noremap H ^
noremap L $
nnoremap ; :
nnoremap J 5j
nnoremap K 5k

imap <C-s> <C-o>:update<CR>
nmap <C-s> :update<CR>
vmap <C-s> <C-c>:update<CR>

tnoremap <Esc> <C-\><C-N>
map <LEADER><CR> :set nohlsearch<CR>
map s <nop>
map Q :q<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize+5<CR>
map <LEADER><right> :vertical resize-5<CR>

map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
map px :r !xclip -sel c -o<CR>

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

map ta :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap " ""<ESC>i
" inoremap < <><ESC>i
" inoremap ' ''<ESC>i
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

" 中文输入法在normal模式下切换问题
let g:input_toggle = 0
function! Fcitx2en()
let s:input_status = system("fcitx-remote")
if s:input_status == 2
let g:input_toggle = 1
let l:a = system("fcitx-remote -c")
endif
endfunction

function! Fcitx2zh()
let s:input_status = system("fcitx-remote")
if s:input_status != 2 && g:input_toggle == 1
let l:a = system("fcitx-remote -o")
let g:input_toggle = 0
endif
endfunction

autocmd InsertLeave * call Fcitx2en()
autocmd InsertEnter * call Fcitx2zh()


"                            _                                   
"                      _ __ | |_   _  __ _ ___                   
"    _____ _____ _____| '_ \| | | | |/ _` / __|_____ _____ _____ 
"   |_____|_____|_____| |_) | | |_| | (_| \__ \_____|_____|_____|
"                     | .__/|_|\__,_|\__, |___/                  
"                     |_|            |___/                       


call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/space-vim-dark'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-peekaboo'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'godlygeek/tabular' 
Plug 'voldikss/vim-floaterm'
Plug 'ianva/vim-youdao-translater'

call plug#end()


" ====================
" ===space-vim-drak===
" ====================
colorscheme space-vim-dark
hi Conmment cterm=italic
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE


" ============
" ===snazzy===
" ============
""color snazzy
""let g:SnazzyTransparent = 1


" ==============
" ===NERDtree===
" ==============
map tt :NERDTreeToggle<CR>



" =============
" ===Rainbow===
" =============
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 1
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces


" =========
" ===YCM===
" =========
let g:ycm_autoclose_preview_window_after_completion = 1


" ================ 
" ===indentLine===
" ================
let g:indentLine_enable = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" ============== 
" ===markdown===
" ==============
let g:vim_markdown_math=1  "数学公式高亮
let g:mkdp_auto_start=1  "自动打开markdown预览
let g:vim_markdown_folding_disabled = 1  "关闭折叠
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0  "禁用代码栅栏隐藏


" 解决YCM和Ultisnips按键冲突问题
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction

if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif
if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"


" =============== 
" ===ultisnips===
" ===============
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>' 
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<tab-b>' 


" ============
" ===youdao===
" ============
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>


" ==============
" ===floaterm===
" ==============
noremap fl :FloatermNew --wintype=normal --position=right --width=0.5
noremap fn :FloatermNew<CR>
vnoremap <silent> <C-c><C-c> :FloatermSend<CR>


