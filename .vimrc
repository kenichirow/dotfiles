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
set shortmess+=I
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
Bundle 'altercation/vim-colors-solarized'
Bundle 'AutoComplPop'
Bundle 'surround.vim'
Bundle 'vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'
Bundle 'hughbien/md-vim'
Bundle 'nvie/vim-flake8'
Bundle 'django.vim'
Bundle 'tpope/vim-haml'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'airblade/vim-gitgutter'


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

au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,README.md set filetype=markdown
au BufRead,BufNewFile *.coffee set ft=coffee
au BufRead,BufNewFile *.js,*.json set ft=javascript

"nerd tree
let NERDTreeShowBookmarks=1
nmap <silent>nt :NERDTreeToggle<CR>

"git gutter
nmap <silent>gt :GitGutterToggle<CR>
nmap <silent>ge :GitGutterEnable<CR>
nmap <silent>gd :GitGutterDisable<CR>
nmap <silent>nh :<C-U>execute v:count1 . "GitGutterNextHunk"<CR>
nmap <silent>ph :<C-U>execute v:count1 . "GitGutterPrevHunk"<CR>

"unite
let g:unite_enable_start_insert=0
noremap <silent><space>ub :Unite buffer<CR>
noremap <silent><space>ud -buffer-name=files file<CR>
noremap <silent><space>um :Unite file_mru<CR>
noremap <silent><space>ur :Unite -buffer-name=register register<CR>
noremap <silent><space>uf :Unite buffer file_mru<CR>
noremap <silent><space>ua :UniteWithBufferDir file<CR>
noremap <silent><space>cd :UniteWithBufferDir file -buffer-name=files<CR>
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

noremap <silent>j gj
noremap <silent>k gk
