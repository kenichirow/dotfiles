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
set hlsearch
set wrap
set shortmess+=I
set visualbell
set t_Co=256
set ts=2 sw=2 expandtab
set cursorline
set noerrorbells
set noswapfile

filetype on
filetype plugin on
filetype indent on
syntax on

Bundle 'altercation/vim-colors-solarized'
Bundle 'AutoComplPop'
Bundle 'surround.vim'
Bundle 'vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'
Bundle 'neocomplcache'
Bundle 'hughbien/md-vim'
Bundle 'nvie/vim-flake8'
Bundle 'django.vim'
Bundle 'tpope/vim-haml'










" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
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

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
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
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
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

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'











" solarized options 
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark
colorscheme solarized

au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,README.md set filetype=markdown
au BufRead,BufNewFile *.coffee set ft=coffee
au BufRead,BufNewFile *.js,*.json set ft=javascript

"for nerd tree
let NERDTreeShowBookmarks=1
nmap <silent><Space>nt :NERDTreeToggle<CR>

"for unite.vim
let g:unite_enable_start_insert=0
noremap <silent><Space>ub :Unite buffer<CR>
noremap <silent><Space>ud -buffer-name=files file<CR>
noremap <silent><Space>um :Unite file_mru<CR>
noremap <silent><Space>ur :Unite -buffer-name=register register<CR>
noremap <silent><Space>uf :Unite buffer file_mru<CR>
noremap <silent><Space>ua :Unite UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
noremap <silent><Space>cd :UniteWithBufferDir file -buffer-name=files
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

noremap <silent>j gj
noremap <silent>k gk


" for flake8
autocmd BufWritePost *.py call Flake8()
