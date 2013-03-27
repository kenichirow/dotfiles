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
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
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
au BufRead,BufNewFile Vagrantfile set ft=ruby



noremap <silent>j gj
noremap <silent>k gk


"nerd tree
let NERDTreeShowBookmarks=1
nmap <silent>nt :NERDTreeToggle<CR>

"git gutter
let g:gitgutter_enabled = 0
nmap <silent>gt :GitGutterToggle<CR>
nmap <silent>ge :GitGutterEnable<CR>
nmap <silent>gd :GitGutterDisable<CR>
nmap <silent>nh :<C-U>execute v:count1 . "GitGutterNextHunk"<CR>
nmap <silent>ph :<C-U>execute v:count1 . "GitGutterPrevHunk"<CR>

"unite
let g:unite_enable_start_insert=0
noremap <silent><space>b :Unite buffer<CR>
noremap <silent><space>f :Unite -buffer-name=files file<CR>
noremap <silent><space>r :Unite -buffer-name=register register<CR>
noremap <silent><space>fm :Unite buffer file_mru<CR>
noremap <silent><space>dd :UniteWithBufferDir file<CR>
noremap <silent><space>cd :UniteWithBufferDir file -buffer-name=files<CR>
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


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

inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete



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

nnoremap cp :cprevious<CR>   
nnoremap cn :cnext<CR>       
