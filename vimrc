set nocompatible
set runtimepath+=~/.dotfiles/vim

" Initialize Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Colorscheme
let g:rehash256 = 1
colorscheme molokai

" Visual autocomplete for command menu
set wildmenu

" Add line numbers
set number
set ruler

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Show trailing spaces and highlight hard tabs
set list listchars=tab:»·,trail:·

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Home/End Keys
map <ESC>[H ^
map <ESC>[F $

" Chromebook: Shift + Left/Right as Home/End
map <ESC>[1;2D ^
map <ESC>[1;2C $

" Search related settings
set incsearch
set hlsearch

" Map Ctrl+l to clear highlighted searches
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set pastetoggle=<F10>
nnoremap <ESC>[1;3A :wincmd k<CR>
nnoremap <ESC>[1;3B :wincmd j<CR>
nnoremap <ESC>[1;3D :wincmd h<CR>
nnoremap <ESC>[1;3C :wincmd l<CR>

nnoremap <ESC>q :qa<CR>
nnoremap <ESC>w :wa<CR>
nnoremap <ESC>1 :b1<CR>
nnoremap <ESC>2 :b2<CR>
nnoremap <ESC>3 :b3<CR>
nnoremap <ESC>4 :b4<CR>
nnoremap <ESC>5 :b5<CR>
nnoremap <ESC>6 :b6<CR>
nnoremap <ESC>7 :b7<CR>
nnoremap <ESC>8 :b8<CR>
nnoremap <ESC>9 :b9<CR>
nnoremap <ESC>0 :b10<CR>


nnoremap <ESC>q :qa<CR>
nnoremap <ESC>w :wa<CR>

" Disable code folding
set nofoldenable

" Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
function s:setupMarkup()
  map <buffer> <Leader>p :Mm <CR>
endfunction
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" ctrp custom ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.eunit$',
  \ 'file': '\.exe$\|\.so$\|\.dll\|\.beam$\|\.DS_Store$'
  \ }

" disable welcome-message
set shortmess+=I

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }
