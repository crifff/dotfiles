set nocompatible
filetype off

if has('vim_starting')
  set rtp+=~/.vim/neobundle.git/
  call neobundle#rc(expand('~/.vim/'))
endif

NeoBundle 'sudo.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'ZenCoding.vim'
NeoBundle 'inkpot'
NeoBundle 'wombat256.vim'
NeoBundle 'Sass'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'jslint.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-stylus'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nginx.vim'
NeoBundle 'briancollins/vim-jst'
NeoBundle 'html5.vim'

filetype plugin indent on     " required!
syntax on

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
