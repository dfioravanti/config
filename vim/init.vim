
set encoding=utf8
scriptencoding utf-8

set t_Co=256

syntax on
filetype plugin indent on
set nocompatible
set colorcolumn=80
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
set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab
set smartindent
set autoindent

set laststatus=2

let mapleader = " "

map <leader>s :source ~/.vim/vimrc<CR>

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

call plug#begin('~/.vim/plugged')

    " Aesthetic
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'

    " Interface
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'

    " General syntax
    Plug 'scrooloose/syntastic'

    " Autocomplete/snippet
"    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
"    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/context_filetype.vim'
    Plug 'Shougo/neopairs.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    " C/C++
    Plug 'rhysd/vim-clang-format'
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Python
    Plug 'nvie/vim-flake8'
    Plug 'zchee/deoplete-jedi'

    " Haskell
	Plug 'neovimhaskell/haskell-vim'
	Plug 'eagletmt/ghcmod-vim'
    Plug 'eagletmt/neco-ghc'

    " Misc
    Plug 'tpope/vim-fugitive'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'godlygeek/tabular'
    Plug 'scrooloose/nerdcommenter'

call plug#end()
colorscheme gruvbox

map <Leader>n :NERDTreeToggle<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Let <Tab> also do completion
inoremap <silent><expr> <Leader>c
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()

" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

"let g:ycm_confirm_extra_conf = 0
"let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'  


" syntastic
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Ctrl - p
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

let g:haskell_classic_highlighting = 1
"let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Tabularize
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" ghc-mod

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" supertab

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'

" ghcmod-vim
autocmd BufWritePost *.hs GhcModCheckAndLintAsync
