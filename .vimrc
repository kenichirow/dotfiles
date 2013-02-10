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
Bundle 'tpope/vim-rails'
Bundle 'Shougo/unite.vim'
Bundle 'neocomplcache'
Bundle 'hughbien/md-vim'
Bundle 'nvie/vim-flake8'
Bundle 'django.vim'
Bundle 'tpope/vim-haml'


let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3

if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif

let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete



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
