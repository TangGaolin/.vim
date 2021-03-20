"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/

" Todos
" - vimwiki
" - pylint reports error when doing `vim ~/Github/vim-calc/build-up/calc.py`
"   instead of doing `cd ~/Github/vim-calc/build-up` and then do `vim calc.py`
" - hotkey to switch between light theme and dark theme (in progress, still
"   some bugs

" ====================
" === Editor Setup ===
" ====================

syntax on
set number
set norelativenumber
set cursorline 
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set clipboard+=unnamed
set autowrite

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

noremap K 5k
noremap J 5j



map S :w<CR>
map s <nop>
map Q :q<CR> 


map ; :

map sl :set sp<CR>:vsp<CR>
map sh :set nosplitright<CR>:vsp<CR>
map sk :set nosplitbelow<CR>:sp<CR>
map sj :set splitbelow<CR>:sp<CR>

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


map <C-l> <C-w>l 
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h

map = :resize +5<CR>
map - :resize -5<CR>
map 1 :vertical resize -5<CR>
map 2 : vertical resize +5<CR>

" Create a new tab with tu
map tu :tabe<CR>
" Move around tabs 
map th :-tabnext<CR>
map tl :+tabnext<CR>
" Move the tabs 
map tmh :-tabmove<CR>
map tml :+tabmove<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'zivyangll/git-blame.vim'
Plug 'Yggdroot/indentLine'

" Tag list
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'


" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" Home page show file list
Plug 'mhinz/vim-startify'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 

call plug#end()


color snazzy
let g:SnazzyTransparent = 1


map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

let g:indentLine_color_term = 243 " 对齐线的颜色
let g:indentLine_char = '┊' " 用字符串代替默认的标示线

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support

map <Space><Space> <Esc>/<++><CR>:nohlsearch<CR>c4l
nmap <C-P> :Files<CR>
nmap <Leader>f :FloatermToggle<CR>

map H :UndotreeToggle<CR>
set rtp+=/usr/local/opt/fzf

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
nmap <Leader>rn <Plug>(coc-rename)
" ctrl + b 跳转到函数，并在新的tab页面中打开
nmap <silent> <C-b> :call CocAction('jumpDefinition', 'tab drop')<CR>

" 设置按下tab时，是选择补全，而不是输入tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction




