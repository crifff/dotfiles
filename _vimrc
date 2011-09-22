set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'ZenCoding.vim'
Bundle 'inkpot'
Bundle 'wombat256.vim'
Bundle 'Sass'
Bundle 'digitaltoad/vim-jade'
Bundle 'jslint.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-stylus'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on     " required!


set ignorecase
set incsearch
set hlsearch
set t_Co=256

set expandtab
set shiftwidth=2
set tabstop=2
colorscheme wombat256mod

set ruler
set title
set showmatch showmode showcmd
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 検索でマークアップが画面の中央にくる
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

"JSLint
let g:JSLintHighlightErrorLine = 0
