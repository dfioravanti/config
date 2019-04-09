
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
filetype plugin indent off
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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/echodoc.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-match-highlight'

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
Plug 'ervandew/supertab'

call plug#end()

let g:indentLine_char='│'

colorscheme gruvbox

"lightline configuration
source ~/.vim/lightline.vim

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
nnoremap <C-s> :Snippets<CR>
nnoremap <C-l> :Lines<CR>

set spell spelllang=en_gb
autocmd FileType plaintex,tex,latex syntax spell toplevel

" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set wildignore+=*.log,*.sql,*.cache

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

" Required for operations modifying multiple buffers like rename.
"set hidden

"let g:LanguageClient_serverCommands.python = ['pyls']

" Map renaming in python
"autocmd FileType python nnoremap <buffer>
" \ <leader>lr :call LanguageClient_textDocument_rename()<cr>

" Automatically start language servers.
"let g:LanguageClient_autoStart = 1

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

"Plugin configuration
source ~/.vim/plugin.vim

au BufEnter * call ncm2#enable_for_buffer()
au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'vimtex',
            \ 'priority': 1,
            \ 'subscope_enable': 1,
            \ 'complete_length': 1,
            \ 'scope': ['tex'],
            \ 'matcher': {'name': 'combine',
            \           'matchers': [
            \               {'name': 'abbrfuzzy', 'key': 'menu'},
            \               {'name': 'prefix', 'key': 'word'},
            \           ]},
            \ 'mark': 'tex',
            \ 'word_pattern': '\w+',
            \ 'complete_pattern': g:vimtex#re#ncm,
            \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
            \ })
set completeopt=noinsert,menuone,noselect

set noshowmode
