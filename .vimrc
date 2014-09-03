source ~/.simplenoterc
" vundle 
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set nocompatible
set showmatch showmode showcmd
set title
set number
set ruler
set wrap
set visualbell
set t_Co=256
set ts=2 sw=2 expandtab
set cursorline
set noerrorbells
set noswapfile
set autoindent

filetype on
filetype plugin on
filetype indent on
syntax on

Bundle 'gmarik/vundle'

"behavior
Bundle 'surround.vim'
"Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/zencoding-vim'
Bundle 'wikitopian/hardmode'
Bundle 'ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-startify'

" lang
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-haml'
Bundle 'hughbien/md-vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'vim-scripts/VimClojure'
Bundle 'django.vim'
Bundle 'nvie/vim-flake8'
Bundle 'vim-coffee-script'
Bundle 'othree/html5.vim'

"clojure
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'

" colorscheme
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/rainbow_parentheses.vim'

autocmd FileType python map <buffer> f8 :call Flake8()<CR>

Bundle 'jnwhiteh/vim-golang'

inoremap <ESC> <ESC>:set iminsert=0<CR>

" Default Indentation
 set autoindent
 set smartindent     " indent when
 set tabstop=2       " tab width
 set softtabstop=2  " backspace
 set shiftwidth=2    " indent width
 set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


" solarized options 
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

set background=dark
colorscheme solarized
"colorscheme molokai



au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,README.md set filetype=markdown
au BufRead,BufNewFile *.coffee set ft=coffee
au BufRead,BufNewFile *.js,*.json set ft=javascript
au BufRead,BufNewFile Vagrantfile set ft=ruby
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.clj,*.cljs set filetype=clojure
au BufNewFile,BufRead *.go set filetype=go



noremap <silent>j gj
noremap <silent>k gk
noremap <silent>vs :vnew<CR>
noremap <silent>hs :new<CR>
"nerd tree
"let NERDTreeShowBookmarks=1
"nmap <silent>nt :NERDTreeToggle<CR>

"git gutter
let g:gitgutter_enabled = 0
nmap <silent>gt :GitGutterToggle<CR>
nmap <silent>ge :GitGutterEnable<CR>
nmap <silent>gd :GitGutterDisable<CR>
nmap <silent>nh :<C-U>execute v:count1 . "GitGutterNextHunk"<CR>
nmap <silent>ph :<C-U>execute v:count1 . "GitGutterPrevHunk"<CR>

" unite
let g:unite_enable_start_insert=1
noremap <silent>,b :Unite buffer<CR>
noremap <silent>,f :Unite -buffer-name=files file<CR>
noremap <silent>,rg :Unite -buffer-name=register register<CR>
noremap <silent>,m :Unite file_mru<CR>
noremap <silent>,d :UniteWithBufferDir file<CR>
noremap <silent>cd :UniteWithBufferDir file -buffer-name=files<CR>
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" autocomplete
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

set completeopt-=preview

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" quickfix
nnoremap cp :cprevious<CR>   
nnoremap cn :cnext<CR>       

" buffer
nnoremap bp :bp<CR>   
nnoremap bn :bn<CR>       

" tab
nnoremap tp :tabp<CR>   
nnoremap tn :tabn<CR>
nnoremap tc :tabnew<CR>
nnoremap tx :tab<CR>

" split window
nnoremap sv :vsplit<CR>
nnoremap sh :split<CR>

" REPL
nnoremap ,ae :%Eval <CR>
nnoremap ,e :Eval <CR>

" hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

>>>>>>> go
nnoremap ch :call HardMode()<CR>   
nnoremap ce :call EasyMode()<CR>   

let g:ctrlp_working_path_mode = 'ra'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


let g:syntastic_python_flake8_args = "--max-line-length=100"
autocmd BufWritePost *.py call Flake8()

nnoremap ,d :<C-u>CtrlPDir<CR>

let g:startify_session_dir = '~/.vim/session'
let g:startify_custom_header = [
      \ '  __     ___            ',
      \ '  \ \   / (_)_ __ ___   ',
      \ '   \ \ / /| | ''_ ` _ \  ',
      \ '    \ V / | | | | | | | ',
      \ '     \_/  |_|_| |_| |_| ',
      \ '',
      \ '',
      \ ]

let g:startify_bookmarks = [ '~/.vimrc' , '~/repos']
let g:startify_files_number = 20                                                                  
let g:ctrlp_reuse_window = 'startify'
let g:startify_list_order = ['files', 'bookmarks', 'sessions']
set sessionoptions=blank,curdir,folds,help,tabpages,winpos

:set tags=~/.tags,/home/user/commontags
