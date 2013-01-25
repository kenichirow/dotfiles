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

filetype on
filetype plugin on
filetype indent on

syntax on

Bundle 'altercation/vim-colors-solarized'
Bundle 'AutoComplPop'
Bundle 'surround.vim'
Bundle 'vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'Shougo/unite.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'hughbien/md-vim'

" solarized options 
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark
colorscheme solarized

au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,README.md set filetype=markdown
au BufRead,BufNewFile *.coffee set ft=coffee
"for nerd tree
let NERDTreeShowBookmarks=1
nmap <silent><Space>nt :NERDTreeToggle<CR>

"------------------------------------
"" unite.vim
"------------------------------------
"" 入力モードで開始する
let g:unite_enable_start_insert=0
"バッファ一覧
noremap <silent><Space>ub :Unite buffer<CR>
" ファイル一覧
noremap <silent><Space>ud -buffer-name=files file<CR>
" 最近使ったファイルの一覧
noremap <silent><Space>um :Unite file_mru<CR>
" レジスタ一覧
noremap <silent><Space>ur :Unite -buffer-name=register register<CR>
" ファイルとバッファ
noremap <silent><Space>uf :Unite buffer file_mru<CR>
" 全部
noremap <silent><Space>ua :Unite UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


noremap <silent>j gj
noremap <silent>k gk
