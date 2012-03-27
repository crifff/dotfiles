set nocompatible
filetype off

if has('vim_starting')
  set rtp+=~/.vim/neobundle.git/
  call neobundle#rc(expand('~/.vim/'))
endif

NeoBundle 'sudo.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplcache-snippets-complete'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Sixeight/unite-grep'
"NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'ZenCoding.vim'
NeoBundle 'inkpot'
NeoBundle 'wombat256.vim'
NeoBundle 'Sass'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'spencertipping/js-vim-highlighter'
NeoBundle 'pangloss/vim-javascript' 
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'vim-stylus'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nginx.vim'
NeoBundle 'tpope/vim-git'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/php.vim-html-enhanced'
NeoBundle 'xenoterracide/html.vim'
NeoBundle 'surround.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'toritori0318/vim-redmine'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'h1mesuke/vim-alignta'
NeoBundle 'othree/eregex.vim'

filetype plugin indent on     " required!
syntax on

set ignorecase
set incsearch
set hlsearch
set number
set t_Co=256
set backspace=2

set expandtab
set shiftwidth=2
set tabstop=2
colorscheme wombat256mod

set ruler
set title
set showmatch showmode showcmd
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set modeline
set modifiable

set formatoptions+=mM
set ambiwidth=double
set display+=lastline

" 検索でマークアップが画面の中央にくる
"nnoremap n nzz
"nnoremap N Nzz

"phplint
nnoremap ,l :execute '!php -l %'<CR>

"JSLint
"let g:JSLintHighlightErrorLine = 0

"vimfilerをデフォにする
let g:vimfiler_as_default_explorer = 1

"set tags=tags

"unite.vim settings
"===================
"  let g:unite_enable_start_insert = 1
"" The prefix key.
"  nnoremap    [unite]   <Nop>
"  nmap    f [unite]
"
"  nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
"  nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
"  nnoremap <silent> [unite]r  :<C-u>Unite -buffer-name=register register<CR>
"  nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
"  nnoremap  [unite]f  :<C-u>Unite source<CR>
"
"  autocmd FileType unite call s:unite_my_settings()
"  function! s:unite_my_settings()"{{{
"    " Overwrite settings.
"
"    nmap <buffer> <ESC>      <Plug>(unite_exit)
"    imap <buffer> jj      <Plug>(unite_insert_leave)
"    "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
"
"    " <C-l>: manual neocomplcache completion.
"    inoremap <buffer> <C-l>  <C-x><C-u><C-p><Down>
"
"    " Start insert.
"    "let g:unite_enable_start_insert = 1
"  endfunction"}}}
"
"  let g:unite_source_file_mru_limit = 200
"  "let g:unite_cursor_line_highlight = 'TabLineSel'
"  "let g:unite_abbr_highlight = 'TabLine'
"
"  " For optimize.
"  let g:unite_source_file_mru_filename_format = ''
"
"  " For unite-session.
"  " Save session automatically.
"  "let g:unite_source_session_enable_auto_save = 1
"  " Load session automatically.
"  "autocmd VimEnter * UniteSessionLoad
"
"  " For ack.
"  if executable('ack-grep')
"    let g:unite_source_grep_command = 'ack-grep'
"    let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
"    let g:unite_source_grep_recursive_opt = ''
"  endif
"起動時にインサートモード
let g:unite_enable_start_insert = 1
nnoremap <silent> ,ub :Unite buffer<CR>
nnoremap <silent> ,uf :UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,uc :Unite bookmark<CR>
nnoremap <silent> ,u. :Unite file_mru<CR>
nnoremap <silent> ,uy :Unite -buffer-name=register register<CR>
nnoremap <silent> ,ug :Unite grep%:-iHRn<CR>
""ESC二回で閉じる
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  "ESCでuniteを終了
  nmap <buffer> <ESC> <Plug>(unite_exit)
  "入力モードのときjjでノーマルモードに移動
  imap <buffer> jj <Plug>(unite_insert_leave)
  "入力モードのときctrl+wでバックスラッシュも削除
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  "ctrl+jで縦に分割して開く
  nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
  inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
  "ctrl+jで横に分割して開く
  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
  "ctrl+oでその場所に開く
  nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
  inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
  "vimfilerでその場所に開く
  nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vimfiler')
  inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vimfiler')
endfunction"}}}

"neocomplcache settings
"=======================
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

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap pumvisible() ? neocomplcache#close_popup() : "¥"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
set completeopt=menuone

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'



"redmine.vim settings
"=====================
let g:redmine_auth_site = 'http://redmine.authense.co.jp'
let g:redmine_auth_key  = '8f4e91c28a7cbbc1b8d8c022271a1d65e5b05d69'
let g:redmine_author_id = '3'
let g:redmine_project_id = '1'

autocmd BufReadCmd file://*,?:/*/ :setlocal bufhidden=wipe

"eregex
nnoremap / :M/
nnoremap ? :M?
nnoremap ,/ /
nnoremap ,? ?

"" vim-quickrun
" init
let g:quickrun_config = {}

" set for phpunit
augroup QuickRunPHPUnit
  autocmd!
  autocmd BufWinEnter,BufNewFile *Test.php set filetype=php.unit
augroup END

" make outputter for coloring output message.
let phpunit_outputter = quickrun#outputter#buffer#new()
function! phpunit_outputter.init(session)
  " call original process
  call call(quickrun#outputter#buffer#new().init, [a:session], self)
endfunction

function! phpunit_outputter.finish(session)
  " set color 
  highlight default PhpUnitOK         ctermbg=Green ctermfg=White
  highlight default PhpUnitFail       ctermbg=Red   ctermfg=White
  highlight default PhpUnitAssertFail ctermfg=Red
  call matchadd("PhpUnitFail","^FAILURES.*$")
  call matchadd("PhpUnitOK","^OK.*$")
  call matchadd("PhpUnitAssertFail","^Failed.*$")
  call call(quickrun#outputter#buffer#new().finish, [a:session], self)
endfunction

" regist outputter to quickrun
call quickrun#register_outputter("phpunit_outputter", phpunit_outputter)

" PHPUNIT
let g:quickrun_config['php.unit'] = {
      \ 'command': 'phpunit',
      \ 'outputter': 'phpunit_outputter',
      \ }

