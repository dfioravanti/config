set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

filetype plugin on
filetype plugin indent on
syntax on
set nocompatible
set relativenumber
set background=dark 

set textwidth=79

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jk <ESC>

set showmatch
set hlsearch
set hidden
set history=100

" Time between stop typing and calling plugins
set updatetime=300

" Better display for messages
set cmdheight=2

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Python style indenting 
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
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'

" Interface
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" General syntax
Plug 'sbdchd/neoformat'

" Autocomplete/snippet
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'honza/vim-snippets'

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

call plug#end()

let g:indentLine_char='│'

colorscheme gruvbox

"Shortcut with leader"
nnoremap <Leader>w :w<cr>
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

" fzf

nnoremap <C-f> :Files<CR>
nnoremap <C-b> :Buffers<CR>
" nnoremap <C-s> :Snippets<CR>
nnoremap <C-l> :Lines<CR>

set spell spelllang=en_gb
autocmd FileType plaintex,tex,latex syntax spell toplevel


set wildignore+=*.log,*.sql,*.cache

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

"lightline configuration
source ~/.vim/lightline.vim

"Coc configuration
source ~/.vim/coc.vim

"Other plugins configuration
source ~/.vim/plugin.vim
