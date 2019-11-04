" Encoding
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Sane defaults (most of these should be automatic in neovim)
filetype plugin indent on
syntax on
set nocompatible
set relativenumber
set background=dark 

" General keys remapping

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jk <ESC>

" set leader
let mapleader = ","

" Shortcut with leader
nnoremap <leader>w :w<cr>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P

" Quick edit this file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" Quick source this file
vmap <silent> <leader>rv :so $MYVIMRC<CR>

" Colours

if (has("termguicolors"))
    set termguicolors
endif

"
" General configuration
"

set textwidth=0 " Hard wrap at 80 characters 
set showmatch " Jumps to matching parentesis

set hlsearch " Highlight all search pattern matches
" Escape cancels a search
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR> 

set hidden " Allows unwritten invisible buffers
set history=100 " Set maximum number of entries accessible in the history
set updatetime=300 " Time between stop typing and calling plugins
set cmdheight=2 " Height of the messages area
set shortmess+=c " don't give ins-completion-menu messages.
set signcolumn=yes " always show signcolumns (needed to show +- in git)

" Indentation python style for everything

set wrap " Enable soft wrapping
set linebreak "break only at specific characters like space, etc 
set nolist " Hide tabs and <CR> 
set tabstop=4 " Tabs are 4 spaces
set shiftwidth=4 " number of spaces to use for autoindenting
set softtabstop=4 " when hitting <BS> pretend like a tab is removed
set expandtab " expand tabs to spaces
set autoindent " respect previous indent level
set smartindent " respect previous indet level that makes sense while programming
set breakindent " enable indentation for soft wrapped lines
set showbreak=>> " append '>>' to softwrapped indent
set laststatus=2 " Always show the status line in every window

"
" Plugins
" 

source ~/.vim/plugins.vim

" General plugins configuration
source ~/.vim/plugins_configuration.vim

" Lightline configuration
source ~/.vim/lightline.vim

" Coc configuration
source ~/.vim/coc.vim

colorscheme gruvbox
hi clear SpellBad
hi SpellBad cterm=underline
set spell spelllang=en_gb
autocmd FileType plaintex,tex,latex syntax spell toplevel

map <Leader>n :NERDTreeToggle<CR>
map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>
let g:slimux_python_ipython = 1 

