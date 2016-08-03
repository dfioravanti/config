
set encoding=utf8
scriptencoding utf-8

filetype on
syntax on
set colorcolumn=90
set relativenumber
set background=dark 

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jk <ESC>

set showmatch
set hlsearch

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set laststatus=2

let mapleader = " "

map <leader>s :source ~/.vim/vimrc<CR>

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

call plug#begin('~/.vim/plugged')

	Plug 'https://github.com/morhetz/gruvbox'

  Plug 'https://github.com/wincent/command-t/'

  Plug 'itchyny/lightline.vim'
  
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

  Plug 'https://github.com/jiangmiao/auto-pairs'

  Plug 'https://github.com/rhysd/vim-clang-format'

  Plug 'octol/vim-cpp-enhanced-highlight'

  Plug 'https://github.com/tpope/vim-fugitive'
    
call plug#end()
colorscheme gruvbox


set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

