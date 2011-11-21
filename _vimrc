set nocompatible
filetype off

if has('vim_starting')
  set rtp+=~/.vim/neobundle.git/
  call neobundle#rc(expand('~/.vim/'))
endif

NeoBundle 'sudo.vim'
"NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'ZenCoding.vim'
NeoBundle 'inkpot'
NeoBundle 'wombat256.vim'
NeoBundle 'Sass'
NeoBundle 'digitaltoad/vim-jade'
"NeoBundle 'jslint.vim'
NeoBundle 'javascript.vim'
""NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-stylus'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nginx.vim'
"NeoBundle 'briancollins/vim-jst'
NeoBundle 'html5.vim'
NeoBundle 'tpope/vim-git'
"NeoBundle 'vim-scripts/taglist.vim'
"NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/tagexplorer.vim'

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
"let g:JSLintHighlightErrorLine = 0

let g:vimfiler_as_default_explorer = 1

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
    

set tags=tags

"let g:SrcExpl_UpdateTags = 1
"自動でプレビューを表示する。TODO:うざくなってきたら手動にする。またはソースを追う時だけ自動に変更する。
"let g:SrcExpl_RefreshTime   = 1
""プレビューウインドウの高さ
"let g:SrcExpl_WinHeight     = 9
"tagsは自動で作成する
"let g:SrcExpl_UpdateTags    = 1
""マッピング
"let g:SrcExpl_RefreshMapKey = "<Space>"
"let g:SrcExpl_GoBackMapKey  = "<C-b>"
"nmap <F8> :SrcExplToggle<CR>
