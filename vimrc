set t_Co=256

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set nocompatible              
"" be iMproved
filetype on             
"" required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
"" let Vundle manage Vundle
"" required!
	Plugin 'gmarik/vundle'
	Plugin 'vim-scripts/fcitx.vim'
 
"" my plugin 06'21 2016
Plugin 'HTML5-Syntax-File'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'

"" colorscheme all in one 
Plugin 'flazz/vim-colorschemes'		
"" CSS syntax support
Plugin 'hail2u/vim-css3-syntax'		
"" autocomplete quotes
Plugin 'Raimondi/delimitMate'		
"" javascript syntax
Plugin 'pangloss/vim-javascript'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'marijnh/tern_for_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdcommenter'  
Plugin 'scrooloose/nerdtree'


filetype plugin indent on     " required!

colorscheme Tomorrow-Night
let javascript_enable_domhtmlcss = 1


"" split windows hotkey
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

set foldmethod=indent
au BufWinLeave * silent mkview  " 保存文件的折叠状态
au BufRead * silent loadview    " 恢复文件的折叠状态
nnoremap <space> za             " 用空格来切换折叠状态"

"" powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8


""  Ctrl+N 打开/关闭
map <C-n> :NERDTreeToggle<CR>
"" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"" 当所有文件关闭时关闭项目树窗格
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" " 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] 
"" ignore files in NERDTree

""  不显示项目树上额外的信息，例如帮助、提示什么的
"let NERDTreeMinimalUI=1
