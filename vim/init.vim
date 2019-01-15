
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
filetype plugin indent on
set nocompatible
set number
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
set wrap linebreak nolist
set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab
set smartindent
set autoindent

set laststatus=2

let mapleader = ","

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

call plug#begin('~/.vim/plugged')

    " Aesthetic
    Plug 'morhetz/gruvbox'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'itchyny/lightline.vim'

    " Interface
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " General syntax
    Plug 'neomake/neomake'

    " Autocomplete/snippet
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/context_filetype.vim'
    Plug 'Shougo/neopairs.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    " C/C++
    Plug 'rhysd/vim-clang-format'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'zchee/deoplete-clang'

    " Python
    Plug 'nvie/vim-flake8'
    Plug 'zchee/deoplete-jedi'

    " LaTeX
    Plug 'lervag/vimtex'

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    "Misc
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'godlygeek/tabular'
    Plug 'scrooloose/nerdcommenter'
    Plug 'karadaharu/slimux'
"    Plug 'epeli/slimux'

call plug#end()

let g:indentLine_char='│'

colorscheme gruvbox

"lightline configuration
source ~/.vim/lightline.vim

"Shortcut with leader"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :CtrlP<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
map <Leader>n :NERDTreeToggle<CR>
map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>
let g:slimux_python_ipython = 1 

map <C-f> :Files<CR>
map <C-b> :Buffers<CR>
map <C-s> :Snippets<CR>
map <C-l> :Locate 

set spell spelllang=en_gb
autocmd FileType plaintex,tex,latex syntax spell toplevel

" Let <Tab> also do completion
inoremap <silent><expr> <C-Space>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'

" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
autocmd! BufWritePost * Neomake

"Plugin configuration
source ~/.vim/plugin.vim
